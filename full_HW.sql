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
-- Name: cross_join; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cross_join (
    name_act character varying(255),
    starring_in_roles integer,
    movie character varying(200),
    release integer,
    star character varying(200)
);


ALTER TABLE public.cross_join OWNER TO postgres;

--
-- Name: empty_find; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.empty_find (
    name character varying(200),
    country character varying(200)
);


ALTER TABLE public.empty_find OWNER TO postgres;

--
-- Name: fav_act; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.fav_act (
    id integer NOT NULL,
    name_act character varying(255) NOT NULL,
    starring_in_roles integer
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
-- Name: for_truncate; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.for_truncate (
    id integer NOT NULL,
    text character varying(200),
    number integer
);


ALTER TABLE public.for_truncate OWNER TO postgres;

--
-- Name: for_truncate_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.for_truncate_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.for_truncate_id_seq OWNER TO postgres;

--
-- Name: for_truncate_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.for_truncate_id_seq OWNED BY public.for_truncate.id;


--
-- Name: full_join_tour; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.full_join_tour (
    name character varying(200),
    age integer,
    country character varying(200)
);


ALTER TABLE public.full_join_tour OWNER TO postgres;

--
-- Name: inner_join; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.inner_join (
    name_act character varying(255),
    movie character varying(200)
);


ALTER TABLE public.inner_join OWNER TO postgres;

--
-- Name: movie_with_act; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.movie_with_act (
    name_act character varying(200),
    movie character varying(200)
);


ALTER TABLE public.movie_with_act OWNER TO postgres;

--
-- Name: tourist; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tourist (
    name_id integer NOT NULL,
    name character varying(200),
    age integer
);


ALTER TABLE public.tourist OWNER TO postgres;

--
-- Name: tourist_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tourist_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tourist_id_seq OWNER TO postgres;

--
-- Name: tourist_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tourist_id_seq OWNED BY public.tourist.name_id;


--
-- Name: tourist_is_visited; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tourist_is_visited (
    name character varying(200),
    country character varying(200)
);


ALTER TABLE public.tourist_is_visited OWNER TO postgres;

--
-- Name: tourist_visited; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tourist_visited (
    tourist_id integer DEFAULT 0 NOT NULL,
    visited_id integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.tourist_visited OWNER TO postgres;

--
-- Name: visited; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.visited (
    id integer NOT NULL,
    country character varying(200),
    name_id integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.visited OWNER TO postgres;

--
-- Name: visited_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.visited_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.visited_id_seq OWNER TO postgres;

--
-- Name: visited_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.visited_id_seq OWNED BY public.visited.id;


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
-- Name: for_truncate id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.for_truncate ALTER COLUMN id SET DEFAULT nextval('public.for_truncate_id_seq'::regclass);


--
-- Name: tourist name_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tourist ALTER COLUMN name_id SET DEFAULT nextval('public.tourist_id_seq'::regclass);


--
-- Name: visited id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.visited ALTER COLUMN id SET DEFAULT nextval('public.visited_id_seq'::regclass);


--
-- Data for Name: cross_join; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cross_join (name_act, starring_in_roles, movie, release, star) FROM stdin;
Johnny Depp	63	Thor	2011	Chris Hemsworth
Chris Hemsworth	34	Thor	2011	Chris Hemsworth
Leonardo Dicaprio	48	Thor	2011	Chris Hemsworth
Robert Downey Jr.	36	Thor	2011	Chris Hemsworth
Johnny Depp	63	Zodiac	2007	Robert Downey Jr.
Chris Hemsworth	34	Zodiac	2007	Robert Downey Jr.
Leonardo Dicaprio	48	Zodiac	2007	Robert Downey Jr.
Robert Downey Jr.	36	Zodiac	2007	Robert Downey Jr.
Johnny Depp	63	John Wick	2014	Keanu Reeves
Chris Hemsworth	34	John Wick	2014	Keanu Reeves
Leonardo Dicaprio	48	John Wick	2014	Keanu Reeves
Robert Downey Jr.	36	John Wick	2014	Keanu Reeves
\.


--
-- Data for Name: empty_find; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.empty_find (name, country) FROM stdin;
\N	China
\.


--
-- Data for Name: fav_act; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.fav_act (id, name_act, starring_in_roles) FROM stdin;
1	Johnny Depp	63
2	Chris Hemsworth	34
3	Leonardo Dicaprio	48
4	Robert Downey Jr.	36
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
-- Data for Name: for_truncate; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.for_truncate (id, text, number) FROM stdin;
\.


--
-- Data for Name: full_join_tour; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.full_join_tour (name, age, country) FROM stdin;
Vika	25	USA
Oleg	27	Canada
Misha	24	France
Sasha	23	Italy
Denis	26	Japan
\N	\N	China
\.


--
-- Data for Name: inner_join; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.inner_join (name_act, movie) FROM stdin;
Chris Hemsworth	Thor
Robert Downey Jr.	Zodiac
\.


--
-- Data for Name: movie_with_act; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.movie_with_act (name_act, movie) FROM stdin;
Robert Downey Jr.	Iron Men
\.


--
-- Data for Name: tourist; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tourist (name_id, name, age) FROM stdin;
1	Oleg	27
2	Sasha	23
3	Vika	25
4	Misha	24
5	Denis	26
\.


--
-- Data for Name: tourist_is_visited; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tourist_is_visited (name, country) FROM stdin;
Vika	USA
Oleg	Canada
Misha	France
Sasha	Italy
Denis	Japan
\.


--
-- Data for Name: tourist_visited; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tourist_visited (tourist_id, visited_id) FROM stdin;
1	3
2	1
3	5
4	4
5	2
\.


--
-- Data for Name: visited; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.visited (id, country, name_id) FROM stdin;
1	USA	3
2	Canada	1
3	France	4
4	Italy	2
5	Japan	5
6	China	0
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
-- Name: for_truncate_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.for_truncate_id_seq', 1, true);


--
-- Name: tourist_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tourist_id_seq', 5, true);


--
-- Name: visited_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.visited_id_seq', 6, true);


--
-- Name: fav_act fav_act_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fav_act
    ADD CONSTRAINT fav_act_id PRIMARY KEY (name_act);


--
-- Name: tourist tourist_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tourist
    ADD CONSTRAINT tourist_pkey PRIMARY KEY (name_id);


--
-- Name: visited visited_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.visited
    ADD CONSTRAINT visited_pkey PRIMARY KEY (id);


--
-- Name: movie_with_act movie_with_act_name_act_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.movie_with_act
    ADD CONSTRAINT movie_with_act_name_act_fkey FOREIGN KEY (name_act) REFERENCES public.fav_act(name_act);


--
-- PostgreSQL database dump complete
--

