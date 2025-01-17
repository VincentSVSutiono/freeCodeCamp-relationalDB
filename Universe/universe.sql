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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: celestial; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.celestial (
    celestial_id integer NOT NULL,
    name character varying(255) NOT NULL,
    power integer,
    follower integer,
    height numeric(4,1),
    skill text,
    exist boolean
);


ALTER TABLE public.celestial OWNER TO freecodecamp;

--
-- Name: celestial_celestial_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.celestial_celestial_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.celestial_celestial_id_seq OWNER TO freecodecamp;

--
-- Name: celestial_celestial_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.celestial_celestial_id_seq OWNED BY public.celestial.celestial_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(255) NOT NULL,
    size integer,
    distance integer,
    gravity numeric(4,1),
    color text,
    exist boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(255),
    size integer,
    distance integer,
    gravity numeric(4,1),
    color text,
    exist boolean,
    planet_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(255),
    size integer,
    distance integer,
    gravity numeric(4,1),
    color text,
    exist boolean,
    star_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(255),
    size integer,
    distance integer,
    gravity numeric(4,1),
    color text,
    exist boolean,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: celestial celestial_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.celestial ALTER COLUMN celestial_id SET DEFAULT nextval('public.celestial_celestial_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: celestial; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.celestial VALUES (1, 'Zeus', 1000, 1000000, 10.5, 'Lightning Mastery', true);
INSERT INTO public.celestial VALUES (2, 'Poseidon', 900, 800000, 12.3, 'Water Manipulation', true);
INSERT INTO public.celestial VALUES (3, 'Hades', 850, 750000, 11.8, 'Underworld Control', true);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 100000, 0, 9.8, 'White', true);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 110000, 2537000, 8.9, 'Blue', true);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 60000, 3000000, 7.6, 'White', true);
INSERT INTO public.galaxy VALUES (4, 'Whirlpool', 76000, 23000000, 10.5, 'Red', true);
INSERT INTO public.galaxy VALUES (5, 'Sombrero', 50000, 29000000, 8.2, 'Yellow', true);
INSERT INTO public.galaxy VALUES (6, 'Black Eye', 45000, 17000000, 9.4, 'Black', true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 3474, 384400, 1.6, 'Gray', true, 3);
INSERT INTO public.moon VALUES (2, 'Phobos', 22, 9376, 0.0, 'Gray', true, 4);
INSERT INTO public.moon VALUES (3, 'Deimos', 12, 23460, 0.0, 'Gray', true, 4);
INSERT INTO public.moon VALUES (4, 'Io', 3642, 421700, 1.8, 'Yellow', true, 5);
INSERT INTO public.moon VALUES (5, 'Europa', 3122, 671034, 1.3, 'White', true, 5);
INSERT INTO public.moon VALUES (6, 'Ganymede', 5268, 1070400, 1.4, 'Brown', true, 5);
INSERT INTO public.moon VALUES (7, 'Callisto', 4821, 1882700, 1.2, 'Gray', true, 5);
INSERT INTO public.moon VALUES (8, 'Titan', 5149, 1221870, 1.4, 'Orange', true, 6);
INSERT INTO public.moon VALUES (9, 'Enceladus', 504, 238042, 0.1, 'White', true, 6);
INSERT INTO public.moon VALUES (10, 'Mimas', 396, 185540, 0.1, 'Gray', true, 6);
INSERT INTO public.moon VALUES (11, 'Triton', 2706, 354800, 0.8, 'Pink', true, 8);
INSERT INTO public.moon VALUES (12, 'Nereid', 340, 5514000, 0.1, 'Gray', true, 8);
INSERT INTO public.moon VALUES (13, 'Charon', 1212, 19571, 0.3, 'Gray', true, 8);
INSERT INTO public.moon VALUES (14, 'Oberon', 1523, 583520, 0.3, 'Brown', true, 7);
INSERT INTO public.moon VALUES (15, 'Titania', 1577, 436000, 0.4, 'White', true, 7);
INSERT INTO public.moon VALUES (16, 'Ariel', 1158, 191020, 0.3, 'Gray', true, 7);
INSERT INTO public.moon VALUES (17, 'Umbriel', 1169, 265970, 0.2, 'Brown', true, 7);
INSERT INTO public.moon VALUES (18, 'Miranda', 471, 129390, 0.1, 'Gray', true, 7);
INSERT INTO public.moon VALUES (19, 'Hyperion', 270, 1481000, 0.0, 'Yellow', true, 6);
INSERT INTO public.moon VALUES (20, 'Proteus', 420, 117650, 0.1, 'Gray', true, 8);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 4879, 57, 3.7, 'Gray', true, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 12104, 108, 8.9, 'Yellow', true, 1);
INSERT INTO public.planet VALUES (3, 'Earth', 12742, 149, 9.8, 'Blue', true, 1);
INSERT INTO public.planet VALUES (4, 'Mars', 6779, 228, 3.7, 'Red', true, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 139820, 778, 24.8, 'Brown', true, 2);
INSERT INTO public.planet VALUES (6, 'Saturn', 116460, 1427, 10.4, 'Yellow', true, 2);
INSERT INTO public.planet VALUES (7, 'Uranus', 50724, 2871, 8.7, 'Cyan', true, 2);
INSERT INTO public.planet VALUES (8, 'Neptune', 49244, 4495, 11.2, 'Blue', true, 2);
INSERT INTO public.planet VALUES (9, 'Kepler-22b', 30000, 62, 12.4, 'Green', true, 3);
INSERT INTO public.planet VALUES (10, 'Proxima b', 11000, 40, 8.9, 'Orange', true, 3);
INSERT INTO public.planet VALUES (11, 'Alpha Centauri Bb', 5000, 12, 9.2, 'White', true, 3);
INSERT INTO public.planet VALUES (12, 'Gliese 581g', 4500, 22, 8.7, 'Gray', true, 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1392000, 0, 274.0, 'Yellow', true, 1);
INSERT INTO public.star VALUES (2, 'Sirius', 2400000, 8600000, 196.0, 'White', true, 1);
INSERT INTO public.star VALUES (3, 'Betelgeuse', 887000000, 640000, 18.0, 'Red', true, 2);
INSERT INTO public.star VALUES (4, 'Rigel', 980000000, 860000, 23.0, 'Blue', true, 2);
INSERT INTO public.star VALUES (5, 'Vega', 2760000, 2500000, 150.0, 'White', true, 3);
INSERT INTO public.star VALUES (6, 'Proxima Centauri', 200000, 4000000, 180.0, 'Red', true, 4);


--
-- Name: celestial_celestial_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.celestial_celestial_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: celestial celestial_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.celestial
    ADD CONSTRAINT celestial_name_key UNIQUE (name);


--
-- Name: celestial celestial_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.celestial
    ADD CONSTRAINT celestial_pkey PRIMARY KEY (celestial_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

