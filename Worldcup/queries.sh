#! /bin/bash

PSQL="psql --username=freecodecamp --dbname=worldcup --no-align --tuples-only -c"

# Do not change code above this line. Use the PSQL variable above to query your database.

echo -e "\nTotal number of goals in all games from winning teams:"
echo "$($PSQL "SELECT SUM(winner_goals) FROM games")"

echo -e "\nTotal number of goals in all games from both teams combined:"
echo "$($PSQL "select sum(winner_goals + opponent_goals) from games;")"

echo -e "\nAverage number of goals in all games from the winning teams:"
echo "$($PSQL "select avg(winner_goals) from games;")"

echo -e "\nAverage number of goals in all games from the winning teams rounded to two decimal places:"
echo "$($PSQL "select round(avg(winner_goals),2) from games;")"

echo -e "\nAverage number of goals in all games from both teams:"
echo "$($PSQL "select avg(winner_goals + opponent_goals) from games;")"

echo -e "\nMost goals scored in a single game by one team:"
echo "$($PSQL "select max(greatest(winner_goals, opponent_goals)) from games;")"

echo -e "\nNumber of games where the winning team scored more than two goals:"
echo "$($PSQL "select count(*) from games where winner_goals > 2;")"

echo -e "\nWinner of the 2018 tournament team name:"
echo "$($PSQL "select name from teams t join games g on t.team_id = g.winner_id where g.year = 2018 and g.round = 'Final';")"

echo -e "\nList of teams who played in the 2014 'Eighth-Final' round:"
echo "$($PSQL "SELECT DISTINCT t.name FROM games g JOIN teams t ON t.team_id = g.winner_id OR t.team_id = g.opponent_id WHERE g.year = 2014 AND g.round = 'Eighth-Final';")"

echo -e "\nList of unique winning team names in the whole data set:"
echo "$($PSQL "SELECT DISTINCT t.name FROM games g JOIN teams t ON t.team_id = g.winner_id order by t.name;")"

echo -e "\nYear and team name of all the champions:"
echo "$($PSQL "select g.year, t.name from games g join teams t on t.team_id = g.winner_id where g.round = 'Final' order by g.year;")"

echo -e "\nList of teams that start with 'Co':"
echo "$($PSQL "select name from teams where name like 'Co%';")"
