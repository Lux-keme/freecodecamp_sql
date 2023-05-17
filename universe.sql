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
-- Name: black_hole; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.black_hole (
    black_hole_id integer NOT NULL,
    description character varying(40),
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years integer,
    planet_types text,
    galaxy_types text,
    distance_from_earth numeric(4,1),
    name character varying(80) NOT NULL,
    mass integer
);


ALTER TABLE public.black_hole OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    description character varying(40),
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years integer,
    planet_types text,
    galaxy_types text,
    distance_from_earth numeric(4,1),
    name character varying(80) NOT NULL,
    mass integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    description character varying(40),
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years integer,
    planet_types text,
    galaxy_types text,
    distance_from_earth numeric(4,1),
    name character varying(80) NOT NULL,
    mass integer,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    description character varying(40),
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years integer,
    planet_types text,
    galaxy_types text,
    distance_from_earth numeric(4,1),
    name character varying(80) NOT NULL,
    mass integer,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    description character varying(40),
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years integer,
    planet_types text,
    galaxy_types text,
    distance_from_earth numeric(4,1),
    name character varying(80) NOT NULL,
    mass integer,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: black_hole; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.black_hole VALUES (1, NULL, false, NULL, NULL, NULL, NULL, NULL, 'SagittariusA', NULL);
INSERT INTO public.black_hole VALUES (2, NULL, false, NULL, NULL, NULL, NULL, NULL, 'Singularity', NULL);
INSERT INTO public.black_hole VALUES (3, NULL, false, NULL, NULL, NULL, NULL, NULL, 'Siragusa', NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, NULL, false, NULL, NULL, NULL, NULL, NULL, 'MILKYWAY', NULL);
INSERT INTO public.galaxy VALUES (2, NULL, false, NULL, NULL, NULL, NULL, NULL, 'LMC', NULL);
INSERT INTO public.galaxy VALUES (3, NULL, false, NULL, NULL, NULL, NULL, NULL, 'Andromeda', NULL);
INSERT INTO public.galaxy VALUES (4, NULL, false, NULL, NULL, NULL, NULL, NULL, 'Cigar', NULL);
INSERT INTO public.galaxy VALUES (5, NULL, false, NULL, NULL, NULL, NULL, NULL, 'Pinwheel', NULL);
INSERT INTO public.galaxy VALUES (6, NULL, false, NULL, NULL, NULL, NULL, NULL, 'Sombrero', NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, NULL, false, NULL, NULL, NULL, NULL, NULL, 'Moon', NULL, NULL);
INSERT INTO public.moon VALUES (2, NULL, false, NULL, NULL, NULL, NULL, NULL, 'Phobos', NULL, NULL);
INSERT INTO public.moon VALUES (3, NULL, false, NULL, NULL, NULL, NULL, NULL, 'Deimos', NULL, NULL);
INSERT INTO public.moon VALUES (4, NULL, false, NULL, NULL, NULL, NULL, NULL, 'Metis', NULL, NULL);
INSERT INTO public.moon VALUES (5, NULL, false, NULL, NULL, NULL, NULL, NULL, 'Adrastea', NULL, NULL);
INSERT INTO public.moon VALUES (6, NULL, false, NULL, NULL, NULL, NULL, NULL, 'Amalthea', NULL, NULL);
INSERT INTO public.moon VALUES (7, NULL, false, NULL, NULL, NULL, NULL, NULL, 'Thebe', NULL, NULL);
INSERT INTO public.moon VALUES (8, NULL, false, NULL, NULL, NULL, NULL, NULL, 'Io', NULL, NULL);
INSERT INTO public.moon VALUES (9, NULL, false, NULL, NULL, NULL, NULL, NULL, 'Europa', NULL, NULL);
INSERT INTO public.moon VALUES (10, NULL, false, NULL, NULL, NULL, NULL, NULL, 'Ganymed', NULL, NULL);
INSERT INTO public.moon VALUES (11, NULL, false, NULL, NULL, NULL, NULL, NULL, 'Janus', NULL, NULL);
INSERT INTO public.moon VALUES (12, NULL, false, NULL, NULL, NULL, NULL, NULL, 'Epimetheus', NULL, NULL);
INSERT INTO public.moon VALUES (13, NULL, false, NULL, NULL, NULL, NULL, NULL, 'Pandora', NULL, NULL);
INSERT INTO public.moon VALUES (14, NULL, false, NULL, NULL, NULL, NULL, NULL, 'Prometheus', NULL, NULL);
INSERT INTO public.moon VALUES (15, NULL, false, NULL, NULL, NULL, NULL, NULL, 'Atlas', NULL, NULL);
INSERT INTO public.moon VALUES (16, NULL, false, NULL, NULL, NULL, NULL, NULL, 'Daphnis', NULL, NULL);
INSERT INTO public.moon VALUES (17, NULL, false, NULL, NULL, NULL, NULL, NULL, 'Pan', NULL, NULL);
INSERT INTO public.moon VALUES (18, NULL, false, NULL, NULL, NULL, NULL, NULL, 'Leda', NULL, NULL);
INSERT INTO public.moon VALUES (19, NULL, false, NULL, NULL, NULL, NULL, NULL, 'Themisto', NULL, NULL);
INSERT INTO public.moon VALUES (20, NULL, false, NULL, NULL, NULL, NULL, NULL, 'Kallisto', NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, NULL, false, NULL, NULL, NULL, NULL, NULL, 'Mercury', NULL, NULL);
INSERT INTO public.planet VALUES (2, NULL, false, NULL, NULL, NULL, NULL, NULL, 'Venus', NULL, NULL);
INSERT INTO public.planet VALUES (3, NULL, true, NULL, NULL, NULL, NULL, NULL, 'Earth', NULL, NULL);
INSERT INTO public.planet VALUES (4, NULL, false, NULL, NULL, NULL, NULL, NULL, 'Mars', NULL, NULL);
INSERT INTO public.planet VALUES (5, NULL, false, NULL, NULL, NULL, NULL, NULL, 'Jupiter', NULL, NULL);
INSERT INTO public.planet VALUES (6, NULL, false, NULL, NULL, NULL, NULL, NULL, 'Saturn', NULL, NULL);
INSERT INTO public.planet VALUES (7, NULL, false, NULL, NULL, NULL, NULL, NULL, 'Uranus', NULL, NULL);
INSERT INTO public.planet VALUES (8, NULL, false, NULL, NULL, NULL, NULL, NULL, 'Neptun', NULL, NULL);
INSERT INTO public.planet VALUES (9, NULL, false, NULL, NULL, NULL, NULL, NULL, 'PLUTO', NULL, NULL);
INSERT INTO public.planet VALUES (10, NULL, false, NULL, NULL, NULL, NULL, NULL, 'UNKNOWN', NULL, NULL);
INSERT INTO public.planet VALUES (11, NULL, false, NULL, NULL, NULL, NULL, NULL, 'Nix', NULL, NULL);
INSERT INTO public.planet VALUES (12, NULL, false, NULL, NULL, NULL, NULL, NULL, 'Galatea', NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, NULL, false, NULL, NULL, NULL, NULL, NULL, 'SUN', NULL, NULL);
INSERT INTO public.star VALUES (2, NULL, false, NULL, NULL, NULL, NULL, NULL, 'Lynx', NULL, NULL);
INSERT INTO public.star VALUES (3, NULL, false, NULL, NULL, NULL, NULL, NULL, 'Eridanus', NULL, NULL);
INSERT INTO public.star VALUES (4, NULL, false, NULL, NULL, NULL, NULL, NULL, 'Cassiopeia', NULL, NULL);
INSERT INTO public.star VALUES (5, NULL, false, NULL, NULL, NULL, NULL, NULL, 'Scorpius', NULL, NULL);
INSERT INTO public.star VALUES (6, NULL, false, NULL, NULL, NULL, NULL, NULL, 'Crux', NULL, NULL);


--
-- Name: black_hole black_hole_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_pkey PRIMARY KEY (black_hole_id);


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
-- Name: black_hole unique_dist; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT unique_dist UNIQUE (distance_from_earth);


--
-- Name: planet unique_dist1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_dist1 UNIQUE (distance_from_earth);


--
-- Name: star unique_dist2; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_dist2 UNIQUE (distance_from_earth);


--
-- Name: moon unique_dist3; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_dist3 UNIQUE (distance_from_earth);


--
-- Name: galaxy unique_dist4; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_dist4 UNIQUE (distance_from_earth);


--
-- Name: star foreign_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT foreign_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon foreign_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT foreign_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet foreign_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT foreign_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

