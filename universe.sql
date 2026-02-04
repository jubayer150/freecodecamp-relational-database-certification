--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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
    distance_from_earth numeric(10,2),
    planet_types integer,
    galaxy_types integer,
    description text,
    has_life boolean,
    is_spherical boolean,
    unique_column integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

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
    name character varying(30) NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth numeric(10,2),
    planet_types integer,
    galaxy_types integer,
    description text,
    has_life boolean,
    is_spherical boolean,
    planet_id integer,
    unique_column integer
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
    name character varying(30) NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth numeric(10,2),
    planet_types integer,
    galaxy_types integer,
    description text,
    has_life boolean,
    is_spherical boolean,
    star_id integer,
    unique_column integer
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
-- Name: species; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.species (
    species_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age integer,
    unique_column integer
);


ALTER TABLE public.species OWNER TO freecodecamp;

--
-- Name: species_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.species_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.species_id_seq OWNER TO freecodecamp;

--
-- Name: species_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.species_id_seq OWNED BY public.species.species_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth numeric(10,2),
    planet_types integer,
    galaxy_types integer,
    description text,
    has_life boolean,
    is_spherical boolean,
    galaxy_id integer,
    unique_column integer
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
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: species species_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.species ALTER COLUMN species_id SET DEFAULT nextval('public.species_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 13600, 0.00, 1, 1, 'Our home galaxy', true, false, NULL);
INSERT INTO public.galaxy VALUES (2, 'Milky Way', 13600, 0.00, 1, 1, 'Our home galaxy', true, false, NULL);
INSERT INTO public.galaxy VALUES (3, 'Milky Way', 13600, 0.00, 1, 1, 'Our home galaxy', true, false, NULL);
INSERT INTO public.galaxy VALUES (4, 'Milky Way', 13600, 0.00, 1, 1, 'Our home galaxy', true, false, NULL);
INSERT INTO public.galaxy VALUES (5, 'Milky Way', 13600, 0.00, 1, 1, 'Our home galaxy', true, false, NULL);
INSERT INTO public.galaxy VALUES (6, 'Milky Way', 13600, 0.00, 1, 1, 'Our home galaxy', true, false, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 4500, 0.38, 1, 1, 'Earths natural satelite', true, false, 1, NULL);
INSERT INTO public.moon VALUES (2, 'Moon', 4500, 0.38, 1, 1, 'Earths natural satelite', true, false, 1, NULL);
INSERT INTO public.moon VALUES (3, 'Moon', 4500, 0.38, 1, 1, 'Earths natural satelite', true, false, 1, NULL);
INSERT INTO public.moon VALUES (4, 'Moon', 4500, 0.38, 1, 1, 'Earths natural satelite', true, false, 1, NULL);
INSERT INTO public.moon VALUES (5, 'Moon', 4500, 0.38, 1, 1, 'Earths natural satelite', true, false, 1, NULL);
INSERT INTO public.moon VALUES (6, 'Moon', 4500, 0.38, 1, 1, 'Earths natural satelite', true, false, 1, NULL);
INSERT INTO public.moon VALUES (7, 'Moon', 4500, 0.38, 1, 1, 'Earths natural satelite', true, false, 1, NULL);
INSERT INTO public.moon VALUES (8, 'Moon', 4500, 0.38, 1, 1, 'Earths natural satelite', true, false, 1, NULL);
INSERT INTO public.moon VALUES (9, 'Moon', 4500, 0.38, 1, 1, 'Earths natural satelite', true, false, 1, NULL);
INSERT INTO public.moon VALUES (10, 'Moon', 4500, 0.38, 1, 1, 'Earths natural satelite', true, false, 1, NULL);
INSERT INTO public.moon VALUES (11, 'Moon', 4500, 0.38, 1, 1, 'Earths natural satelite', true, false, 1, NULL);
INSERT INTO public.moon VALUES (12, 'Moon', 4500, 0.38, 1, 1, 'Earths natural satelite', true, false, 1, NULL);
INSERT INTO public.moon VALUES (13, 'Moon', 4500, 0.38, 1, 1, 'Earths natural satelite', true, false, 1, NULL);
INSERT INTO public.moon VALUES (14, 'Moon', 4500, 0.38, 1, 1, 'Earths natural satelite', true, false, 1, NULL);
INSERT INTO public.moon VALUES (15, 'Moon', 4500, 0.38, 1, 1, 'Earths natural satelite', true, false, 1, NULL);
INSERT INTO public.moon VALUES (16, 'Moon', 4500, 0.38, 1, 1, 'Earths natural satelite', true, false, 1, NULL);
INSERT INTO public.moon VALUES (17, 'Moon', 4500, 0.38, 1, 1, 'Earths natural satelite', true, false, 1, NULL);
INSERT INTO public.moon VALUES (18, 'Moon', 4500, 0.38, 1, 1, 'Earths natural satelite', true, false, 1, NULL);
INSERT INTO public.moon VALUES (19, 'Moon', 4500, 0.38, 1, 1, 'Earths natural satelite', true, false, 1, NULL);
INSERT INTO public.moon VALUES (20, 'Moon', 4500, 0.38, 1, 1, 'Earths natural satelite', true, false, 1, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 4540, 0.00, 1, 1, 'Supports life', true, false, 1, NULL);
INSERT INTO public.planet VALUES (2, 'Earth', 4540, 0.00, 1, 1, 'Supports life', true, false, 1, NULL);
INSERT INTO public.planet VALUES (3, 'Earth', 4540, 0.00, 1, 1, 'Supports life', true, false, 1, NULL);
INSERT INTO public.planet VALUES (4, 'Earth', 4540, 0.00, 1, 1, 'Supports life', true, false, 1, NULL);
INSERT INTO public.planet VALUES (5, 'Earth', 4540, 0.00, 1, 1, 'Supports life', true, false, 1, NULL);
INSERT INTO public.planet VALUES (6, 'Earth', 4540, 0.00, 1, 1, 'Supports life', true, false, 1, NULL);
INSERT INTO public.planet VALUES (7, 'Earth', 4540, 0.00, 1, 1, 'Supports life', true, false, 1, NULL);
INSERT INTO public.planet VALUES (8, 'Earth', 4540, 0.00, 1, 1, 'Supports life', true, false, 1, NULL);
INSERT INTO public.planet VALUES (9, 'Earth', 4540, 0.00, 1, 1, 'Supports life', true, false, 1, NULL);
INSERT INTO public.planet VALUES (10, 'Earth', 4540, 0.00, 1, 1, 'Supports life', true, false, 1, NULL);
INSERT INTO public.planet VALUES (11, 'Earth', 4540, 0.00, 1, 1, 'Supports life', true, false, 1, NULL);
INSERT INTO public.planet VALUES (12, 'Earth', 4540, 0.00, 1, 1, 'Supports life', true, false, 1, NULL);


--
-- Data for Name: species; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.species VALUES (1, 'Human', 4500, NULL);
INSERT INTO public.species VALUES (2, 'Tiger', 4500, NULL);
INSERT INTO public.species VALUES (3, 'Lion', 4500, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 4600, 0.00, 1, 1, 'Yellow dwarf star', true, false, 1, NULL);
INSERT INTO public.star VALUES (2, 'Sun', 4600, 0.00, 1, 1, 'Yellow dwarf star', true, false, 1, NULL);
INSERT INTO public.star VALUES (3, 'Sun', 4600, 0.00, 1, 1, 'Yellow dwarf star', true, false, 1, NULL);
INSERT INTO public.star VALUES (4, 'Sun', 4600, 0.00, 1, 1, 'Yellow dwarf star', true, false, 1, NULL);
INSERT INTO public.star VALUES (5, 'Sun', 4600, 0.00, 1, 1, 'Yellow dwarf star', true, false, 1, NULL);
INSERT INTO public.star VALUES (6, 'Sun', 4600, 0.00, 1, 1, 'Yellow dwarf star', true, false, 1, NULL);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 1, false);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 1, false);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 1, false);


--
-- Name: species_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.species_id_seq', 1, false);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 1, false);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_unique_column_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_unique_column_key UNIQUE (unique_column);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_unique_column_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_unique_column_key UNIQUE (unique_column);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_unique_column_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_unique_column_key UNIQUE (unique_column);


--
-- Name: species species_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.species
    ADD CONSTRAINT species_pkey PRIMARY KEY (species_id);


--
-- Name: species species_unique_column_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.species
    ADD CONSTRAINT species_unique_column_key UNIQUE (unique_column);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_unique_column_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_unique_column_key UNIQUE (unique_column);


--
-- Name: star fk_galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

