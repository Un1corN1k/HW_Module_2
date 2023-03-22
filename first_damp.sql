--
-- PostgreSQL database dump
--

-- Dumped from database version 15.2
-- Dumped by pg_dump version 15.2

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
-- Name: fav_act; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.fav_act (
    id integer NOT NULL,
    name_act character varying(255),
    srarring_in_roles integer
);


ALTER TABLE public.fav_act OWNER TO postgres;

--
-- Name: fav_act_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.fav_act_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.fav_act_id_seq OWNER TO postgres;

--
-- Name: fav_act_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.fav_act_id_seq OWNED BY public.fav_act.id;


--
-- Name: fav_director; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.fav_director (
    id integer NOT NULL,
    director character varying(200),
    best_movie character varying(200),
    release integer
);


ALTER TABLE public.fav_director OWNER TO postgres;

--
-- Name: fav_director_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.fav_director_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.fav_director_id_seq OWNER TO postgres;

--
-- Name: fav_director_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.fav_director_id_seq OWNED BY public.fav_director.id;


--
-- Name: fav_movie; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.fav_movie (
    id integer NOT NULL,
    movie character varying(200),
    release integer,
    star character varying(200)
);


ALTER TABLE public.fav_movie OWNER TO postgres;

--
-- Name: fav_movie_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.fav_movie_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.fav_movie_id_seq OWNER TO postgres;

--
-- Name: fav_movie_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.fav_movie_id_seq OWNED BY public.fav_movie.id;


--
-- Name: fav_act id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fav_act ALTER COLUMN id SET DEFAULT nextval('public.fav_act_id_seq'::regclass);


--
-- Name: fav_director id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fav_director ALTER COLUMN id SET DEFAULT nextval('public.fav_director_id_seq'::regclass);


--
-- Name: fav_movie id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fav_movie ALTER COLUMN id SET DEFAULT nextval('public.fav_movie_id_seq'::regclass);


--
-- Data for Name: fav_act; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.fav_act (id, name_act, srarring_in_roles) FROM stdin;
1	Johnny Depp	63
2	Chris Hemsworth	34
3	Leonardo Dicaprio	48
4	Robert Dauny Jr.	36
\.


--
-- Data for Name: fav_director; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.fav_director (id, director, best_movie, release) FROM stdin;
1	Christopher Nolan	Interstellar	2014
2	Stanley Kubrick	The Shining	1980
3	James Cameron	Avatar	2009
\.


--
-- Data for Name: fav_movie; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.fav_movie (id, movie, release, star) FROM stdin;
1	Thor	2011	Chris Hemsworth
2	Zodiac	2007	Robert Downey Jr.
3	John Wick	2014	Keanu Reeves
\.


--
-- Name: fav_act_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.fav_act_id_seq', 4, true);


--
-- Name: fav_director_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.fav_director_id_seq', 3, true);


--
-- Name: fav_movie_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.fav_movie_id_seq', 3, true);


--
-- PostgreSQL database dump complete
--

