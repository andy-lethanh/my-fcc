--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(60) NOT NULL,
    alias character varying(20),
    weather_description text,
    alive boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_details; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy_details (
    galaxy_details_id integer NOT NULL,
    age_in_year_light integer,
    num_of_stars integer,
    galaxy_id integer,
    name character varying(60) NOT NULL
);


ALTER TABLE public.galaxy_details OWNER TO freecodecamp;

--
-- Name: galaxy_details_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_details_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_details_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_details_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_details_id_seq OWNED BY public.galaxy_details.galaxy_details_id;


--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(60) NOT NULL,
    planet_id integer,
    description text,
    alive boolean
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(60) NOT NULL,
    star_id integer,
    intel_grade integer,
    alive boolean
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(60) NOT NULL,
    age_in_year_light integer,
    ctemp numeric(12,2),
    description text,
    alive boolean,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: galaxy_details galaxy_details_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_details ALTER COLUMN galaxy_details_id SET DEFAULT nextval('public.galaxy_details_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'AZ-001', 'A1', 'Ok', true);
INSERT INTO public.galaxy VALUES (2, 'AZ-002', 'A2', 'Ok', true);
INSERT INTO public.galaxy VALUES (3, 'AZ-003', 'A3', 'Ok', true);
INSERT INTO public.galaxy VALUES (4, 'A4', 'A4', 'Not quite good', true);
INSERT INTO public.galaxy VALUES (5, 'A5', 'A5', 'Not quite good', true);
INSERT INTO public.galaxy VALUES (6, 'A6', 'A6', 'Not quite good', true);


--
-- Data for Name: galaxy_details; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy_details VALUES (1, 110, 9888, 1, 'G1');
INSERT INTO public.galaxy_details VALUES (2, 2000, 10000031, 2, 'G2');
INSERT INTO public.galaxy_details VALUES (3, 10, 123, 3, 'G3');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'm1', 1, 'Initialize', true);
INSERT INTO public.moon VALUES (2, 'm2', 2, 'Initialize', true);
INSERT INTO public.moon VALUES (3, 'm3', 3, 'Initialize', true);
INSERT INTO public.moon VALUES (4, 'm4', 4, 'ok', true);
INSERT INTO public.moon VALUES (5, 'm5', 5, 'ok', true);
INSERT INTO public.moon VALUES (6, 'm6', 6, 'ok', true);
INSERT INTO public.moon VALUES (7, 'm7', 7, 'ok', true);
INSERT INTO public.moon VALUES (8, 'm11', 11, 'ok', true);
INSERT INTO public.moon VALUES (9, 'm10', 10, 'ok', true);
INSERT INTO public.moon VALUES (10, 'm9', 9, 'ok', true);
INSERT INTO public.moon VALUES (11, 'm8', 8, 'ok', true);
INSERT INTO public.moon VALUES (12, 'm15', 11, 'ok', true);
INSERT INTO public.moon VALUES (13, 'm14', 10, 'ok', true);
INSERT INTO public.moon VALUES (14, 'm13', 9, 'ok', true);
INSERT INTO public.moon VALUES (15, 'm12', 8, 'ok', true);
INSERT INTO public.moon VALUES (16, 'm19', 11, 'ok', true);
INSERT INTO public.moon VALUES (17, 'm18', 10, 'ok', true);
INSERT INTO public.moon VALUES (18, 'm17', 9, 'ok', true);
INSERT INTO public.moon VALUES (19, 'm16', 12, 'ok', true);
INSERT INTO public.moon VALUES (20, 'm29', 12, 'ok', true);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'yup-planet', 1, 199, true);
INSERT INTO public.planet VALUES (2, 'yoyoyo', 2, 10, true);
INSERT INTO public.planet VALUES (3, 'high-intel-planet', 3, 1199, true);
INSERT INTO public.planet VALUES (4, 'yaibaba', 4, 2999, false);
INSERT INTO public.planet VALUES (5, 'yoyoyo-33', 5, 123, true);
INSERT INTO public.planet VALUES (6, 'Noideas', 6, 99, true);
INSERT INTO public.planet VALUES (7, 'yaibaba-2', 4, 2999, false);
INSERT INTO public.planet VALUES (8, 'yoyoyo-33-2', 5, 123, true);
INSERT INTO public.planet VALUES (9, 'Noideas-2', 6, 99, true);
INSERT INTO public.planet VALUES (10, 'yaibaba-3', 4, 2999, false);
INSERT INTO public.planet VALUES (11, 'yoyoyo-33-22', 5, 123, true);
INSERT INTO public.planet VALUES (12, 'Noideas-22', 6, 99, true);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Ancantara', 1, 65.44, 'A very young star', true, 1);
INSERT INTO public.star VALUES (2, 'Maxutona', 1000, 197.44, 'A quite young star', true, 2);
INSERT INTO public.star VALUES (3, 'Big Mud', 99000, -44.44, 'A old star', true, 3);
INSERT INTO public.star VALUES (4, 'Yoyoyoyoyo', 3838, 983.33, 'Ok con de', true, 4);
INSERT INTO public.star VALUES (5, 'Tetete', 29, 39393.00, 'So hot', true, 5);
INSERT INTO public.star VALUES (6, 'Latata', 987, 9833.00, 'Quite hot', true, 6);


--
-- Name: galaxy_details_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_details_id_seq', 3, true);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 6, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 20, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 12, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 6, true);


--
-- Name: galaxy_details galaxy_details_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_details
    ADD CONSTRAINT galaxy_details_name_key UNIQUE (name);


--
-- Name: galaxy_details galaxy_details_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_details
    ADD CONSTRAINT galaxy_details_pkey PRIMARY KEY (galaxy_details_id);


--
-- Name: galaxy galaxy_name_uix; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_uix UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_uix; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_uix UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_uix; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_uix UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_uix; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_uix UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: galaxy_details galaxy_details_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_details
    ADD CONSTRAINT galaxy_details_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


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

