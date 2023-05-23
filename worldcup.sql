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
    round character varying(30) NOT NULL,
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
    name character varying(30) NOT NULL
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

INSERT INTO public.games VALUES (125, 2018, 'Final', 166, 167, 4, 2);
INSERT INTO public.games VALUES (126, 2018, 'Third Place', 168, 169, 2, 0);
INSERT INTO public.games VALUES (127, 2018, 'Semi-Final', 167, 169, 2, 1);
INSERT INTO public.games VALUES (128, 2018, 'Semi-Final', 166, 168, 1, 0);
INSERT INTO public.games VALUES (129, 2018, 'Quarter-Final', 167, 170, 3, 2);
INSERT INTO public.games VALUES (130, 2018, 'Quarter-Final', 169, 171, 2, 0);
INSERT INTO public.games VALUES (131, 2018, 'Quarter-Final', 168, 172, 2, 1);
INSERT INTO public.games VALUES (132, 2018, 'Quarter-Final', 166, 173, 2, 0);
INSERT INTO public.games VALUES (133, 2018, 'Eighth-Final', 169, 174, 2, 1);
INSERT INTO public.games VALUES (134, 2018, 'Eighth-Final', 171, 175, 1, 0);
INSERT INTO public.games VALUES (135, 2018, 'Eighth-Final', 168, 176, 3, 2);
INSERT INTO public.games VALUES (136, 2018, 'Eighth-Final', 172, 177, 2, 0);
INSERT INTO public.games VALUES (137, 2018, 'Eighth-Final', 167, 178, 2, 1);
INSERT INTO public.games VALUES (138, 2018, 'Eighth-Final', 170, 179, 2, 1);
INSERT INTO public.games VALUES (139, 2018, 'Eighth-Final', 173, 180, 2, 1);
INSERT INTO public.games VALUES (140, 2018, 'Eighth-Final', 166, 181, 4, 3);
INSERT INTO public.games VALUES (141, 2014, 'Final', 182, 181, 1, 0);
INSERT INTO public.games VALUES (142, 2014, 'Third Place', 183, 172, 3, 0);
INSERT INTO public.games VALUES (143, 2014, 'Semi-Final', 181, 183, 1, 0);
INSERT INTO public.games VALUES (144, 2014, 'Semi-Final', 182, 172, 7, 1);
INSERT INTO public.games VALUES (145, 2014, 'Quarter-Final', 183, 184, 1, 0);
INSERT INTO public.games VALUES (146, 2014, 'Quarter-Final', 181, 168, 1, 0);
INSERT INTO public.games VALUES (147, 2014, 'Quarter-Final', 172, 174, 2, 1);
INSERT INTO public.games VALUES (148, 2014, 'Quarter-Final', 182, 166, 1, 0);
INSERT INTO public.games VALUES (149, 2014, 'Eighth-Final', 172, 185, 2, 1);
INSERT INTO public.games VALUES (150, 2014, 'Eighth-Final', 174, 173, 2, 0);
INSERT INTO public.games VALUES (151, 2014, 'Eighth-Final', 166, 186, 2, 0);
INSERT INTO public.games VALUES (152, 2014, 'Eighth-Final', 182, 187, 2, 1);
INSERT INTO public.games VALUES (153, 2014, 'Eighth-Final', 183, 177, 2, 1);
INSERT INTO public.games VALUES (154, 2014, 'Eighth-Final', 184, 188, 2, 1);
INSERT INTO public.games VALUES (155, 2014, 'Eighth-Final', 181, 175, 1, 0);
INSERT INTO public.games VALUES (156, 2014, 'Eighth-Final', 168, 189, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (166, 'France');
INSERT INTO public.teams VALUES (167, 'Croatia');
INSERT INTO public.teams VALUES (168, 'Belgium');
INSERT INTO public.teams VALUES (169, 'England');
INSERT INTO public.teams VALUES (170, 'Russia');
INSERT INTO public.teams VALUES (171, 'Sweden');
INSERT INTO public.teams VALUES (172, 'Brazil');
INSERT INTO public.teams VALUES (173, 'Uruguay');
INSERT INTO public.teams VALUES (174, 'Colombia');
INSERT INTO public.teams VALUES (175, 'Switzerland');
INSERT INTO public.teams VALUES (176, 'Japan');
INSERT INTO public.teams VALUES (177, 'Mexico');
INSERT INTO public.teams VALUES (178, 'Denmark');
INSERT INTO public.teams VALUES (179, 'Spain');
INSERT INTO public.teams VALUES (180, 'Portugal');
INSERT INTO public.teams VALUES (181, 'Argentina');
INSERT INTO public.teams VALUES (182, 'Germany');
INSERT INTO public.teams VALUES (183, 'Netherlands');
INSERT INTO public.teams VALUES (184, 'Costa Rica');
INSERT INTO public.teams VALUES (185, 'Chile');
INSERT INTO public.teams VALUES (186, 'Nigeria');
INSERT INTO public.teams VALUES (187, 'Algeria');
INSERT INTO public.teams VALUES (188, 'Greece');
INSERT INTO public.teams VALUES (189, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 156, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 189, true);


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


