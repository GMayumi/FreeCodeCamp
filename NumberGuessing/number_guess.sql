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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
    id integer NOT NULL,
    username character varying(22) NOT NULL,
    guesses integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_id_seq OWNER TO freecodecamp;

--
-- Name: games_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_id_seq OWNED BY public.games.id;


--
-- Name: games id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN id SET DEFAULT nextval('public.games_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (46, 'user_1726163682685', 691);
INSERT INTO public.games VALUES (47, 'user_1726163682685', 394);
INSERT INTO public.games VALUES (48, 'user_1726163682684', 593);
INSERT INTO public.games VALUES (49, 'user_1726163682684', 44);
INSERT INTO public.games VALUES (50, 'user_1726163682685', 605);
INSERT INTO public.games VALUES (51, 'user_1726163682685', 544);
INSERT INTO public.games VALUES (52, 'user_1726163682685', 298);
INSERT INTO public.games VALUES (53, 'user_1726163699658', 90);
INSERT INTO public.games VALUES (54, 'user_1726163699658', 419);
INSERT INTO public.games VALUES (55, 'user_1726163699657', 622);
INSERT INTO public.games VALUES (56, 'user_1726163699657', 475);
INSERT INTO public.games VALUES (57, 'user_1726163699658', 816);
INSERT INTO public.games VALUES (58, 'user_1726163699658', 883);
INSERT INTO public.games VALUES (59, 'user_1726163699658', 440);
INSERT INTO public.games VALUES (60, 'user_1726163781541', 564);
INSERT INTO public.games VALUES (61, 'user_1726163781541', 721);
INSERT INTO public.games VALUES (62, 'user_1726163781540', 409);
INSERT INTO public.games VALUES (63, 'user_1726163781540', 666);
INSERT INTO public.games VALUES (64, 'user_1726163781541', 568);
INSERT INTO public.games VALUES (65, 'user_1726163781541', 842);
INSERT INTO public.games VALUES (66, 'user_1726163781541', 981);
INSERT INTO public.games VALUES (67, 'teste', 1);
INSERT INTO public.games VALUES (68, 'teste', 7);


--
-- Name: games_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_id_seq', 68, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

