--
-- PostgreSQL database dump
--

-- Dumped from database version 13.4
-- Dumped by pg_dump version 13.4

-- Started on 2023-05-19 11:32:46

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
-- TOC entry 222 (class 1259 OID 61140)
-- Name: S1v1ANDS2v1; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."S1v1ANDS2v1" (
    id integer NOT NULL,
    h double precision NOT NULL,
    v double precision NOT NULL
);


ALTER TABLE public."S1v1ANDS2v1" OWNER TO postgres;

--
-- TOC entry 236 (class 1259 OID 61196)
-- Name: S1v2ANDS2v2; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."S1v2ANDS2v2" (
    id integer NOT NULL,
    h double precision NOT NULL,
    v double precision NOT NULL
);


ALTER TABLE public."S1v2ANDS2v2" OWNER TO postgres;

--
-- TOC entry 228 (class 1259 OID 61164)
-- Name: S2v1ANDS3v1; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."S2v1ANDS3v1" (
    id integer NOT NULL,
    h double precision NOT NULL,
    v double precision NOT NULL
);


ALTER TABLE public."S2v1ANDS3v1" OWNER TO postgres;

--
-- TOC entry 234 (class 1259 OID 61188)
-- Name: S2v2ANDS3v2; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."S2v2ANDS3v2" (
    id integer NOT NULL,
    h double precision NOT NULL,
    v double precision NOT NULL
);


ALTER TABLE public."S2v2ANDS3v2" OWNER TO postgres;

--
-- TOC entry 230 (class 1259 OID 61172)
-- Name: S3v1ANDS4v1; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."S3v1ANDS4v1" (
    id integer NOT NULL,
    h double precision NOT NULL,
    v double precision NOT NULL
);


ALTER TABLE public."S3v1ANDS4v1" OWNER TO postgres;

--
-- TOC entry 232 (class 1259 OID 61180)
-- Name: S3v2ANDS4v2; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."S3v2ANDS4v2" (
    id integer NOT NULL,
    h double precision NOT NULL,
    v double precision NOT NULL
);


ALTER TABLE public."S3v2ANDS4v2" OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 61148)
-- Name: S4v1; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."S4v1" (
    id integer NOT NULL,
    h double precision NOT NULL,
    v double precision NOT NULL
);


ALTER TABLE public."S4v1" OWNER TO postgres;

--
-- TOC entry 226 (class 1259 OID 61156)
-- Name: S4v2; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."S4v2" (
    id integer NOT NULL,
    h double precision NOT NULL,
    v double precision NOT NULL
);


ALTER TABLE public."S4v2" OWNER TO postgres;

--
-- TOC entry 210 (class 1259 OID 52898)
-- Name: U1s1v1; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."U1s1v1" (
    "Id" integer NOT NULL,
    "H" double precision NOT NULL,
    "V" double precision NOT NULL
);


ALTER TABLE public."U1s1v1" OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 61116)
-- Name: U1s1v22; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."U1s1v22" (
    "Id" integer NOT NULL,
    "H" double precision NOT NULL,
    "V" double precision NOT NULL
);


ALTER TABLE public."U1s1v22" OWNER TO postgres;

--
-- TOC entry 212 (class 1259 OID 61100)
-- Name: U1s2v1; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."U1s2v1" (
    "Id" integer NOT NULL,
    "H" double precision NOT NULL,
    "V" double precision NOT NULL
);


ALTER TABLE public."U1s2v1" OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 61124)
-- Name: U1s2v2; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."U1s2v2" (
    "Id" integer NOT NULL,
    "H" double precision NOT NULL,
    "V" double precision NOT NULL
);


ALTER TABLE public."U1s2v2" OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 61108)
-- Name: U1s3v1; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."U1s3v1" (
    "Id" integer NOT NULL,
    "H" double precision NOT NULL,
    "V" double precision NOT NULL
);


ALTER TABLE public."U1s3v1" OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 61132)
-- Name: U1s3v2; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."U1s3v2" (
    "Id" integer NOT NULL,
    "H" double precision NOT NULL,
    "V" double precision NOT NULL
);


ALTER TABLE public."U1s3v2" OWNER TO postgres;

--
-- TOC entry 208 (class 1259 OID 52659)
-- Name: northern_pacific; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.northern_pacific (
    z numeric,
    t numeric,
    s numeric
);


ALTER TABLE public.northern_pacific OWNER TO postgres;

--
-- TOC entry 200 (class 1259 OID 25010)
-- Name: phi; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.phi (
    id integer NOT NULL,
    phi double precision
);


ALTER TABLE public.phi OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 25020)
-- Name: s1v1; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.s1v1 (
    id integer NOT NULL,
    h double precision NOT NULL,
    v double precision NOT NULL
);


ALTER TABLE public.s1v1 OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 61138)
-- Name: s1v1ands2v1_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.s1v1ands2v1_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.s1v1ands2v1_id_seq OWNER TO postgres;

--
-- TOC entry 3195 (class 0 OID 0)
-- Dependencies: 221
-- Name: s1v1ands2v1_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.s1v1ands2v1_id_seq OWNED BY public."S1v1ANDS2v1".id;


--
-- TOC entry 207 (class 1259 OID 25045)
-- Name: s1v2; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.s1v2 (
    id integer NOT NULL,
    h double precision NOT NULL,
    v double precision NOT NULL
);


ALTER TABLE public.s1v2 OWNER TO postgres;

--
-- TOC entry 235 (class 1259 OID 61194)
-- Name: s1v2ands2v2_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.s1v2ands2v2_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.s1v2ands2v2_id_seq OWNER TO postgres;

--
-- TOC entry 3196 (class 0 OID 0)
-- Dependencies: 235
-- Name: s1v2ands2v2_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.s1v2ands2v2_id_seq OWNED BY public."S1v2ANDS2v2".id;


--
-- TOC entry 206 (class 1259 OID 25040)
-- Name: s2v1; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.s2v1 (
    id integer NOT NULL,
    h double precision NOT NULL,
    v double precision NOT NULL
);


ALTER TABLE public.s2v1 OWNER TO postgres;

--
-- TOC entry 227 (class 1259 OID 61162)
-- Name: s2v1ands3v1_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.s2v1ands3v1_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.s2v1ands3v1_id_seq OWNER TO postgres;

--
-- TOC entry 3197 (class 0 OID 0)
-- Dependencies: 227
-- Name: s2v1ands3v1_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.s2v1ands3v1_id_seq OWNED BY public."S2v1ANDS3v1".id;


--
-- TOC entry 203 (class 1259 OID 25025)
-- Name: s2v2; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.s2v2 (
    id integer NOT NULL,
    h double precision NOT NULL,
    v double precision NOT NULL
);


ALTER TABLE public.s2v2 OWNER TO postgres;

--
-- TOC entry 233 (class 1259 OID 61186)
-- Name: s2v2ands3v2_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.s2v2ands3v2_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.s2v2ands3v2_id_seq OWNER TO postgres;

--
-- TOC entry 3198 (class 0 OID 0)
-- Dependencies: 233
-- Name: s2v2ands3v2_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.s2v2ands3v2_id_seq OWNED BY public."S2v2ANDS3v2".id;


--
-- TOC entry 205 (class 1259 OID 25035)
-- Name: s3v1; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.s3v1 (
    id integer NOT NULL,
    h double precision NOT NULL,
    v double precision NOT NULL
);


ALTER TABLE public.s3v1 OWNER TO postgres;

--
-- TOC entry 229 (class 1259 OID 61170)
-- Name: s3v1ands4v1_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.s3v1ands4v1_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.s3v1ands4v1_id_seq OWNER TO postgres;

--
-- TOC entry 3199 (class 0 OID 0)
-- Dependencies: 229
-- Name: s3v1ands4v1_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.s3v1ands4v1_id_seq OWNED BY public."S3v1ANDS4v1".id;


--
-- TOC entry 204 (class 1259 OID 25030)
-- Name: s3v2; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.s3v2 (
    id integer NOT NULL,
    h double precision NOT NULL,
    v double precision NOT NULL
);


ALTER TABLE public.s3v2 OWNER TO postgres;

--
-- TOC entry 231 (class 1259 OID 61178)
-- Name: s3v2ands4v2_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.s3v2ands4v2_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.s3v2ands4v2_id_seq OWNER TO postgres;

--
-- TOC entry 3200 (class 0 OID 0)
-- Dependencies: 231
-- Name: s3v2ands4v2_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.s3v2ands4v2_id_seq OWNED BY public."S3v2ANDS4v2".id;


--
-- TOC entry 223 (class 1259 OID 61146)
-- Name: s4v1_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.s4v1_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.s4v1_id_seq OWNER TO postgres;

--
-- TOC entry 3201 (class 0 OID 0)
-- Dependencies: 223
-- Name: s4v1_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.s4v1_id_seq OWNED BY public."S4v1".id;


--
-- TOC entry 225 (class 1259 OID 61154)
-- Name: s4v2_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.s4v2_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.s4v2_id_seq OWNER TO postgres;

--
-- TOC entry 3202 (class 0 OID 0)
-- Dependencies: 225
-- Name: s4v2_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.s4v2_id_seq OWNED BY public."S4v2".id;


--
-- TOC entry 209 (class 1259 OID 52896)
-- Name: u1s1v1_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.u1s1v1_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.u1s1v1_id_seq OWNER TO postgres;

--
-- TOC entry 3203 (class 0 OID 0)
-- Dependencies: 209
-- Name: u1s1v1_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.u1s1v1_id_seq OWNED BY public."U1s1v1"."Id";


--
-- TOC entry 215 (class 1259 OID 61114)
-- Name: u1s1v2_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.u1s1v2_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.u1s1v2_id_seq OWNER TO postgres;

--
-- TOC entry 3204 (class 0 OID 0)
-- Dependencies: 215
-- Name: u1s1v2_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.u1s1v2_id_seq OWNED BY public."U1s1v22"."Id";


--
-- TOC entry 211 (class 1259 OID 61098)
-- Name: u1s2v1_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.u1s2v1_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.u1s2v1_id_seq OWNER TO postgres;

--
-- TOC entry 3205 (class 0 OID 0)
-- Dependencies: 211
-- Name: u1s2v1_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.u1s2v1_id_seq OWNED BY public."U1s2v1"."Id";


--
-- TOC entry 217 (class 1259 OID 61122)
-- Name: u1s2v2_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.u1s2v2_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.u1s2v2_id_seq OWNER TO postgres;

--
-- TOC entry 3206 (class 0 OID 0)
-- Dependencies: 217
-- Name: u1s2v2_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.u1s2v2_id_seq OWNED BY public."U1s2v2"."Id";


--
-- TOC entry 213 (class 1259 OID 61106)
-- Name: u1s3v1_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.u1s3v1_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.u1s3v1_id_seq OWNER TO postgres;

--
-- TOC entry 3207 (class 0 OID 0)
-- Dependencies: 213
-- Name: u1s3v1_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.u1s3v1_id_seq OWNED BY public."U1s3v1"."Id";


--
-- TOC entry 219 (class 1259 OID 61130)
-- Name: u1s3v2_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.u1s3v2_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.u1s3v2_id_seq OWNER TO postgres;

--
-- TOC entry 3208 (class 0 OID 0)
-- Dependencies: 219
-- Name: u1s3v2_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.u1s3v2_id_seq OWNED BY public."U1s3v2"."Id";


--
-- TOC entry 201 (class 1259 OID 25015)
-- Name: v; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.v (
    id integer NOT NULL,
    v double precision NOT NULL
);


ALTER TABLE public.v OWNER TO postgres;

--
-- TOC entry 2971 (class 2604 OID 61143)
-- Name: S1v1ANDS2v1 id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."S1v1ANDS2v1" ALTER COLUMN id SET DEFAULT nextval('public.s1v1ands2v1_id_seq'::regclass);


--
-- TOC entry 2978 (class 2604 OID 61199)
-- Name: S1v2ANDS2v2 id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."S1v2ANDS2v2" ALTER COLUMN id SET DEFAULT nextval('public.s1v2ands2v2_id_seq'::regclass);


--
-- TOC entry 2974 (class 2604 OID 61167)
-- Name: S2v1ANDS3v1 id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."S2v1ANDS3v1" ALTER COLUMN id SET DEFAULT nextval('public.s2v1ands3v1_id_seq'::regclass);


--
-- TOC entry 2977 (class 2604 OID 61191)
-- Name: S2v2ANDS3v2 id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."S2v2ANDS3v2" ALTER COLUMN id SET DEFAULT nextval('public.s2v2ands3v2_id_seq'::regclass);


--
-- TOC entry 2975 (class 2604 OID 61175)
-- Name: S3v1ANDS4v1 id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."S3v1ANDS4v1" ALTER COLUMN id SET DEFAULT nextval('public.s3v1ands4v1_id_seq'::regclass);


--
-- TOC entry 2976 (class 2604 OID 61183)
-- Name: S3v2ANDS4v2 id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."S3v2ANDS4v2" ALTER COLUMN id SET DEFAULT nextval('public.s3v2ands4v2_id_seq'::regclass);


--
-- TOC entry 2972 (class 2604 OID 61151)
-- Name: S4v1 id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."S4v1" ALTER COLUMN id SET DEFAULT nextval('public.s4v1_id_seq'::regclass);


--
-- TOC entry 2973 (class 2604 OID 61159)
-- Name: S4v2 id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."S4v2" ALTER COLUMN id SET DEFAULT nextval('public.s4v2_id_seq'::regclass);


--
-- TOC entry 2965 (class 2604 OID 52901)
-- Name: U1s1v1 Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."U1s1v1" ALTER COLUMN "Id" SET DEFAULT nextval('public.u1s1v1_id_seq'::regclass);


--
-- TOC entry 2968 (class 2604 OID 61119)
-- Name: U1s1v22 Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."U1s1v22" ALTER COLUMN "Id" SET DEFAULT nextval('public.u1s1v2_id_seq'::regclass);


--
-- TOC entry 2966 (class 2604 OID 61103)
-- Name: U1s2v1 Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."U1s2v1" ALTER COLUMN "Id" SET DEFAULT nextval('public.u1s2v1_id_seq'::regclass);


--
-- TOC entry 2969 (class 2604 OID 61127)
-- Name: U1s2v2 Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."U1s2v2" ALTER COLUMN "Id" SET DEFAULT nextval('public.u1s2v2_id_seq'::regclass);


--
-- TOC entry 2967 (class 2604 OID 61111)
-- Name: U1s3v1 Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."U1s3v1" ALTER COLUMN "Id" SET DEFAULT nextval('public.u1s3v1_id_seq'::regclass);


--
-- TOC entry 2970 (class 2604 OID 61135)
-- Name: U1s3v2 Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."U1s3v2" ALTER COLUMN "Id" SET DEFAULT nextval('public.u1s3v2_id_seq'::regclass);


--
-- TOC entry 3175 (class 0 OID 61140)
-- Dependencies: 222
-- Data for Name: S1v1ANDS2v1; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."S1v1ANDS2v1" (id, h, v) FROM stdin;
1	54.8	32.99
2	94.95	3.43
3	34.93	90.06
4	64.05	96.53
5	54.83	74.94
6	700	90
\.


--
-- TOC entry 3189 (class 0 OID 61196)
-- Dependencies: 236
-- Data for Name: S1v2ANDS2v2; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."S1v2ANDS2v2" (id, h, v) FROM stdin;
1	65.8	90.45
2	32.09	34.04
3	74.84	43.21
4	66.95	84.12
5	78.42	43.09
6	45.89	102.9
\.


--
-- TOC entry 3181 (class 0 OID 61164)
-- Dependencies: 228
-- Data for Name: S2v1ANDS3v1; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."S2v1ANDS3v1" (id, h, v) FROM stdin;
1	69.9	78.56
3	78.5	23.97
4	9.12	34.23
5	35.14	90.53
6	43.43	9.64
\.


--
-- TOC entry 3187 (class 0 OID 61188)
-- Dependencies: 234
-- Data for Name: S2v2ANDS3v2; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."S2v2ANDS3v2" (id, h, v) FROM stdin;
1	76.6	3.98
2	98.88	53.09
3	54.83	43.21
4	66.09	9.12
5	56.98	87.09
6	46.09	70.9
\.


--
-- TOC entry 3183 (class 0 OID 61172)
-- Dependencies: 230
-- Data for Name: S3v1ANDS4v1; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."S3v1ANDS4v1" (id, h, v) FROM stdin;
1	18.31	1510.99
2	29.28	1504.9
3	49.65	1494.23
4	75.29	1480.34
5	92.69	1467.95
6	85.84	85
7	93.1	94.1
8	48.17	47.63
9	10.37	30.39
10	24.97	78.34
\.


--
-- TOC entry 3185 (class 0 OID 61180)
-- Dependencies: 232
-- Data for Name: S3v2ANDS4v2; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."S3v2ANDS4v2" (id, h, v) FROM stdin;
1	76.4	32.99
2	54.85	94.64
3	74.94	84.09
4	64.05	96.53
5	54.83	74.94
6	184.96	84.04
\.


--
-- TOC entry 3177 (class 0 OID 61148)
-- Dependencies: 224
-- Data for Name: S4v1; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."S4v1" (id, h, v) FROM stdin;
1	34.57	78.9
2	46.9	23.1
3	44.17	12.03
4	14.67	100.45
5	78.56	45.32
6	85.84	85
7	93.1	94.1
8	48.17	47.63
9	10.37	30.39
10	24.97	78.34
11	700	90
12	90.7	45.8
13	20	56
14	30	56
15	40	20
16	70	90
18	1000	2000
19	5000	6000
17	3000	4000
\.


--
-- TOC entry 3179 (class 0 OID 61156)
-- Dependencies: 226
-- Data for Name: S4v2; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."S4v2" (id, h, v) FROM stdin;
1	54.8	32.99
2	94.95	3.43
3	34.93	90.06
4	64.05	96.53
5	54.83	74.94
6	70	90
\.


--
-- TOC entry 3163 (class 0 OID 52898)
-- Dependencies: 210
-- Data for Name: U1s1v1; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."U1s1v1" ("Id", "H", "V") FROM stdin;
123	800	70
124	50	300
125	50	100
\.


--
-- TOC entry 3169 (class 0 OID 61116)
-- Dependencies: 216
-- Data for Name: U1s1v22; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."U1s1v22" ("Id", "H", "V") FROM stdin;
1	10	20
2	700	90
4	300	400
5	100	200
3	500	600
\.


--
-- TOC entry 3165 (class 0 OID 61100)
-- Dependencies: 212
-- Data for Name: U1s2v1; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."U1s2v1" ("Id", "H", "V") FROM stdin;
1	800	70
2	900	700
3	60	80
4	70	50
6	60	20
5	30	55
7	80	10
8	200	40
\.


--
-- TOC entry 3171 (class 0 OID 61124)
-- Dependencies: 218
-- Data for Name: U1s2v2; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."U1s2v2" ("Id", "H", "V") FROM stdin;
1	700	90
2	50	599
3	60	90
4	12	34
5	80	45
6	67	34
7	900	80
8	40	90
\.


--
-- TOC entry 3167 (class 0 OID 61108)
-- Dependencies: 214
-- Data for Name: U1s3v1; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."U1s3v1" ("Id", "H", "V") FROM stdin;
1	700	90
3	100	200
4	300	400
5	80	90
6	90	100
\.


--
-- TOC entry 3173 (class 0 OID 61132)
-- Dependencies: 220
-- Data for Name: U1s3v2; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."U1s3v2" ("Id", "H", "V") FROM stdin;
1	700	90
2	800	900
\.


--
-- TOC entry 3161 (class 0 OID 52659)
-- Dependencies: 208
-- Data for Name: northern_pacific; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.northern_pacific (z, t, s) FROM stdin;
0	12.0	33.8
\.


--
-- TOC entry 3153 (class 0 OID 25010)
-- Dependencies: 200
-- Data for Name: phi; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.phi (id, phi) FROM stdin;
1	299
2	262.85
3	229.08
4	197.71
5	168.72
6	142.13
7	117.92
8	96.11
9	76.68
10	59.65
11	45
12	33.62
13	25.98
14	21.52
15	19.63
16	19.75
17	21.29
18	23.66
19	44646
20	44740
21	30
22	30.98
23	32.4
24	34.28
25	36.6
26	39.38
27	42.6
28	46.28
29	50.4
30	54.98
31	60
32	304.14
33	266.87
34	232.08
35	199.77
36	169.94
37	142.6
38	117.73
39	95.35
40	75.46
41	58.04
42	43.11
43	31.57
44	23.95
45	19.62
46	17.98
47	18.41
48	20.31
49	44735
50	44677
51	28.65
52	30.28
53	31.42
54	33.02
55	35.05
56	37.53
57	40.44
58	43.81
59	47.61
60	51.85
61	56.54
62	61.67
63	308.56
64	270.29
65	234.59
66	201.45
67	170.88
68	142.88
69	117.43
70	94.56
71	74.25
72	56.5
73	41.32
74	29.66
75	44734
76	17.88
77	16.47
78	44609
79	19.44
80	22.53
81	25.85
82	28.75
83	44742
84	31.93
85	33.69
86	35.89
87	38.52
88	41.59
89	45.1
90	49.04
91	53.42
92	58.23
93	63.48
94	312.26
95	273.12
96	236.62
97	202.76
98	171.54
99	142.96
100	117.02
101	93.72
102	73.05
103	55.03
104	39.65
105	27.89
106	20.33
107	16.29
108	44576
109	44911
110	18.67
111	44826
112	25.73
113	28.91
114	30.98
115	32.48
116	34.42
117	36.78
118	39.58
119	42.81
120	46.47
121	50.57
122	55.09
123	60.04
124	65.43
125	315.24
126	275.35
127	238.17
128	203.69
129	171.92
130	142.85
131	116.49
132	92.83
133	71.87
134	53.62
135	38.08
136	26.26
137	18.75
138	14.85
139	13.88
140	15.16
141	44579
142	21.74
143	25.67
144	44924
145	31.4
146	33.09
147	35.2
148	37.74
149	40.71
150	44.11
151	47.94
152	52.19
153	56.87
154	61.98
155	67.52
156	317.5
157	276.99
158	239.24
159	204.24
160	172.02
161	142.55
162	115.84
163	91.89
164	70.71
165	52.29
166	36.63
167	24.78
168	17.32
169	13.56
170	44785
171	14.33
172	17.45
173	21.47
174	25.68
175	29.38
176	31.88
177	33.74
178	36.04
179	38.76
180	41.91
181	45.48
182	49.49
183	53.91
184	58.77
185	64.04
186	69.75
187	319.04
188	278.02
189	239.82
190	204.42
191	171.83
192	142.05
193	115.08
194	90.92
195	69.56
196	51.02
197	35.28
198	23.42
199	44697
200	16041
201	31717
202	13.62
203	17
204	21.29
205	25.76
206	44771
207	32.4
208	34.46
209	36.94
210	39.84
211	43.18
212	46.94
213	51.12
214	55.73
215	60.77
216	66.23
217	72.12
218	319.86
219	278.46
220	239.92
221	204.22
222	171.36
223	141.36
224	114.2
225	89.89
226	68.43
227	49.81
228	34.05
229	22.21
230	14.92
231	16742
232	44723
233	44664
234	16.66
235	21.19
236	44829
237	44772
238	32.98
239	35.22
240	37.89
241	40.99
242	44.51
243	48.46
244	52.84
245	57.65
246	62.88
247	68.54
248	74.63
249	319.96
250	278.31
251	239.53
252	203.64
253	170.62
254	140.48
255	113.21
256	88.82
257	67.31
258	48.68
259	32.92
260	21.14
261	13.95
262	22920
263	15250
264	21885
265	16.42
266	21.17
267	44891
268	44711
269	33.6
270	36.03
271	38.9
272	42.19
273	45.91
274	50.07
275	54.65
276	59.66
277	65.1
278	70.98
279	77.28
280	319.34
281	277.56
282	238.67
283	202.68
284	169.59
285	139.4
286	112.1
287	87.71
288	66.21
289	47.61
290	31.91
291	20.21
292	13.14
293	34943
294	44813
295	46357
296	16.29
297	21.24
298	26.38
299	30.98
300	34.28
301	36.9
302	39.96
303	43.45
304	47.38
305	51.74
306	56.54
307	61.77
308	67.44
309	73.54
310	80.07
311	318
312	276.21
313	237.32
314	201.35
315	168.28
316	138.13
317	110.88
318	86.55
319	65.12
320	46.61
321	31
322	19.42
323	17502
324	15950
325	19968
326	44724
327	16.26
328	44672
329	26.73
330	31.51
331	35
332	37.82
333	41.08
334	44.78
335	48.92
336	53.5
337	58.52
338	63.98
339	69.88
340	76.22
341	83
342	315.07
343	273.52
344	234.87
345	199.13
346	166.29
347	136.36
348	109.33
349	85.2
350	63.99
351	45.67
352	30.26
353	18.87
354	44573
355	44805
356	18142
357	43070
358	16.53
359	21.82
360	27.32
361	32.27
362	35.95
363	38.97
364	42.43
365	46.33
366	50.68
367	55.47
368	60.71
369	66.4
370	72.53
371	79.1
372	86.12
373	310.07
374	269.08
375	230.98
376	195.75
377	163.39
378	133.92
379	107.32
380	83.61
381	62.77
382	44.81
383	29.73
384	18.62
385	44816
386	15220
387	31291
388	25538
389	17.19
390	22.62
391	28.26
392	33.37
393	37.22
394	40.43
395	44.09
396	48.2
397	52.75
398	57.75
399	63.19
400	69.09
401	75.43
402	82.22
403	89.46
404	303.58
405	263.4
406	226.05
407	191.54
408	159.86
409	131.02
410	105.02
411	81.85
412	61.51
413	44.02
414	29.35
415	44730
416	13485
417	44813
418	19268
419	44694
420	44913
421	23.66
422	29.42
423	34.67
424	38.7
425	42.11
426	45.96
427	50.27
428	55.02
429	60.22
430	65.88
431	71.98
432	78.53
433	85.53
434	92.98
435	296.18
436	256.95
437	220.5
438	186.84
439	155.96
440	127.86
441	102.54
442	80.01
443	60.26
444	43.29
445	44590
446	18.75
447	29921
448	21459
449	13820
450	14.47
451	19.19
452	24.83
453	30.69
454	36.07
455	40.27
456	43.88
457	47.93
458	52.44
459	57.4
460	62.81
461	68.67
462	74.99
463	81.76
464	88.98
465	96.65
466	288.44
467	250.23
468	214.75
469	181.99
470	151.95
471	124.64
472	100.05
473	78.19
474	59.05
475	42.63
476	28.94
477	18.99
478	13.35
479	12724
480	47088
481	15.49
482	20.29
483	44587
484	31.95
485	37.45
486	41.81
487	45.62
488	49.88
489	54.6
490	59.77
491	65.41
492	71.5
493	78.05
494	85.05
495	92.52
496	100.44
497	280.94
498	243.74
499	209.2
500	177.32
501	148.11
502	121.57
503	97.68
504	76.47
505	57.92
506	42.04
507	28.82
508	19.25
509	13.89
510	44754
511	13.14
512	16.44
513	21.29
514	44739
515	33.08
516	38.68
517	43.21
518	47.22
519	51.69
520	56.63
521	62.04
522	67.92
523	74.26
524	81.08
525	88.35
526	96.1
527	104.31
528	274.27
529	237.96
530	204.26
531	173.17
532	144.7
533	118.84
534	95.58
535	74.95
536	56.92
537	41.5
538	44770
539	19.47
540	14.34
541	24807
542	13.83
543	17.18
544	44764
545	27.87
546	33.95
547	39.65
548	44.34
549	48.56
550	53.26
551	58.44
552	64.11
553	70.26
554	76.89
555	84
556	91.6
557	99.68
558	108.24
559	269.01
560	233.4
561	200.36
562	169.89
563	141.99
564	116.66
565	93.89
566	73.7
567	56.08
568	41.03
569	28.55
570	19.57
571	44726
572	44633
573	14.24
574	44729
575	44703
576	28.32
577	34.44
578	40.24
579	45.1
580	49.53
581	54.47
582	59.92
583	65.87
584	72.32
585	79.28
586	86.75
587	94.72
588	103.2
589	112.18
590	265.72
591	230.54
592	197.89
593	167.79
594	140.24
595	115.23
596	92.76
597	72.84
598	55.46
599	40.62
600	28.33
601	19.49
602	14.59
603	44694
604	14.24
605	17.58
606	22.46
607	28.28
608	34.44
609	40.33
610	45.35
611	50.01
612	55.21
613	60.94
614	67.21
615	74.02
616	81.36
617	89.24
618	97.66
619	106.62
620	116.12
621	265
622	229.87
623	197.28
624	167.23
625	139.72
626	114.75
627	92.32
628	72.43
629	55.08
630	40.27
631	28
632	19.15
633	14.22
634	44724
635	13.73
636	17
637	21.83
638	27.64
639	33.82
640	39.81
641	45
642	49.89
643	55.36
644	61.41
645	68.04
646	75.25
647	83.04
648	91.41
649	100.36
650	109.89
651	120
652	266.36
653	230.99
654	198.18
655	167.92
656	140.21
657	115.06
658	92.46
659	72.41
660	54.92
661	39.98
662	27.59
663	18.62
664	13.55
665	44784
666	29190
667	15.95
668	20.71
669	26.48
670	32.69
671	38.77
672	44.13
673	49.26
674	55.02
675	61.42
676	68.44
677	76.1
678	84.39
679	93.31
680	102.86
681	113.05
682	123.87
683	268.92
684	233.16
685	199.97
686	169.35
687	141.31
688	115.85
689	92.96
690	72.65
691	54.91
692	39.75
693	27.16
694	18
695	26999
696	28764
697	22586
698	14.63
699	19.28
700	25
701	31.23
702	37.39
703	42.92
704	48.3
705	54.36
706	61.12
707	68.57
708	76.71
709	85.53
710	95.05
711	105.27
712	116.17
713	127.76
714	272.7
715	236.37
716	202.65
717	171.53
718	143.02
719	117.12
720	93.83
721	73.14
722	55.06
723	39.58
724	26.71
725	17.28
726	27699
727	21064
728	43374
729	44605
730	17.55
731	44615
732	29.43
733	35.67
734	41.37
735	47
736	53.38
737	60.52
738	68.42
739	77.07
740	86.48
741	96.65
742	107.57
743	119.25
744	131.69
745	277.68
746	240.63
747	206.22
748	174.46
749	145.34
750	118.88
751	95.05
752	73.88
753	55.35
754	39.47
755	26.24
756	16.47
757	22920
758	42217
759	44689
760	41944
761	15.51
762	44794
763	27.29
764	33.61
765	39.48
766	45.36
767	52.08
768	59.62
769	67.99
770	77.2
771	87.23
772	98.09
773	109.77
774	122.29
775	135.64
776	283.88
777	245.93
778	210.68
779	178.13
780	148.27
781	121.11
782	96.65
783	74.88
784	55.81
785	39.43
786	25.75
787	15.57
788	12663
789	19146
790	21337
791	35643
792	13.17
793	18.63
794	24.82
795	31.21
796	37.25
797	43.4
798	50.46
799	58.42
800	67.3
801	77.08
802	87.77
803	99.37
804	111.88
805	125.3
806	139.63
807	291.28
808	252.28
809	216.03
810	182.54
811	151.81
812	123.83
813	98.6
814	76.13
815	56.41
816	39.45
817	25.24
818	14.58
819	44811
820	25294
821	44655
822	19146
823	19268
824	15.86
825	44614
826	28.47
827	34.68
828	41.1
829	48.51
830	56.92
831	66.32
832	76.72
833	88.11
834	100.5
835	113.89
836	128.27
837	143.64
838	299.9
839	259.68
840	222.28
841	187.7
842	155.95
843	127.02
844	100.91
845	77.63
846	57.17
847	39.53
848	24.71
849	44694
850	11841
851	23774
852	36161
853	44776
854	20637
855	28095
856	18.88
857	25.39
858	31.77
859	38.46
860	46.24
861	55.11
862	65.07
863	76.12
864	88.26
865	101.48
866	115.79
867	131.2
868	147.69
869	309.72
870	268.12
871	229.41
872	193.61
873	160.71
874	130.7
875	103.59
876	79.39
877	58.08
878	39.67
879	24.16
880	12024
881	21276
882	0.41
883	0.68
884	0.79
885	44624
886	12663
887	44666
888	21.96
889	28.52
890	35.49
891	43.66
892	53.01
893	63.55
894	75.28
895	88.2
896	102.31
897	117.6
898	134.09
899	151.76
900	320.76
901	277.61
902	237.44
903	200.26
904	166.07
905	134.86
906	106.64
907	81.4
908	59.14
909	39.87
910	23.59
911	44692
912	24869
913	44622
914	21610
915	44683
916	0.73
917	44717
918	21855
919	44610
920	24.93
921	32.19
922	40.75
923	50.6
924	61.75
925	74.2
926	87.94
927	102.98
928	119.31
929	136.94
930	155.87
931	333
932	288.14
933	246.36
934	207.66
935	172.04
936	139.5
937	110.04
938	83.66
939	60.36
940	40.14
941	23
942	25447
943	0.63
944	24929
945	27181
946	44718
947	41699
948	19360
949	16619
950	44575
951	21
952	28.56
953	37.52
954	47.9
955	59.68
956	72.88
957	87.48
958	103.5
959	120.92
960	139.76
961	160
\.


--
-- TOC entry 3155 (class 0 OID 25020)
-- Dependencies: 202
-- Data for Name: s1v1; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.s1v1 (id, h, v) FROM stdin;
1	20.37	1465.21
2	30.37	1466.99
3	41.21	1467.68
4	50.54	1467.54
5	62.05	1465.83
6	74.64	1464.33
7	92.9	1463.65
8	105.95	1462.97
9	117.9	1464.34
10	131.6	1465.44
\.


--
-- TOC entry 3160 (class 0 OID 25045)
-- Dependencies: 207
-- Data for Name: s1v2; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.s1v2 (id, h, v) FROM stdin;
1	0	1514.83
2	23986	1509.83
3	43040	1499.85
4	14.58	1496.56
5	28.13	1493.38
6	37.4	1486.87
7	42.19	1482.4
8	50.74	1474.98
9	62.42	1466.78
10	69.67	1463.13
11	89.88	1461.16
12	136.74	1464.48
13	192.77	1471.6
14	250.94	1480.47
15	293.68	1486.5
16	332.9	1491.62
17	372.83	1496.91
18	439.41	1506.99
19	500	1513.87
\.


--
-- TOC entry 3159 (class 0 OID 25040)
-- Dependencies: 206
-- Data for Name: s2v1; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.s2v1 (id, h, v) FROM stdin;
1	17.55	1470.82
2	28.38	1470.21
3	50.08	1467.33
4	67.47	1463.23
5	87.91	1460.64
6	107.04	1461.87
7	123.12	1464.27
\.


--
-- TOC entry 3156 (class 0 OID 25025)
-- Dependencies: 203
-- Data for Name: s2v2; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.s2v2 (id, h, v) FROM stdin;
1	0	1512.76
2	46478	1503.07
3	44869	1494.28
4	15888	1488.29
5	15.32	1478.94
6	30.76	1467.02
7	65.18	1459.34
8	112.99	1460.85
9	152.24	1466.53
10	178.49	1469.6
11	210.68	1473.8
12	248.79	1478.87
13	300.27	1486.43
14	331.01	1490.9
15	388.07	1499.86
16	438.77	1506.64
17	500	1513.18
\.


--
-- TOC entry 3158 (class 0 OID 25035)
-- Dependencies: 205
-- Data for Name: s3v1; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.s3v1 (id, h, v) FROM stdin;
1	18.31	1510.99
2	29.28	1504.9
3	49.65	1494.23
4	75.29	1480.34
5	92.69	1467.95
6	111.38	1460.84
7	125.95	1462.28
\.


--
-- TOC entry 3157 (class 0 OID 25030)
-- Dependencies: 204
-- Data for Name: s3v2; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.s3v2 (id, h, v) FROM stdin;
1	0	1428.18
2	44631	1433.65
3	44818	1445.2
4	19.85	1452.87
5	44919	1456.2
6	50.59	1453.36
7	88.37	1456.48
8	157.7	1465.11
9	222.16	1473.94
10	269.1	1480.53
11	332.85	1489.53
12	389.64	1499.08
13	437.3	1506.67
14	500	1513.95
\.


--
-- TOC entry 3154 (class 0 OID 25015)
-- Dependencies: 201
-- Data for Name: v; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.v (id, v) FROM stdin;
1	0.65
2	0.64
3	0.64
4	0.64
5	0.63
6	0.63
7	0.62
8	0.62
9	0.61
10	0.61
11	0.6
12	0.58
13	0.55
14	0.53
15	0.5
16	0.48
17	0.45
18	0.43
19	0.4
20	0.38
21	0.35
22	0.5
23	0.65
24	0.8
25	0.96
26	0.86
27	0.85
28	0.84
29	0.82
30	0.81
31	0.8
32	0.78
33	0.77
34	0.76
35	0.74
36	0.73
37	0.7
38	0.66
39	0.63
40	0.59
41	0.56
42	0.52
43	0.49
44	0.46
45	0.42
46	0.39
47	0.52
48	0.66
49	0.79
50	0.92
51	0.99
52	0.97
53	0.95
54	0.92
55	0.9
56	0.88
57	0.86
58	0.82
59	0.77
60	0.73
61	0.68
62	0.64
63	0.6
64	0.55
65	0.51
66	0.47
67	0.42
68	0.54
69	0.66
70	0.78
71	0.89
72	0.99
73	0.93
74	0.88
75	0.83
76	0.78
77	0.72
78	0.67
79	0.62
80	0.57
81	0.51
82	0.46
83	0.56
84	0.66
85	0.76
86	0.86
87	0.96
88	0.99
89	0.93
90	0.87
91	0.8
92	0.74
93	0.68
94	0.62
95	0.56
96	0.5
97	0.58
98	0.66
99	0.75
100	0.83
101	0.91
102	1
103	0.96
104	0.89
105	0.82
106	0.75
107	0.67
108	0.6
109	0.53
110	0.6
111	0.67
112	0.73
113	0.8
114	0.87
115	0.93
116	1
117	0.97
118	0.89
119	0.81
120	0.73
121	0.65
122	0.57
123	0.62
124	0.67
125	0.72
126	0.77
127	0.82
128	0.87
129	0.92
130	0.97
131	0.96
132	0.87
133	0.78
134	0.69
135	0.61
136	0.64
137	0.67
138	0.7
139	0.74
140	0.77
141	0.8
142	0.83
143	0.87
144	0.9
145	0.93
146	0.94
147	0.84
148	0.74
149	0.64
150	0.66
151	0.67
152	0.69
153	0.7
154	0.72
155	0.74
156	0.75
157	0.77
158	0.78
159	0.8
160	2
161	1
162	0.89
163	0.79
164	0.68
165	0.68
166	0.68
167	0.67
168	0.67
169	0.67
170	0.67
171	0.67
172	0.67
173	0.67
174	0.66
175	0.95
176	0.83
177	0.72
178	0.7
179	0.68
180	0.66
181	0.64
182	0.62
183	0.6
184	0.59
185	0.57
186	0.55
187	0.53
188	0.92
189	0.83
190	0.82
191	0.81
192	0.8
193	0.8
194	0.79
195	0.78
196	0.78
197	0.77
198	0.76
199	0.75
200	2
201	0.94
202	0.94
203	0.94
204	0.95
205	0.95
206	0.96
207	0.96
208	0.97
209	0.97
210	0.97
211	0.98
212	0.92
213	0.93
214	0.94
215	0.95
216	0.96
217	0.98
218	0.99
219	1
220	2
221	0.74
222	0.77
223	0.8
224	0.83
225	0.86
226	0.89
227	0.92
228	0.95
229	0.98
230	1
231	0.57
232	0.61
233	0.66
234	0.71
235	0.75
236	0.8
237	0.85
238	0.89
239	0.94
240	0.99
241	0.39
242	0.45
243	0.52
244	0.58
245	0.65
246	0.71
247	0.77
248	0.84
249	0.9
250	0.97
251	1
252	0.99
253	0.98
254	0.97
255	0.96
256	0.95
257	0.94
258	0.93
\.


--
-- TOC entry 3209 (class 0 OID 0)
-- Dependencies: 221
-- Name: s1v1ands2v1_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.s1v1ands2v1_id_seq', 6, true);


--
-- TOC entry 3210 (class 0 OID 0)
-- Dependencies: 235
-- Name: s1v2ands2v2_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.s1v2ands2v2_id_seq', 6, true);


--
-- TOC entry 3211 (class 0 OID 0)
-- Dependencies: 227
-- Name: s2v1ands3v1_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.s2v1ands3v1_id_seq', 6, true);


--
-- TOC entry 3212 (class 0 OID 0)
-- Dependencies: 233
-- Name: s2v2ands3v2_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.s2v2ands3v2_id_seq', 6, true);


--
-- TOC entry 3213 (class 0 OID 0)
-- Dependencies: 229
-- Name: s3v1ands4v1_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.s3v1ands4v1_id_seq', 10, true);


--
-- TOC entry 3214 (class 0 OID 0)
-- Dependencies: 231
-- Name: s3v2ands4v2_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.s3v2ands4v2_id_seq', 6, true);


--
-- TOC entry 3215 (class 0 OID 0)
-- Dependencies: 223
-- Name: s4v1_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.s4v1_id_seq', 19, true);


--
-- TOC entry 3216 (class 0 OID 0)
-- Dependencies: 225
-- Name: s4v2_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.s4v2_id_seq', 6, true);


--
-- TOC entry 3217 (class 0 OID 0)
-- Dependencies: 209
-- Name: u1s1v1_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.u1s1v1_id_seq', 125, true);


--
-- TOC entry 3218 (class 0 OID 0)
-- Dependencies: 215
-- Name: u1s1v2_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.u1s1v2_id_seq', 5, true);


--
-- TOC entry 3219 (class 0 OID 0)
-- Dependencies: 211
-- Name: u1s2v1_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.u1s2v1_id_seq', 8, true);


--
-- TOC entry 3220 (class 0 OID 0)
-- Dependencies: 217
-- Name: u1s2v2_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.u1s2v2_id_seq', 8, true);


--
-- TOC entry 3221 (class 0 OID 0)
-- Dependencies: 213
-- Name: u1s3v1_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.u1s3v1_id_seq', 6, true);


--
-- TOC entry 3222 (class 0 OID 0)
-- Dependencies: 219
-- Name: u1s3v2_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.u1s3v2_id_seq', 2, true);


--
-- TOC entry 2980 (class 2606 OID 25014)
-- Name: phi phi_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.phi
    ADD CONSTRAINT phi_pkey PRIMARY KEY (id);


--
-- TOC entry 2984 (class 2606 OID 25024)
-- Name: s1v1 s1v1_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.s1v1
    ADD CONSTRAINT s1v1_pkey PRIMARY KEY (id);


--
-- TOC entry 3008 (class 2606 OID 61145)
-- Name: S1v1ANDS2v1 s1v1ands2v1_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."S1v1ANDS2v1"
    ADD CONSTRAINT s1v1ands2v1_pkey PRIMARY KEY (id);


--
-- TOC entry 2994 (class 2606 OID 25049)
-- Name: s1v2 s1v2_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.s1v2
    ADD CONSTRAINT s1v2_pkey PRIMARY KEY (id);


--
-- TOC entry 3022 (class 2606 OID 61201)
-- Name: S1v2ANDS2v2 s1v2ands2v2_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."S1v2ANDS2v2"
    ADD CONSTRAINT s1v2ands2v2_pkey PRIMARY KEY (id);


--
-- TOC entry 2992 (class 2606 OID 25044)
-- Name: s2v1 s2v1_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.s2v1
    ADD CONSTRAINT s2v1_pkey PRIMARY KEY (id);


--
-- TOC entry 3014 (class 2606 OID 61169)
-- Name: S2v1ANDS3v1 s2v1ands3v1_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."S2v1ANDS3v1"
    ADD CONSTRAINT s2v1ands3v1_pkey PRIMARY KEY (id);


--
-- TOC entry 2986 (class 2606 OID 25029)
-- Name: s2v2 s2v2_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.s2v2
    ADD CONSTRAINT s2v2_pkey PRIMARY KEY (id);


--
-- TOC entry 3020 (class 2606 OID 61193)
-- Name: S2v2ANDS3v2 s2v2ands3v2_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."S2v2ANDS3v2"
    ADD CONSTRAINT s2v2ands3v2_pkey PRIMARY KEY (id);


--
-- TOC entry 2990 (class 2606 OID 25039)
-- Name: s3v1 s3v1_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.s3v1
    ADD CONSTRAINT s3v1_pkey PRIMARY KEY (id);


--
-- TOC entry 3016 (class 2606 OID 61177)
-- Name: S3v1ANDS4v1 s3v1ands4v1_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."S3v1ANDS4v1"
    ADD CONSTRAINT s3v1ands4v1_pkey PRIMARY KEY (id);


--
-- TOC entry 2988 (class 2606 OID 25034)
-- Name: s3v2 s3v2_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.s3v2
    ADD CONSTRAINT s3v2_pkey PRIMARY KEY (id);


--
-- TOC entry 3018 (class 2606 OID 61185)
-- Name: S3v2ANDS4v2 s3v2ands4v2_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."S3v2ANDS4v2"
    ADD CONSTRAINT s3v2ands4v2_pkey PRIMARY KEY (id);


--
-- TOC entry 3010 (class 2606 OID 61153)
-- Name: S4v1 s4v1_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."S4v1"
    ADD CONSTRAINT s4v1_pkey PRIMARY KEY (id);


--
-- TOC entry 3012 (class 2606 OID 61161)
-- Name: S4v2 s4v2_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."S4v2"
    ADD CONSTRAINT s4v2_pkey PRIMARY KEY (id);


--
-- TOC entry 2996 (class 2606 OID 52903)
-- Name: U1s1v1 u1s1v1_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."U1s1v1"
    ADD CONSTRAINT u1s1v1_pkey PRIMARY KEY ("Id");


--
-- TOC entry 3002 (class 2606 OID 61121)
-- Name: U1s1v22 u1s1v2_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."U1s1v22"
    ADD CONSTRAINT u1s1v2_pkey PRIMARY KEY ("Id");


--
-- TOC entry 2998 (class 2606 OID 61105)
-- Name: U1s2v1 u1s2v1_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."U1s2v1"
    ADD CONSTRAINT u1s2v1_pkey PRIMARY KEY ("Id");


--
-- TOC entry 3004 (class 2606 OID 61129)
-- Name: U1s2v2 u1s2v2_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."U1s2v2"
    ADD CONSTRAINT u1s2v2_pkey PRIMARY KEY ("Id");


--
-- TOC entry 3000 (class 2606 OID 61113)
-- Name: U1s3v1 u1s3v1_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."U1s3v1"
    ADD CONSTRAINT u1s3v1_pkey PRIMARY KEY ("Id");


--
-- TOC entry 3006 (class 2606 OID 61137)
-- Name: U1s3v2 u1s3v2_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."U1s3v2"
    ADD CONSTRAINT u1s3v2_pkey PRIMARY KEY ("Id");


--
-- TOC entry 2982 (class 2606 OID 25019)
-- Name: v v_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.v
    ADD CONSTRAINT v_pkey PRIMARY KEY (id);


-- Completed on 2023-05-19 11:32:47

--
-- PostgreSQL database dump complete
--

