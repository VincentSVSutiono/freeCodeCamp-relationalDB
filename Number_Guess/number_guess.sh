#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

echo Enter your username:
read USERNAME

USER_ID=$($PSQL "SELECT user_id from users where username = '$USERNAME';")

if [[ -z $USER_ID ]]
then
  echo -e "\nWelcome, $USERNAME! It looks like this is your first time here.\n"
  GAMES_PLAYED=0
  BEST_GAME=0
  INSERT_USER_RESULT=$($PSQL "INSERT INTO users (username, games_played, best_game) VALUES ('$USERNAME', 0, 0);")
else
  GAMES_PLAYED=$($PSQL "SELECT games_played from users where user_id = $USER_ID;")
  BEST_GAME=$($PSQL "SELECT best_game from users where user_id = $USER_ID;")

  echo -e "\nWelcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses.\n"
fi

SECRET_NUMBER=$(( RANDOM % 1000 + 1 ))

echo "Guess the secret number between 1 and 1000:"
read INPUT
GUESS=1

CHECK_INPUT() {
  if [[ ! $1 =~ ^[0-9]+$ ]]; then
    echo -e "\nThat is not an integer, guess again:"
  elif [[ $1 -lt $SECRET_NUMBER ]]; then
    echo -e "\nIt's higher than that, guess again:"
  elif [[ $1 -gt $SECRET_NUMBER ]]; then
    echo -e "\nIt's lower than that, guess again:"
  fi
  read INPUT
}

while [[ $INPUT -ne $SECRET_NUMBER ]]; do
  CHECK_INPUT "$INPUT"
  GUESS=$(($GUESS + 1))
done

echo -e "\nYou guessed it in $GUESS tries. The secret number was $SECRET_NUMBER. Nice job!"

if [[ -z $USER_ID ]]; then
  UPDATE_RESULT=$($PSQL "UPDATE users SET games_played = 1, best_game = $GUESS WHERE username = '$USERNAME';")
else
  GAMES_PLAYED=$((GAMES_PLAYED + 1))
  if [[ $BEST_GAME -eq 0 || $GUESS -lt $BEST_GAME ]]; then
    BEST_GAME=$GUESS
  fi
  UPDATE_RESULT=$($PSQL "UPDATE users SET games_played = $GAMES_PLAYED, best_game = $BEST_GAME WHERE user_id = $USER_ID;")
fi