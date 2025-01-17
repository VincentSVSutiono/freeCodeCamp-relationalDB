--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    year integer NOT NULL,
    round character varying(255) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(255) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (21, 2018, 'Final', 329, 330, 4, 2);
INSERT INTO public.games VALUES (22, 2018, 'Third Place', 331, 332, 2, 0);
INSERT INTO public.games VALUES (23, 2018, 'Semi-Final', 330, 332, 2, 1);
INSERT INTO public.games VALUES (24, 2018, 'Semi-Final', 329, 331, 1, 0);
INSERT INTO public.games VALUES (25, 2018, 'Quarter-Final', 330, 333, 3, 2);
INSERT INTO public.games VALUES (26, 2018, 'Quarter-Final', 332, 334, 2, 0);
INSERT INTO public.games VALUES (27, 2018, 'Quarter-Final', 331, 335, 2, 1);
INSERT INTO public.games VALUES (28, 2018, 'Quarter-Final', 329, 336, 2, 0);
INSERT INTO public.games VALUES (29, 2018, 'Eighth-Final', 332, 337, 2, 1);
INSERT INTO public.games VALUES (30, 2018, 'Eighth-Final', 334, 338, 1, 0);
INSERT INTO public.games VALUES (31, 2018, 'Eighth-Final', 331, 339, 3, 2);
INSERT INTO public.games VALUES (32, 2018, 'Eighth-Final', 335, 340, 2, 0);
INSERT INTO public.games VALUES (33, 2018, 'Eighth-Final', 330, 341, 2, 1);
INSERT INTO public.games VALUES (34, 2018, 'Eighth-Final', 333, 342, 2, 1);
INSERT INTO public.games VALUES (35, 2018, 'Eighth-Final', 336, 343, 2, 1);
INSERT INTO public.games VALUES (36, 2018, 'Eighth-Final', 329, 344, 4, 3);
INSERT INTO public.games VALUES (37, 2014, 'Final', 345, 344, 1, 0);
INSERT INTO public.games VALUES (38, 2014, 'Third Place', 346, 335, 3, 0);
INSERT INTO public.games VALUES (39, 2014, 'Semi-Final', 344, 346, 1, 0);
INSERT INTO public.games VALUES (40, 2014, 'Semi-Final', 345, 335, 7, 1);
INSERT INTO public.games VALUES (41, 2014, 'Quarter-Final', 346, 347, 1, 0);
INSERT INTO public.games VALUES (42, 2014, 'Quarter-Final', 344, 331, 1, 0);
INSERT INTO public.games VALUES (43, 2014, 'Quarter-Final', 335, 337, 2, 1);
INSERT INTO public.games VALUES (44, 2014, 'Quarter-Final', 345, 329, 1, 0);
INSERT INTO public.games VALUES (45, 2014, 'Eighth-Final', 335, 348, 2, 1);
INSERT INTO public.games VALUES (46, 2014, 'Eighth-Final', 337, 336, 2, 0);
INSERT INTO public.games VALUES (47, 2014, 'Eighth-Final', 329, 349, 2, 0);
INSERT INTO public.games VALUES (48, 2014, 'Eighth-Final', 345, 350, 2, 1);
INSERT INTO public.games VALUES (49, 2014, 'Eighth-Final', 346, 340, 2, 1);
INSERT INTO public.games VALUES (50, 2014, 'Eighth-Final', 347, 351, 2, 1);
INSERT INTO public.games VALUES (51, 2014, 'Eighth-Final', 344, 338, 1, 0);
INSERT INTO public.games VALUES (52, 2014, 'Eighth-Final', 331, 352, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (329, 'France');
INSERT INTO public.teams VALUES (330, 'Croatia');
INSERT INTO public.teams VALUES (331, 'Belgium');
INSERT INTO public.teams VALUES (332, 'England');
INSERT INTO public.teams VALUES (333, 'Russia');
INSERT INTO public.teams VALUES (334, 'Sweden');
INSERT INTO public.teams VALUES (335, 'Brazil');
INSERT INTO public.teams VALUES (336, 'Uruguay');
INSERT INTO public.teams VALUES (337, 'Colombia');
INSERT INTO public.teams VALUES (338, 'Switzerland');
INSERT INTO public.teams VALUES (339, 'Japan');
INSERT INTO public.teams VALUES (340, 'Mexico');
INSERT INTO public.teams VALUES (341, 'Denmark');
INSERT INTO public.teams VALUES (342, 'Spain');
INSERT INTO public.teams VALUES (343, 'Portugal');
INSERT INTO public.teams VALUES (344, 'Argentina');
INSERT INTO public.teams VALUES (345, 'Germany');
INSERT INTO public.teams VALUES (346, 'Netherlands');
INSERT INTO public.teams VALUES (347, 'Costa Rica');
INSERT INTO public.teams VALUES (348, 'Chile');
INSERT INTO public.teams VALUES (349, 'Nigeria');
INSERT INTO public.teams VALUES (350, 'Algeria');
INSERT INTO public.teams VALUES (351, 'Greece');
INSERT INTO public.teams VALUES (352, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 52, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 352, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

