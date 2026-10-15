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
-- Name: asteriod; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.asteriod (
    name character varying(50) NOT NULL,
    asteriod_id integer NOT NULL,
    diameter_km integer NOT NULL
);


ALTER TABLE public.asteriod OWNER TO freecodecamp;

--
-- Name: asteriod_asteriod_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.asteriod_asteriod_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.asteriod_asteriod_id_seq OWNER TO freecodecamp;

--
-- Name: asteriod_asteriod_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.asteriod_asteriod_id_seq OWNED BY public.asteriod.asteriod_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(40) NOT NULL,
    is_spherical boolean NOT NULL,
    distance_from_earth numeric NOT NULL,
    age integer NOT NULL
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
    planet_id integer NOT NULL,
    name character varying(50) NOT NULL,
    radius_moon integer,
    composition text
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
    name character varying(50) NOT NULL,
    star_id integer NOT NULL,
    planet_mass numeric,
    orbital_proximity text
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
    galaxy_id integer NOT NULL,
    name character varying(40) NOT NULL,
    temperature_star numeric,
    is_luminious boolean NOT NULL,
    energy_source text
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
-- Name: asteriod asteriod_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteriod ALTER COLUMN asteriod_id SET DEFAULT nextval('public.asteriod_asteriod_id_seq'::regclass);


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
-- Data for Name: asteriod; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.asteriod VALUES ('Ceres', 1, 940);
INSERT INTO public.asteriod VALUES ('Pallas', 2, 545);
INSERT INTO public.asteriod VALUES ('Vesta', 3, 525);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', true, 0.0, 13);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', true, 2.5, 10);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', false, 3.0, 11);
INSERT INTO public.galaxy VALUES (4, 'Centaurus A', false, 11.0, 12);
INSERT INTO public.galaxy VALUES (5, 'Bodes Galaxy', true, 12.0, 13);
INSERT INTO public.galaxy VALUES (6, 'Cigar Galaxy', false, 12.0, 13);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 3, 'The Moon', 1737, 'Silicate Rock');
INSERT INTO public.moon VALUES (2, 4, 'Phobos', 11, 'Carbonaceous Rock');
INSERT INTO public.moon VALUES (3, 4, 'Deimos', 6, 'Carbonaceous Rock');
INSERT INTO public.moon VALUES (4, 5, 'Io', 1821, 'Silicate and Sulfur');
INSERT INTO public.moon VALUES (5, 5, 'Europa', 1560, 'Water Ice and Silicate');
INSERT INTO public.moon VALUES (6, 5, 'Ganymede', 2634, 'Water Ice and Silicate');
INSERT INTO public.moon VALUES (7, 5, 'Callisto', 2410, 'Water Ice and Rock');
INSERT INTO public.moon VALUES (8, 6, 'Mimas', 198, 'Water Ice');
INSERT INTO public.moon VALUES (9, 6, 'Enceladus', 252, 'Water Ice and Rock');
INSERT INTO public.moon VALUES (10, 6, 'Tethys', 531, 'Water Ice');
INSERT INTO public.moon VALUES (11, 6, 'Dione', 561, 'Water Ice and Rock');
INSERT INTO public.moon VALUES (12, 6, 'Rhea', 763, 'Water Ice and Rock');
INSERT INTO public.moon VALUES (13, 6, 'Titan', 2574, 'Nitrogen Ice and Hydrocarbons');
INSERT INTO public.moon VALUES (14, 6, 'Hyperion', 135, 'Water Ice Chaotic Porous');
INSERT INTO public.moon VALUES (15, 6, 'Iapetus', 735, 'Ice and Dark Material');
INSERT INTO public.moon VALUES (16, 6, 'Phoebe', 106, 'Ice and Carbonates');
INSERT INTO public.moon VALUES (17, 7, 'Ariel', 578, 'Ice and Rock');
INSERT INTO public.moon VALUES (18, 7, 'Umbriel', 584, 'Ice and Rock');
INSERT INTO public.moon VALUES (19, 7, 'Titania', 788, 'Ice and Rock');
INSERT INTO public.moon VALUES (20, 7, 'Oberon', 761, 'Ice and Rock');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 1, 0.330, 'Very Close');
INSERT INTO public.planet VALUES (2, 'Venus', 1, 4.87, 'Close');
INSERT INTO public.planet VALUES (3, 'Earth', 1, 5.97, 'Habitable Zone');
INSERT INTO public.planet VALUES (4, 'Mars', 1, 0.642, 'Habitable Edge');
INSERT INTO public.planet VALUES (5, 'Jupiter', 1, 1898.0, 'Outer System');
INSERT INTO public.planet VALUES (6, 'Saturn', 1, 568.0, 'Outer System');
INSERT INTO public.planet VALUES (7, 'Uranus', 1, 86.8, 'Deep Outer System');
INSERT INTO public.planet VALUES (8, 'Neptune', 1, 102.0, 'Deep Outer System');
INSERT INTO public.planet VALUES (9, 'Sirius Prime', 2, 12.5, 'Close Orbit');
INSERT INTO public.planet VALUES (10, 'Betelgeuse Outpost', 3, 150.2, 'Distant Orbit');
INSERT INTO public.planet VALUES (11, 'Alpha Centauri b', 4, 1.1, 'Habitable Zone');
INSERT INTO public.planet VALUES (12, 'Vega Colony', 5, 45.0, 'Debris Disk Edge');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 1, 'Sun', 5778, true, 'Hydrogen Fusion');
INSERT INTO public.star VALUES (2, 1, 'Sirius', 9940, true, 'Core Hydrogen Fusion');
INSERT INTO public.star VALUES (3, 1, 'Betelgeuse', 3500, true, 'Helium Fusion');
INSERT INTO public.star VALUES (4, 1, 'Alpha Centauri', 5790, true, 'Hydrogen Fusion');
INSERT INTO public.star VALUES (5, 1, 'Vega', 9602, true, 'Carbon-Nitrogen-Oxygen cycle');
INSERT INTO public.star VALUES (6, 2, 'Andromedae A', 12000, true, 'High-mass Fusion');


--
-- Name: asteriod_asteriod_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.asteriod_asteriod_id_seq', 3, true);


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
-- Name: asteriod asteriod_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteriod
    ADD CONSTRAINT asteriod_name_key UNIQUE (name);


--
-- Name: asteriod asteriod_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteriod
    ADD CONSTRAINT asteriod_pkey PRIMARY KEY (asteriod_id);


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

