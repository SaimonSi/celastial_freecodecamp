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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_millions_of_years integer,
    ile_planet integer,
    distance_from_earth numeric,
    description text,
    has_life boolean,
    is_spherical boolean
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
-- Name: moja_tab; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moja_tab (
    moja_tab_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_millions_of_years integer,
    ile_planet integer,
    distance_from_earth numeric,
    description text,
    has_life boolean,
    is_spherical boolean
);


ALTER TABLE public.moja_tab OWNER TO freecodecamp;

--
-- Name: moja_tab_moja_tab_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moja_tab_moja_tab_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moja_tab_moja_tab_id_seq OWNER TO freecodecamp;

--
-- Name: moja_tab_moja_tab_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moja_tab_moja_tab_id_seq OWNED BY public.moja_tab.moja_tab_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_millions_of_years integer,
    ile_planet integer,
    distance_from_earth numeric,
    description text,
    has_life boolean,
    is_spherical boolean,
    planet_id integer
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
    name character varying(30) NOT NULL,
    age_in_millions_of_years integer,
    ile_planet integer,
    distance_from_earth numeric,
    description text,
    has_life boolean,
    is_spherical boolean,
    star_id integer
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
    name character varying(30) NOT NULL,
    age_in_millions_of_years integer,
    ile_planet integer,
    distance_from_earth numeric,
    description text,
    has_life boolean,
    is_spherical boolean,
    galaxy_id integer
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
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moja_tab moja_tab_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moja_tab ALTER COLUMN moja_tab_id SET DEFAULT nextval('public.moja_tab_moja_tab_id_seq'::regclass);


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
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Droga mleczna', 10, 24000, 0, 'nasz droga mleczna', true, false);
INSERT INTO public.galaxy VALUES (2, 'Czarne oko', 15, 21, 40000, 'obca galaktyka', false, true);
INSERT INTO public.galaxy VALUES (3, 'Galaktyka karłowata', 5, 3, 20000, 'mala galaktyka', false, false);
INSERT INTO public.galaxy VALUES (4, 'Sombrero', 30, 42, 80000, 'duza galaktyka', false, true);
INSERT INTO public.galaxy VALUES (5, 'NGC 4414', 12, 18, 60000, 'srednia galaktyka', false, true);
INSERT INTO public.galaxy VALUES (6, 'M63', 9, 10, 30000, 'ciekawa galaktyka', false, true);


--
-- Data for Name: moja_tab; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moja_tab VALUES (1, 'NASA', 1, 0, 0, 'kosmiczna organizacja', true, false);
INSERT INTO public.moja_tab VALUES (2, 'NASA1', 1, 0, 0, 'kosmiczna organizacja', true, false);
INSERT INTO public.moja_tab VALUES (3, 'NASA2', 1, 0, 0, 'kosmiczna organizacja', true, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (5, 'Księzyc', 120, 1, 500, 'nasz ksiezyc', false, true, 1);
INSERT INTO public.moon VALUES (6, 'Europa', 110, 1, 3000, 'ksiezyc Jowisza', false, true, 5);
INSERT INTO public.moon VALUES (7, 'Ganimedes', 110, 0, 5000, 'ciekawy ksiezyc', false, true, 1);
INSERT INTO public.moon VALUES (8, 'Ganimedes2', 110, 0, 5000, 'ciekawy ksiezyc', false, true, 1);
INSERT INTO public.moon VALUES (9, 'Ganimedes3', 110, 0, 5000, 'ciekawy ksiezyc', false, true, 1);
INSERT INTO public.moon VALUES (10, 'Ganimedes4', 110, 0, 5000, 'ciekawy ksiezyc', false, true, 1);
INSERT INTO public.moon VALUES (11, 'Ganimedes5', 110, 0, 5000, 'ciekawy ksiezyc', false, true, 1);
INSERT INTO public.moon VALUES (12, 'Ganimedes6', 110, 0, 5000, 'ciekawy ksiezyc', false, true, 1);
INSERT INTO public.moon VALUES (13, 'Ganimedes7', 110, 0, 5000, 'ciekawy ksiezyc', false, true, 1);
INSERT INTO public.moon VALUES (14, 'Ganimedes8', 110, 0, 5000, 'ciekawy ksiezyc', false, true, 1);
INSERT INTO public.moon VALUES (15, 'Ganimedes9', 110, 0, 5000, 'ciekawy ksiezyc', false, true, 1);
INSERT INTO public.moon VALUES (16, 'Ganimedes10', 110, 0, 5000, 'ciekawy ksiezyc', false, true, 1);
INSERT INTO public.moon VALUES (17, 'Ganimedes11', 110, 0, 5000, 'ciekawy ksiezyc', false, true, 1);
INSERT INTO public.moon VALUES (18, 'Ganimedes12', 110, 0, 5000, 'ciekawy ksiezyc', false, true, 1);
INSERT INTO public.moon VALUES (19, 'Ganimedes13', 110, 0, 5000, 'ciekawy ksiezyc', false, true, 1);
INSERT INTO public.moon VALUES (20, 'Ganimedes14', 110, 0, 5000, 'ciekawy ksiezyc', false, true, 1);
INSERT INTO public.moon VALUES (21, 'Ganimedes15', 110, 0, 5000, 'ciekawy ksiezyc', false, true, 1);
INSERT INTO public.moon VALUES (22, 'Ganimedes16', 110, 0, 5000, 'ciekawy ksiezyc', false, true, 1);
INSERT INTO public.moon VALUES (23, 'Ganimedes17', 110, 0, 5000, 'ciekawy ksiezyc', false, true, 1);
INSERT INTO public.moon VALUES (24, 'Ganimedes18', 110, 0, 5000, 'ciekawy ksiezyc', false, true, 1);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Ziemia', 120, 0, 0, 'nasza planeta', false, true, 1);
INSERT INTO public.planet VALUES (2, 'Merkury', 10, 0, 3000, 'najblizej slonca', false, true, 1);
INSERT INTO public.planet VALUES (3, 'Wenus', 8, 0, 2000, 'druga od slonca', false, true, 1);
INSERT INTO public.planet VALUES (4, 'Mars', 5, 0, 2000, 'moze sa tam kosmici', false, true, 1);
INSERT INTO public.planet VALUES (5, 'Jowisz', 20, 0, 5000, 'olbrzym gazowy', false, true, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', 11, 0, 8000, 'posiada dysk', false, true, 1);
INSERT INTO public.planet VALUES (7, 'Uran', 9, 0, 10000, 'szara planeta', false, true, 1);
INSERT INTO public.planet VALUES (8, 'Neptun', 11, 0, 12000, 'zimno tam', false, true, 1);
INSERT INTO public.planet VALUES (9, 'Zirra', 4, 0, 50000, 'malo inf', false, true, 5);
INSERT INTO public.planet VALUES (10, 'Karlos', 11, 0, 60000, 'planeta karlowata', false, true, 5);
INSERT INTO public.planet VALUES (11, 'Elios', 21, 0, 60000, 'goraco tam', false, true, 3);
INSERT INTO public.planet VALUES (12, 'Demiz', 8, 0, 71000, 'gazowa planeta', false, true, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Slonce', 80, 0, 80000, 'zrodlo energii', false, true, 1);
INSERT INTO public.star VALUES (2, 'Deneb', 15, 0, 10000, 'arabska nazwa', false, true, 1);
INSERT INTO public.star VALUES (3, 'Syriusz', 9, 0, 240000, 'ciekawa nazwa', false, true, 3);
INSERT INTO public.star VALUES (4, 'Arktur', 13, 0, 500000, 'daleko jest', false, true, 4);
INSERT INTO public.star VALUES (5, 'Wega', 20, 0, 50000, 'dysk pylowy', false, true, 2);
INSERT INTO public.star VALUES (6, 'Rigel', 11, 0, 800000, 'jest bardzo daleko', false, true, 5);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moja_tab_moja_tab_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moja_tab_moja_tab_id_seq', 3, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 27, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 18, true);


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
-- Name: moja_tab moja_tab_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moja_tab
    ADD CONSTRAINT moja_tab_name_key UNIQUE (name);


--
-- Name: moja_tab moja_tab_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moja_tab
    ADD CONSTRAINT moja_tab_pkey PRIMARY KEY (moja_tab_id);


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

