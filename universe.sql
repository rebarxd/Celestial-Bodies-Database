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
    name character varying(30),
    age_in_billion_years integer NOT NULL,
    description text NOT NULL,
    discovered boolean
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
    name character varying(30),
    planet_id integer,
    diameter integer NOT NULL,
    mass numeric NOT NULL,
    is_habitable boolean
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
    name character varying(30),
    star_id integer,
    radius integer NOT NULL,
    distance_from_star numeric NOT NULL,
    has_rings boolean
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
    name character varying(30),
    galaxy_id integer,
    mass numeric NOT NULL,
    is_visible boolean NOT NULL
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
-- Name: stargalaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.stargalaxy (
    stargalaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    txt text NOT NULL
);


ALTER TABLE public.stargalaxy OWNER TO freecodecamp;

--
-- Name: stargalaxy_stargalaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.stargalaxy_stargalaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.stargalaxy_stargalaxy_id_seq OWNER TO freecodecamp;

--
-- Name: stargalaxy_stargalaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.stargalaxy_stargalaxy_id_seq OWNED BY public.stargalaxy.stargalaxy_id;


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
-- Name: stargalaxy stargalaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.stargalaxy ALTER COLUMN stargalaxy_id SET DEFAULT nextval('public.stargalaxy_stargalaxy_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 13, 'Our home galaxy', true);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 10, 'Closest spiral galaxy', true);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 12, 'Part of the Local Group', true);
INSERT INTO public.galaxy VALUES (4, 'Whirlpool', 9, 'Famous for its spiral shape', true);
INSERT INTO public.galaxy VALUES (5, 'Sombrero', 11, 'Named for its appearance', true);
INSERT INTO public.galaxy VALUES (6, 'Black Eye', 8, 'Known for its dark band of absorbing dust', false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 3, 3474, 73420000000000000000000, false);
INSERT INTO public.moon VALUES (2, 'Phobos', 4, 22, 10659000000000000, false);
INSERT INTO public.moon VALUES (3, 'Deimos', 4, 12, 1476200000000000, false);
INSERT INTO public.moon VALUES (4, 'Io', 5, 3643, 89319000000000000000000, false);
INSERT INTO public.moon VALUES (5, 'Europa', 5, 3121, 47998000000000000000000, false);
INSERT INTO public.moon VALUES (6, 'Ganymede', 5, 5268, 148190000000000000000000, false);
INSERT INTO public.moon VALUES (7, 'Callisto', 5, 4821, 107590000000000000000000, false);
INSERT INTO public.moon VALUES (8, 'Titan', 6, 5149, 134520000000000000000000, false);
INSERT INTO public.moon VALUES (9, 'Enceladus', 6, 504, 108020000000000000000, false);
INSERT INTO public.moon VALUES (10, 'Mimas', 6, 396, 37493000000000000000, false);
INSERT INTO public.moon VALUES (11, 'Tethys', 6, 1062, 617450000000000000000, false);
INSERT INTO public.moon VALUES (12, 'Dione', 6, 1123, 1095400000000000000000, false);
INSERT INTO public.moon VALUES (13, 'Rhea', 6, 1528, 2306500000000000000000, false);
INSERT INTO public.moon VALUES (14, 'Iapetus', 6, 1469, 1805600000000000000000, false);
INSERT INTO public.moon VALUES (15, 'Oberon', 7, 1523, 3014000000000000000000, false);
INSERT INTO public.moon VALUES (16, 'Titania', 7, 1578, 3526000000000000000000, false);
INSERT INTO public.moon VALUES (17, 'Ariel', 7, 1158, 1353000000000000000000, false);
INSERT INTO public.moon VALUES (18, 'Umbriel', 7, 1169, 1172000000000000000000, false);
INSERT INTO public.moon VALUES (19, 'Triton', 8, 2706, 21400000000000000000000, false);
INSERT INTO public.moon VALUES (20, 'Nereid', 8, 340, 31000000000000000000, false);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 1, 2440, 57.9, false);
INSERT INTO public.planet VALUES (2, 'Venus', 1, 6052, 108.2, false);
INSERT INTO public.planet VALUES (3, 'Earth', 1, 6371, 149.6, false);
INSERT INTO public.planet VALUES (4, 'Mars', 1, 3389, 227.9, false);
INSERT INTO public.planet VALUES (5, 'Jupiter', 1, 69911, 778.3, true);
INSERT INTO public.planet VALUES (6, 'Saturn', 1, 58232, 1427, true);
INSERT INTO public.planet VALUES (7, 'Uranus', 1, 25362, 2871, true);
INSERT INTO public.planet VALUES (8, 'Neptune', 1, 24622, 4495, true);
INSERT INTO public.planet VALUES (9, 'Proxima b', 2, 6371, 0.05, false);
INSERT INTO public.planet VALUES (10, 'Proxima c', 2, 6371, 1.5, false);
INSERT INTO public.planet VALUES (11, 'Sirius b', 3, 116, 20, false);
INSERT INTO public.planet VALUES (12, 'Sirius c', 3, 116, 20, false);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1, 1989000000000000000000000000000, true);
INSERT INTO public.star VALUES (2, 'Proxima Centauri', 1, 244600000000000000000000000000, true);
INSERT INTO public.star VALUES (3, 'Sirius', 2, 3978000000000000000000000000000, true);
INSERT INTO public.star VALUES (4, 'Betelgeuse', 2, 27780000000000000000000000000000, true);
INSERT INTO public.star VALUES (5, 'Rigel', 2, 21040000000000000000000000000000, true);
INSERT INTO public.star VALUES (6, 'Polaris', 2, 6000000000000000000000000000000, true);


--
-- Data for Name: stargalaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.stargalaxy VALUES (1, 'Andromeda', 'The closest spiral galaxy to the Milky Way.');
INSERT INTO public.stargalaxy VALUES (2, 'Sombrero', 'A spiral galaxy in the constellation Virgo, known for its bright nucleus and dust lane.');
INSERT INTO public.stargalaxy VALUES (3, 'Whirlpool', 'A grand-design spiral galaxy located in the constellation Canes Venatici.');


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
-- Name: stargalaxy_stargalaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.stargalaxy_stargalaxy_id_seq', 3, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: stargalaxy stargalaxy_pk; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.stargalaxy
    ADD CONSTRAINT stargalaxy_pk PRIMARY KEY (stargalaxy_id);


--
-- Name: stargalaxy stargalaxy_stargalaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.stargalaxy
    ADD CONSTRAINT stargalaxy_stargalaxy_id_key UNIQUE (stargalaxy_id);


--
-- Name: galaxy unique_galaxy_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_galaxy_name UNIQUE (name);


--
-- Name: moon unique_moon_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon_name UNIQUE (name);


--
-- Name: planet unique_planet_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet_name UNIQUE (name);


--
-- Name: star unique_star_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star_name UNIQUE (name);


--
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

