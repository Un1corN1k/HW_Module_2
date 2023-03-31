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
-- Name: authors; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.authors (
    author_id integer NOT NULL,
    name character varying(200) DEFAULT 'lore'::character varying NOT NULL,
    year date DEFAULT '1970-01-01'::date NOT NULL
);


ALTER TABLE public.authors OWNER TO postgres;

--
-- Name: authors_books; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.authors_books (
    author_id integer DEFAULT 0 NOT NULL,
    book_id integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.authors_books OWNER TO postgres;

--
-- Name: authors_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.authors_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.authors_id_seq OWNER TO postgres;

--
-- Name: authors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.authors_id_seq OWNED BY public.authors.author_id;


--
-- Name: books; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.books (
    book_id integer NOT NULL,
    title character varying(200) DEFAULT 'noname'::character varying NOT NULL,
    genre_id integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.books OWNER TO postgres;

--
-- Name: books_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.books_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.books_id_seq OWNER TO postgres;

--
-- Name: books_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.books_id_seq OWNED BY public.books.book_id;


--
-- Name: genres; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.genres (
    genre_id integer NOT NULL,
    genre character varying(100) DEFAULT 'unknown'::character varying NOT NULL
);


ALTER TABLE public.genres OWNER TO postgres;

--
-- Name: genres_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.genres_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.genres_id_seq OWNER TO postgres;

--
-- Name: genres_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.genres_id_seq OWNED BY public.genres.genre_id;


--
-- Name: tree; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tree (
    id integer NOT NULL,
    pid integer,
    full_name character varying(200)
);


ALTER TABLE public.tree OWNER TO postgres;

--
-- Name: tree_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tree_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tree_id_seq OWNER TO postgres;

--
-- Name: tree_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tree_id_seq OWNED BY public.tree.id;


--
-- Name: vocabulary; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.vocabulary (
    id integer NOT NULL,
    name character varying(255),
    info text
);


ALTER TABLE public.vocabulary OWNER TO postgres;

--
-- Name: vocabulary_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.vocabulary_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.vocabulary_id_seq OWNER TO postgres;

--
-- Name: vocabulary_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.vocabulary_id_seq OWNED BY public.vocabulary.id;


--
-- Name: word; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.word (
    id integer NOT NULL,
    word character varying(255),
    vocabulary_id integer
);


ALTER TABLE public.word OWNER TO postgres;

--
-- Name: word_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.word_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.word_id_seq OWNER TO postgres;

--
-- Name: word_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.word_id_seq OWNED BY public.word.id;


--
-- Name: authors author_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.authors ALTER COLUMN author_id SET DEFAULT nextval('public.authors_id_seq'::regclass);


--
-- Name: books book_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.books ALTER COLUMN book_id SET DEFAULT nextval('public.books_id_seq'::regclass);


--
-- Name: genres genre_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.genres ALTER COLUMN genre_id SET DEFAULT nextval('public.genres_id_seq'::regclass);


--
-- Name: tree id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tree ALTER COLUMN id SET DEFAULT nextval('public.tree_id_seq'::regclass);


--
-- Name: vocabulary id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vocabulary ALTER COLUMN id SET DEFAULT nextval('public.vocabulary_id_seq'::regclass);


--
-- Name: word id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.word ALTER COLUMN id SET DEFAULT nextval('public.word_id_seq'::regclass);


--
-- Data for Name: authors; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.authors (author_id, name, year) FROM stdin;
1	”аҐ­Є ѓҐаЎҐав	1970-01-01
2	ЊЁе Ё« Ѓг«Ј Є®ў	1970-01-01
3	†¤ҐЄ ‹®­¤®­	1970-01-01
4	€®Ј ­ ѓсвҐ	1970-01-01
5	ђ®ЎҐав • ©­« ©­	1970-01-01
\.


--
-- Data for Name: authors_books; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.authors_books (author_id, book_id) FROM stdin;
1	4
2	1
3	3
4	2
\.


--
-- Data for Name: books; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.books (book_id, title, genre_id) FROM stdin;
1	Њ бвҐа Ё Њ аЈ аЁв 	2
2	” гбв	0
3	ЃҐ«л© Є«лЄ	3
4	„о­ 	1
5	‚®©­  Ё ¬Ёа	2
\.


--
-- Data for Name: genres; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.genres (genre_id, genre) FROM stdin;
1	SF
2	novel
3	story
4	horror
\.


--
-- Data for Name: tree; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tree (id, pid, full_name) FROM stdin;
1	0	Denis
2	1	Vitalii Denisovich
3	2	Oleg Vitalievich
4	3	Olegovich
5	4	Sasha
\.


--
-- Data for Name: vocabulary; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.vocabulary (id, name, info) FROM stdin;
\.


--
-- Data for Name: word; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.word (id, word, vocabulary_id) FROM stdin;
1	apple	1
2	pear	1
3	apricot	1
4	orange	1
5	bmw	2
6	opel	2
\.


--
-- Name: authors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.authors_id_seq', 5, true);


--
-- Name: books_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.books_id_seq', 5, true);


--
-- Name: genres_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.genres_id_seq', 4, true);


--
-- Name: tree_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tree_id_seq', 5, true);


--
-- Name: vocabulary_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.vocabulary_id_seq', 1, false);


--
-- Name: word_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.word_id_seq', 6, true);


--
-- Name: authors authors_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.authors
    ADD CONSTRAINT authors_pkey PRIMARY KEY (author_id);


--
-- Name: books books_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.books
    ADD CONSTRAINT books_pkey PRIMARY KEY (book_id);


--
-- Name: genres genres_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.genres
    ADD CONSTRAINT genres_pkey PRIMARY KEY (genre_id);


--
-- PostgreSQL database dump complete
--

