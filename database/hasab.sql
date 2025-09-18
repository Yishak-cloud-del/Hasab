--
-- PostgreSQL database dump
--

\restrict ev36D5ONeVyaZ1bdVrB09Zf2MrQnoLToNS2mJHK4xbK2VN0qggIIw7pKtzd4WPq

-- Dumped from database version 17.6
-- Dumped by pg_dump version 17.6

-- Started on 2025-09-17 06:30:02

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 5 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: hasab
--

-- *not* creating schema, since initdb creates it


ALTER SCHEMA public OWNER TO hasab;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 246 (class 1259 OID 16642)
-- Name: activity_log; Type: TABLE; Schema: public; Owner: hasab
--

CREATE TABLE public.activity_log (
    id integer NOT NULL,
    user_id integer,
    action character varying(100) NOT NULL,
    created_at timestamp without time zone DEFAULT now()
);


ALTER TABLE public.activity_log OWNER TO hasab;

--
-- TOC entry 245 (class 1259 OID 16641)
-- Name: activity_log_id_seq; Type: SEQUENCE; Schema: public; Owner: hasab
--

CREATE SEQUENCE public.activity_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.activity_log_id_seq OWNER TO hasab;

--
-- TOC entry 5075 (class 0 OID 0)
-- Dependencies: 245
-- Name: activity_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hasab
--

ALTER SEQUENCE public.activity_log_id_seq OWNED BY public.activity_log.id;


--
-- TOC entry 226 (class 1259 OID 16476)
-- Name: amharic_articles; Type: TABLE; Schema: public; Owner: hasab
--

CREATE TABLE public.amharic_articles (
    id integer NOT NULL,
    title text NOT NULL,
    content text NOT NULL,
    category_id integer,
    image text,
    is_featured integer DEFAULT 0,
    is_breaking integer DEFAULT 0,
    view_count integer DEFAULT 0,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.amharic_articles OWNER TO hasab;

--
-- TOC entry 225 (class 1259 OID 16475)
-- Name: amharic_articles_id_seq; Type: SEQUENCE; Schema: public; Owner: hasab
--

CREATE SEQUENCE public.amharic_articles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.amharic_articles_id_seq OWNER TO hasab;

--
-- TOC entry 5076 (class 0 OID 0)
-- Dependencies: 225
-- Name: amharic_articles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hasab
--

ALTER SEQUENCE public.amharic_articles_id_seq OWNED BY public.amharic_articles.id;


--
-- TOC entry 222 (class 1259 OID 16449)
-- Name: amharic_categories; Type: TABLE; Schema: public; Owner: hasab
--

CREATE TABLE public.amharic_categories (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.amharic_categories OWNER TO hasab;

--
-- TOC entry 221 (class 1259 OID 16448)
-- Name: amharic_categories_id_seq; Type: SEQUENCE; Schema: public; Owner: hasab
--

CREATE SEQUENCE public.amharic_categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.amharic_categories_id_seq OWNER TO hasab;

--
-- TOC entry 5077 (class 0 OID 0)
-- Dependencies: 221
-- Name: amharic_categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hasab
--

ALTER SEQUENCE public.amharic_categories_id_seq OWNED BY public.amharic_categories.id;


--
-- TOC entry 224 (class 1259 OID 16458)
-- Name: articles; Type: TABLE; Schema: public; Owner: hasab
--

CREATE TABLE public.articles (
    id integer NOT NULL,
    title text NOT NULL,
    content text NOT NULL,
    category_id integer,
    image text,
    is_featured integer DEFAULT 0,
    is_breaking integer DEFAULT 0,
    view_count integer DEFAULT 0,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.articles OWNER TO hasab;

--
-- TOC entry 223 (class 1259 OID 16457)
-- Name: articles_id_seq; Type: SEQUENCE; Schema: public; Owner: hasab
--

CREATE SEQUENCE public.articles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.articles_id_seq OWNER TO hasab;

--
-- TOC entry 5078 (class 0 OID 0)
-- Dependencies: 223
-- Name: articles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hasab
--

ALTER SEQUENCE public.articles_id_seq OWNED BY public.articles.id;


--
-- TOC entry 220 (class 1259 OID 16440)
-- Name: categories; Type: TABLE; Schema: public; Owner: hasab
--

CREATE TABLE public.categories (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.categories OWNER TO hasab;

--
-- TOC entry 219 (class 1259 OID 16439)
-- Name: categories_id_seq; Type: SEQUENCE; Schema: public; Owner: hasab
--

CREATE SEQUENCE public.categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.categories_id_seq OWNER TO hasab;

--
-- TOC entry 5079 (class 0 OID 0)
-- Dependencies: 219
-- Name: categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hasab
--

ALTER SEQUENCE public.categories_id_seq OWNED BY public.categories.id;


--
-- TOC entry 238 (class 1259 OID 16548)
-- Name: home_banner; Type: TABLE; Schema: public; Owner: hasab
--

CREATE TABLE public.home_banner (
    id integer NOT NULL,
    title text NOT NULL,
    description text,
    image text NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.home_banner OWNER TO hasab;

--
-- TOC entry 237 (class 1259 OID 16547)
-- Name: home_banner_id_seq; Type: SEQUENCE; Schema: public; Owner: hasab
--

CREATE SEQUENCE public.home_banner_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.home_banner_id_seq OWNER TO hasab;

--
-- TOC entry 5080 (class 0 OID 0)
-- Dependencies: 237
-- Name: home_banner_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hasab
--

ALTER SEQUENCE public.home_banner_id_seq OWNED BY public.home_banner.id;


--
-- TOC entry 230 (class 1259 OID 16506)
-- Name: home_page; Type: TABLE; Schema: public; Owner: hasab
--

CREATE TABLE public.home_page (
    id integer NOT NULL,
    youtube_id character varying(32) NOT NULL,
    title text,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.home_page OWNER TO hasab;

--
-- TOC entry 229 (class 1259 OID 16505)
-- Name: home_page_id_seq; Type: SEQUENCE; Schema: public; Owner: hasab
--

CREATE SEQUENCE public.home_page_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.home_page_id_seq OWNER TO hasab;

--
-- TOC entry 5081 (class 0 OID 0)
-- Dependencies: 229
-- Name: home_page_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hasab
--

ALTER SEQUENCE public.home_page_id_seq OWNED BY public.home_page.id;


--
-- TOC entry 240 (class 1259 OID 16558)
-- Name: home_page_u; Type: TABLE; Schema: public; Owner: hasab
--

CREATE TABLE public.home_page_u (
    id integer NOT NULL,
    title text NOT NULL,
    description text,
    image text NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.home_page_u OWNER TO hasab;

--
-- TOC entry 239 (class 1259 OID 16557)
-- Name: home_page_u_id_seq; Type: SEQUENCE; Schema: public; Owner: hasab
--

CREATE SEQUENCE public.home_page_u_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.home_page_u_id_seq OWNER TO hasab;

--
-- TOC entry 5082 (class 0 OID 0)
-- Dependencies: 239
-- Name: home_page_u_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hasab
--

ALTER SEQUENCE public.home_page_u_id_seq OWNED BY public.home_page_u.id;


--
-- TOC entry 234 (class 1259 OID 16528)
-- Name: inputs; Type: TABLE; Schema: public; Owner: hasab
--

CREATE TABLE public.inputs (
    id integer NOT NULL,
    text text NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.inputs OWNER TO hasab;

--
-- TOC entry 233 (class 1259 OID 16527)
-- Name: inputs_id_seq; Type: SEQUENCE; Schema: public; Owner: hasab
--

CREATE SEQUENCE public.inputs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.inputs_id_seq OWNER TO hasab;

--
-- TOC entry 5083 (class 0 OID 0)
-- Dependencies: 233
-- Name: inputs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hasab
--

ALTER SEQUENCE public.inputs_id_seq OWNED BY public.inputs.id;


--
-- TOC entry 232 (class 1259 OID 16518)
-- Name: links; Type: TABLE; Schema: public; Owner: hasab
--

CREATE TABLE public.links (
    id integer NOT NULL,
    title text NOT NULL,
    url text,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.links OWNER TO hasab;

--
-- TOC entry 231 (class 1259 OID 16517)
-- Name: links_id_seq; Type: SEQUENCE; Schema: public; Owner: hasab
--

CREATE SEQUENCE public.links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.links_id_seq OWNER TO hasab;

--
-- TOC entry 5084 (class 0 OID 0)
-- Dependencies: 231
-- Name: links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hasab
--

ALTER SEQUENCE public.links_id_seq OWNED BY public.links.id;


--
-- TOC entry 242 (class 1259 OID 16568)
-- Name: my_articles; Type: TABLE; Schema: public; Owner: hasab
--

CREATE TABLE public.my_articles (
    id integer NOT NULL,
    title text NOT NULL,
    description text NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.my_articles OWNER TO hasab;

--
-- TOC entry 241 (class 1259 OID 16567)
-- Name: my_articles_id_seq; Type: SEQUENCE; Schema: public; Owner: hasab
--

CREATE SEQUENCE public.my_articles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.my_articles_id_seq OWNER TO hasab;

--
-- TOC entry 5085 (class 0 OID 0)
-- Dependencies: 241
-- Name: my_articles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hasab
--

ALTER SEQUENCE public.my_articles_id_seq OWNED BY public.my_articles.id;


--
-- TOC entry 218 (class 1259 OID 16413)
-- Name: news; Type: TABLE; Schema: public; Owner: hasab
--

CREATE TABLE public.news (
    id integer NOT NULL,
    title text NOT NULL,
    description text,
    content text NOT NULL,
    image_url text NOT NULL,
    author text DEFAULT 'Admin'::text,
    published_at timestamp without time zone DEFAULT now()
);


ALTER TABLE public.news OWNER TO hasab;

--
-- TOC entry 217 (class 1259 OID 16412)
-- Name: news_id_seq; Type: SEQUENCE; Schema: public; Owner: hasab
--

CREATE SEQUENCE public.news_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.news_id_seq OWNER TO hasab;

--
-- TOC entry 5086 (class 0 OID 0)
-- Dependencies: 217
-- Name: news_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hasab
--

ALTER SEQUENCE public.news_id_seq OWNED BY public.news.id;


--
-- TOC entry 236 (class 1259 OID 16538)
-- Name: title_images; Type: TABLE; Schema: public; Owner: hasab
--

CREATE TABLE public.title_images (
    id integer NOT NULL,
    title text NOT NULL,
    image text NOT NULL,
    description text,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.title_images OWNER TO hasab;

--
-- TOC entry 235 (class 1259 OID 16537)
-- Name: title_images_id_seq; Type: SEQUENCE; Schema: public; Owner: hasab
--

CREATE SEQUENCE public.title_images_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.title_images_id_seq OWNER TO hasab;

--
-- TOC entry 5087 (class 0 OID 0)
-- Dependencies: 235
-- Name: title_images_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hasab
--

ALTER SEQUENCE public.title_images_id_seq OWNED BY public.title_images.id;


--
-- TOC entry 244 (class 1259 OID 16630)
-- Name: users; Type: TABLE; Schema: public; Owner: hasab
--

CREATE TABLE public.users (
    id integer NOT NULL,
    username character varying(50) NOT NULL,
    email character varying(100) NOT NULL,
    password character varying(200) NOT NULL,
    created_at timestamp without time zone DEFAULT now()
);


ALTER TABLE public.users OWNER TO hasab;

--
-- TOC entry 243 (class 1259 OID 16629)
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: hasab
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.users_id_seq OWNER TO hasab;

--
-- TOC entry 5088 (class 0 OID 0)
-- Dependencies: 243
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hasab
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- TOC entry 228 (class 1259 OID 16494)
-- Name: videos; Type: TABLE; Schema: public; Owner: hasab
--

CREATE TABLE public.videos (
    id integer NOT NULL,
    youtube_id character varying(32) NOT NULL,
    title text,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.videos OWNER TO hasab;

--
-- TOC entry 227 (class 1259 OID 16493)
-- Name: videos_id_seq; Type: SEQUENCE; Schema: public; Owner: hasab
--

CREATE SEQUENCE public.videos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.videos_id_seq OWNER TO hasab;

--
-- TOC entry 5089 (class 0 OID 0)
-- Dependencies: 227
-- Name: videos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hasab
--

ALTER SEQUENCE public.videos_id_seq OWNED BY public.videos.id;


--
-- TOC entry 4847 (class 2604 OID 16645)
-- Name: activity_log id; Type: DEFAULT; Schema: public; Owner: hasab
--

ALTER TABLE ONLY public.activity_log ALTER COLUMN id SET DEFAULT nextval('public.activity_log_id_seq'::regclass);


--
-- TOC entry 4824 (class 2604 OID 16479)
-- Name: amharic_articles id; Type: DEFAULT; Schema: public; Owner: hasab
--

ALTER TABLE ONLY public.amharic_articles ALTER COLUMN id SET DEFAULT nextval('public.amharic_articles_id_seq'::regclass);


--
-- TOC entry 4818 (class 2604 OID 16452)
-- Name: amharic_categories id; Type: DEFAULT; Schema: public; Owner: hasab
--

ALTER TABLE ONLY public.amharic_categories ALTER COLUMN id SET DEFAULT nextval('public.amharic_categories_id_seq'::regclass);


--
-- TOC entry 4819 (class 2604 OID 16461)
-- Name: articles id; Type: DEFAULT; Schema: public; Owner: hasab
--

ALTER TABLE ONLY public.articles ALTER COLUMN id SET DEFAULT nextval('public.articles_id_seq'::regclass);


--
-- TOC entry 4817 (class 2604 OID 16443)
-- Name: categories id; Type: DEFAULT; Schema: public; Owner: hasab
--

ALTER TABLE ONLY public.categories ALTER COLUMN id SET DEFAULT nextval('public.categories_id_seq'::regclass);


--
-- TOC entry 4839 (class 2604 OID 16551)
-- Name: home_banner id; Type: DEFAULT; Schema: public; Owner: hasab
--

ALTER TABLE ONLY public.home_banner ALTER COLUMN id SET DEFAULT nextval('public.home_banner_id_seq'::regclass);


--
-- TOC entry 4831 (class 2604 OID 16509)
-- Name: home_page id; Type: DEFAULT; Schema: public; Owner: hasab
--

ALTER TABLE ONLY public.home_page ALTER COLUMN id SET DEFAULT nextval('public.home_page_id_seq'::regclass);


--
-- TOC entry 4841 (class 2604 OID 16561)
-- Name: home_page_u id; Type: DEFAULT; Schema: public; Owner: hasab
--

ALTER TABLE ONLY public.home_page_u ALTER COLUMN id SET DEFAULT nextval('public.home_page_u_id_seq'::regclass);


--
-- TOC entry 4835 (class 2604 OID 16531)
-- Name: inputs id; Type: DEFAULT; Schema: public; Owner: hasab
--

ALTER TABLE ONLY public.inputs ALTER COLUMN id SET DEFAULT nextval('public.inputs_id_seq'::regclass);


--
-- TOC entry 4833 (class 2604 OID 16521)
-- Name: links id; Type: DEFAULT; Schema: public; Owner: hasab
--

ALTER TABLE ONLY public.links ALTER COLUMN id SET DEFAULT nextval('public.links_id_seq'::regclass);


--
-- TOC entry 4843 (class 2604 OID 16571)
-- Name: my_articles id; Type: DEFAULT; Schema: public; Owner: hasab
--

ALTER TABLE ONLY public.my_articles ALTER COLUMN id SET DEFAULT nextval('public.my_articles_id_seq'::regclass);


--
-- TOC entry 4814 (class 2604 OID 16416)
-- Name: news id; Type: DEFAULT; Schema: public; Owner: hasab
--

ALTER TABLE ONLY public.news ALTER COLUMN id SET DEFAULT nextval('public.news_id_seq'::regclass);


--
-- TOC entry 4837 (class 2604 OID 16541)
-- Name: title_images id; Type: DEFAULT; Schema: public; Owner: hasab
--

ALTER TABLE ONLY public.title_images ALTER COLUMN id SET DEFAULT nextval('public.title_images_id_seq'::regclass);


--
-- TOC entry 4845 (class 2604 OID 16633)
-- Name: users id; Type: DEFAULT; Schema: public; Owner: hasab
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- TOC entry 4829 (class 2604 OID 16497)
-- Name: videos id; Type: DEFAULT; Schema: public; Owner: hasab
--

ALTER TABLE ONLY public.videos ALTER COLUMN id SET DEFAULT nextval('public.videos_id_seq'::regclass);


--
-- TOC entry 5068 (class 0 OID 16642)
-- Dependencies: 246
-- Data for Name: activity_log; Type: TABLE DATA; Schema: public; Owner: hasab
--

COPY public.activity_log (id, user_id, action, created_at) FROM stdin;
\.


--
-- TOC entry 5048 (class 0 OID 16476)
-- Dependencies: 226
-- Data for Name: amharic_articles; Type: TABLE DATA; Schema: public; Owner: hasab
--

COPY public.amharic_articles (id, title, content, category_id, image, is_featured, is_breaking, view_count, created_at) FROM stdin;
\.


--
-- TOC entry 5044 (class 0 OID 16449)
-- Dependencies: 222
-- Data for Name: amharic_categories; Type: TABLE DATA; Schema: public; Owner: hasab
--

COPY public.amharic_categories (id, name) FROM stdin;
\.


--
-- TOC entry 5046 (class 0 OID 16458)
-- Dependencies: 224
-- Data for Name: articles; Type: TABLE DATA; Schema: public; Owner: hasab
--

COPY public.articles (id, title, content, category_id, image, is_featured, is_breaking, view_count, created_at) FROM stdin;
7	“Red Devils Go Missing in Manchester – Last Seen Chasing Shadows of City Players”	In this week’s clash, Manchester City turned the Etihad Stadium into their private training ground with a casual 3–0 win. United fans were advised to bring binoculars since their team barely touched the ball. Sources say even the match ball has applied for City citizenship, refusing to return to United’s half.\r\n\r\nExperts confirm the only running United players did was chasing City jerseys… and hope.	2	1758024662834.jpg	0	0	0	2025-09-16 05:11:02.835701
5	One Thing Right	I've been at the wrong place at the wrong time\r\nChasin' all the wrong things most of my life\r\nBeen every kinda lost that you can't find\r\nBut I got one thing right\r\nBeen the kind of guy girls' mamas don't like\r\nRunnin' with the wrong crowd on the wrong nights\r\n'Cause I've been wrong about a million times\r\nBut I got one thing right, you	2	1758026408732.jpg	0	0	0	2025-09-16 04:44:01.929622
\.


--
-- TOC entry 5042 (class 0 OID 16440)
-- Dependencies: 220
-- Data for Name: categories; Type: TABLE DATA; Schema: public; Owner: hasab
--

COPY public.categories (id, name) FROM stdin;
1	future
2	sport
3	hasab daily
4	entertainment
5	politics
\.


--
-- TOC entry 5060 (class 0 OID 16548)
-- Dependencies: 238
-- Data for Name: home_banner; Type: TABLE DATA; Schema: public; Owner: hasab
--

COPY public.home_banner (id, title, description, image, created_at) FROM stdin;
\.


--
-- TOC entry 5052 (class 0 OID 16506)
-- Dependencies: 230
-- Data for Name: home_page; Type: TABLE DATA; Schema: public; Owner: hasab
--

COPY public.home_page (id, youtube_id, title, created_at) FROM stdin;
\.


--
-- TOC entry 5062 (class 0 OID 16558)
-- Dependencies: 240
-- Data for Name: home_page_u; Type: TABLE DATA; Schema: public; Owner: hasab
--

COPY public.home_page_u (id, title, description, image, created_at) FROM stdin;
\.


--
-- TOC entry 5056 (class 0 OID 16528)
-- Dependencies: 234
-- Data for Name: inputs; Type: TABLE DATA; Schema: public; Owner: hasab
--

COPY public.inputs (id, text, created_at) FROM stdin;
\.


--
-- TOC entry 5054 (class 0 OID 16518)
-- Dependencies: 232
-- Data for Name: links; Type: TABLE DATA; Schema: public; Owner: hasab
--

COPY public.links (id, title, url, created_at) FROM stdin;
\.


--
-- TOC entry 5064 (class 0 OID 16568)
-- Dependencies: 242
-- Data for Name: my_articles; Type: TABLE DATA; Schema: public; Owner: hasab
--

COPY public.my_articles (id, title, description, created_at) FROM stdin;
\.


--
-- TOC entry 5040 (class 0 OID 16413)
-- Dependencies: 218
-- Data for Name: news; Type: TABLE DATA; Schema: public; Owner: hasab
--

COPY public.news (id, title, description, content, image_url, author, published_at) FROM stdin;
1	Test News	Short description	Full content of test news	https://res.cloudinary.com/.../image.jpg	Admin	2025-09-03 01:25:26.528551
2	Test News	Short description	Full content of test news	https://res.cloudinary.com/.../image.jpg	Admin	2025-09-04 01:58:22.965423
\.


--
-- TOC entry 5058 (class 0 OID 16538)
-- Dependencies: 236
-- Data for Name: title_images; Type: TABLE DATA; Schema: public; Owner: hasab
--

COPY public.title_images (id, title, image, description, created_at) FROM stdin;
\.


--
-- TOC entry 5066 (class 0 OID 16630)
-- Dependencies: 244
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: hasab
--

COPY public.users (id, username, email, password, created_at) FROM stdin;
\.


--
-- TOC entry 5050 (class 0 OID 16494)
-- Dependencies: 228
-- Data for Name: videos; Type: TABLE DATA; Schema: public; Owner: hasab
--

COPY public.videos (id, youtube_id, title, created_at) FROM stdin;
\.


--
-- TOC entry 5090 (class 0 OID 0)
-- Dependencies: 245
-- Name: activity_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hasab
--

SELECT pg_catalog.setval('public.activity_log_id_seq', 1, false);


--
-- TOC entry 5091 (class 0 OID 0)
-- Dependencies: 225
-- Name: amharic_articles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hasab
--

SELECT pg_catalog.setval('public.amharic_articles_id_seq', 1, false);


--
-- TOC entry 5092 (class 0 OID 0)
-- Dependencies: 221
-- Name: amharic_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hasab
--

SELECT pg_catalog.setval('public.amharic_categories_id_seq', 1, false);


--
-- TOC entry 5093 (class 0 OID 0)
-- Dependencies: 223
-- Name: articles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hasab
--

SELECT pg_catalog.setval('public.articles_id_seq', 7, true);


--
-- TOC entry 5094 (class 0 OID 0)
-- Dependencies: 219
-- Name: categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hasab
--

SELECT pg_catalog.setval('public.categories_id_seq', 5, true);


--
-- TOC entry 5095 (class 0 OID 0)
-- Dependencies: 237
-- Name: home_banner_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hasab
--

SELECT pg_catalog.setval('public.home_banner_id_seq', 1, false);


--
-- TOC entry 5096 (class 0 OID 0)
-- Dependencies: 229
-- Name: home_page_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hasab
--

SELECT pg_catalog.setval('public.home_page_id_seq', 1, false);


--
-- TOC entry 5097 (class 0 OID 0)
-- Dependencies: 239
-- Name: home_page_u_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hasab
--

SELECT pg_catalog.setval('public.home_page_u_id_seq', 1, false);


--
-- TOC entry 5098 (class 0 OID 0)
-- Dependencies: 233
-- Name: inputs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hasab
--

SELECT pg_catalog.setval('public.inputs_id_seq', 1, false);


--
-- TOC entry 5099 (class 0 OID 0)
-- Dependencies: 231
-- Name: links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hasab
--

SELECT pg_catalog.setval('public.links_id_seq', 1, false);


--
-- TOC entry 5100 (class 0 OID 0)
-- Dependencies: 241
-- Name: my_articles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hasab
--

SELECT pg_catalog.setval('public.my_articles_id_seq', 1, false);


--
-- TOC entry 5101 (class 0 OID 0)
-- Dependencies: 217
-- Name: news_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hasab
--

SELECT pg_catalog.setval('public.news_id_seq', 2, true);


--
-- TOC entry 5102 (class 0 OID 0)
-- Dependencies: 235
-- Name: title_images_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hasab
--

SELECT pg_catalog.setval('public.title_images_id_seq', 1, false);


--
-- TOC entry 5103 (class 0 OID 0)
-- Dependencies: 243
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hasab
--

SELECT pg_catalog.setval('public.users_id_seq', 1, false);


--
-- TOC entry 5104 (class 0 OID 0)
-- Dependencies: 227
-- Name: videos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hasab
--

SELECT pg_catalog.setval('public.videos_id_seq', 1, false);


--
-- TOC entry 4890 (class 2606 OID 16648)
-- Name: activity_log activity_log_pkey; Type: CONSTRAINT; Schema: public; Owner: hasab
--

ALTER TABLE ONLY public.activity_log
    ADD CONSTRAINT activity_log_pkey PRIMARY KEY (id);


--
-- TOC entry 4862 (class 2606 OID 16487)
-- Name: amharic_articles amharic_articles_pkey; Type: CONSTRAINT; Schema: public; Owner: hasab
--

ALTER TABLE ONLY public.amharic_articles
    ADD CONSTRAINT amharic_articles_pkey PRIMARY KEY (id);


--
-- TOC entry 4856 (class 2606 OID 16456)
-- Name: amharic_categories amharic_categories_name_key; Type: CONSTRAINT; Schema: public; Owner: hasab
--

ALTER TABLE ONLY public.amharic_categories
    ADD CONSTRAINT amharic_categories_name_key UNIQUE (name);


--
-- TOC entry 4858 (class 2606 OID 16454)
-- Name: amharic_categories amharic_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: hasab
--

ALTER TABLE ONLY public.amharic_categories
    ADD CONSTRAINT amharic_categories_pkey PRIMARY KEY (id);


--
-- TOC entry 4860 (class 2606 OID 16469)
-- Name: articles articles_pkey; Type: CONSTRAINT; Schema: public; Owner: hasab
--

ALTER TABLE ONLY public.articles
    ADD CONSTRAINT articles_pkey PRIMARY KEY (id);


--
-- TOC entry 4852 (class 2606 OID 16447)
-- Name: categories categories_name_key; Type: CONSTRAINT; Schema: public; Owner: hasab
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_name_key UNIQUE (name);


--
-- TOC entry 4854 (class 2606 OID 16445)
-- Name: categories categories_pkey; Type: CONSTRAINT; Schema: public; Owner: hasab
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);


--
-- TOC entry 4878 (class 2606 OID 16556)
-- Name: home_banner home_banner_pkey; Type: CONSTRAINT; Schema: public; Owner: hasab
--

ALTER TABLE ONLY public.home_banner
    ADD CONSTRAINT home_banner_pkey PRIMARY KEY (id);


--
-- TOC entry 4868 (class 2606 OID 16514)
-- Name: home_page home_page_pkey; Type: CONSTRAINT; Schema: public; Owner: hasab
--

ALTER TABLE ONLY public.home_page
    ADD CONSTRAINT home_page_pkey PRIMARY KEY (id);


--
-- TOC entry 4880 (class 2606 OID 16566)
-- Name: home_page_u home_page_u_pkey; Type: CONSTRAINT; Schema: public; Owner: hasab
--

ALTER TABLE ONLY public.home_page_u
    ADD CONSTRAINT home_page_u_pkey PRIMARY KEY (id);


--
-- TOC entry 4870 (class 2606 OID 16516)
-- Name: home_page home_page_youtube_id_key; Type: CONSTRAINT; Schema: public; Owner: hasab
--

ALTER TABLE ONLY public.home_page
    ADD CONSTRAINT home_page_youtube_id_key UNIQUE (youtube_id);


--
-- TOC entry 4874 (class 2606 OID 16536)
-- Name: inputs inputs_pkey; Type: CONSTRAINT; Schema: public; Owner: hasab
--

ALTER TABLE ONLY public.inputs
    ADD CONSTRAINT inputs_pkey PRIMARY KEY (id);


--
-- TOC entry 4872 (class 2606 OID 16526)
-- Name: links links_pkey; Type: CONSTRAINT; Schema: public; Owner: hasab
--

ALTER TABLE ONLY public.links
    ADD CONSTRAINT links_pkey PRIMARY KEY (id);


--
-- TOC entry 4882 (class 2606 OID 16576)
-- Name: my_articles my_articles_pkey; Type: CONSTRAINT; Schema: public; Owner: hasab
--

ALTER TABLE ONLY public.my_articles
    ADD CONSTRAINT my_articles_pkey PRIMARY KEY (id);


--
-- TOC entry 4850 (class 2606 OID 16422)
-- Name: news news_pkey; Type: CONSTRAINT; Schema: public; Owner: hasab
--

ALTER TABLE ONLY public.news
    ADD CONSTRAINT news_pkey PRIMARY KEY (id);


--
-- TOC entry 4876 (class 2606 OID 16546)
-- Name: title_images title_images_pkey; Type: CONSTRAINT; Schema: public; Owner: hasab
--

ALTER TABLE ONLY public.title_images
    ADD CONSTRAINT title_images_pkey PRIMARY KEY (id);


--
-- TOC entry 4884 (class 2606 OID 16640)
-- Name: users users_email_key; Type: CONSTRAINT; Schema: public; Owner: hasab
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key UNIQUE (email);


--
-- TOC entry 4886 (class 2606 OID 16636)
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: hasab
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- TOC entry 4888 (class 2606 OID 16638)
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: hasab
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- TOC entry 4864 (class 2606 OID 16502)
-- Name: videos videos_pkey; Type: CONSTRAINT; Schema: public; Owner: hasab
--

ALTER TABLE ONLY public.videos
    ADD CONSTRAINT videos_pkey PRIMARY KEY (id);


--
-- TOC entry 4866 (class 2606 OID 16504)
-- Name: videos videos_youtube_id_key; Type: CONSTRAINT; Schema: public; Owner: hasab
--

ALTER TABLE ONLY public.videos
    ADD CONSTRAINT videos_youtube_id_key UNIQUE (youtube_id);


--
-- TOC entry 4893 (class 2606 OID 16649)
-- Name: activity_log activity_log_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: hasab
--

ALTER TABLE ONLY public.activity_log
    ADD CONSTRAINT activity_log_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- TOC entry 4892 (class 2606 OID 16488)
-- Name: amharic_articles amharic_articles_category_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: hasab
--

ALTER TABLE ONLY public.amharic_articles
    ADD CONSTRAINT amharic_articles_category_id_fkey FOREIGN KEY (category_id) REFERENCES public.amharic_categories(id) ON DELETE SET NULL;


--
-- TOC entry 4891 (class 2606 OID 16470)
-- Name: articles articles_category_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: hasab
--

ALTER TABLE ONLY public.articles
    ADD CONSTRAINT articles_category_id_fkey FOREIGN KEY (category_id) REFERENCES public.categories(id) ON DELETE SET NULL;


--
-- TOC entry 5074 (class 0 OID 0)
-- Dependencies: 246
-- Name: TABLE activity_log; Type: ACL; Schema: public; Owner: hasab
--

REVOKE ALL ON TABLE public.activity_log FROM hasab;
GRANT REFERENCES,TRIGGER,TRUNCATE,MAINTAIN ON TABLE public.activity_log TO hasab;
GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE public.activity_log TO hasab WITH GRANT OPTION;


--
-- TOC entry 2115 (class 826 OID 16427)
-- Name: DEFAULT PRIVILEGES FOR SEQUENCES; Type: DEFAULT ACL; Schema: public; Owner: hasab
--

ALTER DEFAULT PRIVILEGES FOR ROLE hasab IN SCHEMA public GRANT ALL ON SEQUENCES TO hasab;


--
-- TOC entry 2114 (class 826 OID 16426)
-- Name: DEFAULT PRIVILEGES FOR TABLES; Type: DEFAULT ACL; Schema: public; Owner: hasab
--

ALTER DEFAULT PRIVILEGES FOR ROLE hasab IN SCHEMA public GRANT SELECT,INSERT,DELETE,UPDATE ON TABLES TO hasab;


-- Completed on 2025-09-17 06:30:02

--
-- PostgreSQL database dump complete
--

\unrestrict ev36D5ONeVyaZ1bdVrB09Zf2MrQnoLToNS2mJHK4xbK2VN0qggIIw7pKtzd4WPq

