--
-- PostgreSQL database dump
--

-- Dumped from database version 12.4
-- Dumped by pg_dump version 12.4

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
-- Name: auth_group; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


--
-- Name: jobs_job; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.jobs_job (
    id integer NOT NULL,
    image character varying(100) NOT NULL,
    summary character varying(2000) NOT NULL,
    name character varying(200) NOT NULL,
    demo_url character varying(200) NOT NULL,
    github_url character varying(200) NOT NULL,
    admin_credentials character varying(200) NOT NULL,
    is_personal boolean NOT NULL
);


--
-- Name: jobs_job_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.jobs_job_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: jobs_job_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.jobs_job_id_seq OWNED BY public.jobs_job.id;


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: jobs_job id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.jobs_job ALTER COLUMN id SET DEFAULT nextval('public.jobs_job_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add user	4	add_user
14	Can change user	4	change_user
15	Can delete user	4	delete_user
16	Can view user	4	view_user
17	Can add content type	5	add_contenttype
18	Can change content type	5	change_contenttype
19	Can delete content type	5	delete_contenttype
20	Can view content type	5	view_contenttype
21	Can add session	6	add_session
22	Can change session	6	change_session
23	Can delete session	6	delete_session
24	Can view session	6	view_session
25	Can add job	7	add_job
26	Can change job	7	change_job
27	Can delete job	7	delete_job
28	Can view job	7	view_job
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$216000$S9ec7UqMvOYg$mC3GPGDSMMoGFk6Z6EL209LnZVWEQeVbCbDWqcjeOnU=	2020-09-22 23:27:17.267495-04	t	minh				t	t	2020-09-22 23:26:55.42949-04
2	pbkdf2_sha256$216000$oAuZgPPis5Yx$Zo3cpUuOp+zHdfdlZcBejpD6xotmpA7va3Ozf1+l70w=	2020-09-27 15:19:21.713965-04	t	minhn				t	t	2020-09-27 15:19:04.267008-04
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2020-09-22 23:33:47.836919-04	1	Job object (1)	1	[{"added": {}}]	7	1
2	2020-09-22 23:42:22.46142-04	1	Job object (1)	2	[]	7	1
3	2020-09-27 15:20:10.799718-04	1	Job object (1)	2	[{"changed": {"fields": ["Image"]}}]	7	2
4	2020-09-27 15:20:23.005691-04	1	Job object (1)	2	[]	7	2
5	2020-09-27 15:42:08.659348-04	2	This is Restaurant management system project which I made using Laravel PHP and javascript	1	[{"added": {}}]	7	2
6	2020-09-27 16:10:39.768251-04	2	This is Restaurant management system project which I made using Laravel PHP and javascript	2	[{"changed": {"fields": ["Image"]}}]	7	2
7	2020-09-27 16:13:16.517743-04	3	Ecommerce website made using MERN stack with Redux and Tailwind CSS	1	[{"added": {}}]	7	2
8	2020-09-27 16:26:14.408074-04	1	I worked at Orbis Communcations for 8 months as a Co-op Software developer	2	[{"changed": {"fields": ["Summary"]}}]	7	2
9	2020-09-28 20:43:25.097015-04	3	Ecommerce website made using MERN stack with Redux and Tailwind CSS	2	[{"changed": {"fields": ["Name"]}}]	7	2
10	2020-09-28 20:43:43.606287-04	2	This is Restaurant management system project which I made using Laravel PHP and javascript	2	[{"changed": {"fields": ["Name"]}}]	7	2
11	2020-09-28 20:44:18.607001-04	2	This is Restaurant management system project which I made using Laravel PHP and javascript	2	[]	7	2
12	2020-09-28 20:44:35.663114-04	1	I worked at Orbis Communcations for 8 months as a Co-op Software developer	2	[{"changed": {"fields": ["Name"]}}]	7	2
13	2020-09-28 21:41:01.956867-04	1	It is a B2B platform developed to solve experiential learning management which is trusted by many leading Canadian post-secondary institutions such as University of Victoria, University of Alberta, Un	2	[{"changed": {"fields": ["Name", "Summary"]}}]	7	2
14	2020-09-28 21:48:53.439286-04	1	It is a B2B platform developed to solve experiential learning management which is trusted by many leading Canadian post-secondary institutions. It has many modules involved quantifying, tracking, and 	2	[{"changed": {"fields": ["Url", "Summary"]}}]	7	2
15	2020-09-28 21:49:09.947718-04	3	Ecommerce website made using MERN stack with Redux and Tailwind CSS	2	[{"changed": {"fields": ["Url"]}}]	7	2
16	2020-09-28 23:19:13.508694-04	2	A web application developed with Laravel PHP following MVC pattern that allow users to manage their own restaurant systems including many functionalities from User Authentication,  Inventory and Recip	2	[{"changed": {"fields": ["Github url", "Demo url", "Admin credentials", "Summary"]}}]	7	2
17	2020-09-28 23:19:46.292692-04	2	A web application developed with Laravel PHP following MVC pattern that allow users to manage their own restaurant systems including many functionalities from User Authentication,  Inventory and Recip	2	[{"changed": {"fields": ["Image"]}}]	7	2
18	2020-09-29 11:51:09.535808-04	3	Ecommerce website made using MERN stack with Redux and Tailwind CSS	2	[{"changed": {"fields": ["Github url"]}}]	7	2
19	2020-09-29 11:52:12.768983-04	3	Ecommerce website made using MERN stack with Redux and Tailwind CSS	2	[{"changed": {"fields": ["Demo url"]}}]	7	2
20	2020-09-29 11:52:22.727998-04	2	A web application developed with Laravel PHP following MVC pattern that allow users to manage their own restaurant systems including many functionalities from User Authentication,  Inventory and Recip	2	[]	7	2
21	2020-09-29 12:42:52.210108-04	1	It is a B2B platform developed to solve experiential learning management which is trusted by many leading Canadian post-secondary institutions. It has many modules involved quantifying, tracking, and 	2	[{"changed": {"fields": ["Is personal"]}}]	7	2
22	2020-09-29 12:43:29.303683-04	1	It is a B2B platform developed to solve experiential learning management which is trusted by many leading Canadian post-secondary institutions. It has many modules involved quantifying, tracking, and 	2	[]	7	2
23	2020-09-29 12:47:44.986257-04	1	It is a B2B platform developed to solve experiential learning management which is trusted by many leading Canadian post-secondary institutions. It has many modules involved quantifying, tracking, and 	2	[{"changed": {"fields": ["Image"]}}]	7	2
24	2020-09-29 12:49:43.111439-04	2	A web application developed with Laravel PHP following MVC pattern that allow users to manage their own restaurant systems including many functionalities from User Authentication,  Inventory and Recip	2	[{"changed": {"fields": ["Summary"]}}]	7	2
25	2020-09-29 12:49:49.111258-04	2	A web application developed with Laravel PHP following MVC pattern that allow users to manage their own restaurant systems including many functionalities from User Authentication,  Inventory and Recip	2	[]	7	2
26	2020-09-29 16:14:09.04061-04	1	It is a B2B platform developed to solve experiential learning management which is trusted by many leading Canadian post-secondary institutions. It has many modules involved quantifying, tracking, and 	2	[]	7	2
27	2020-09-29 16:18:36.747328-04	1	The project I worked with during my 1 year co-op experienceIt is a B2B platform developed to solve experiential learning management which is trusted by many leading Canadian post-secondary institution	2	[{"changed": {"fields": ["Summary"]}}]	7	2
28	2020-09-29 16:40:41.502509-04	1	The project I worked with during my 1 year co-op experienceIt is a B2B platform developed to solve experiential learning management which is trusted by many leading Canadian post-secondary institution	2	[{"changed": {"fields": ["Name"]}}]	7	2
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	jobs	job
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2020-09-22 23:24:09.570923-04
2	auth	0001_initial	2020-09-22 23:24:09.634885-04
3	admin	0001_initial	2020-09-22 23:24:09.693868-04
4	admin	0002_logentry_remove_auto_add	2020-09-22 23:24:09.708844-04
5	admin	0003_logentry_add_action_flag_choices	2020-09-22 23:24:09.715839-04
6	contenttypes	0002_remove_content_type_name	2020-09-22 23:24:09.739827-04
7	auth	0002_alter_permission_name_max_length	2020-09-22 23:24:09.75082-04
8	auth	0003_alter_user_email_max_length	2020-09-22 23:24:09.767809-04
9	auth	0004_alter_user_username_opts	2020-09-22 23:24:09.779804-04
10	auth	0005_alter_user_last_login_null	2020-09-22 23:24:09.786816-04
11	auth	0006_require_contenttypes_0002	2020-09-22 23:24:09.792813-04
12	auth	0007_alter_validators_add_error_messages	2020-09-22 23:24:09.799791-04
13	auth	0008_alter_user_username_max_length	2020-09-22 23:24:09.822778-04
14	auth	0009_alter_user_last_name_max_length	2020-09-22 23:24:09.83179-04
15	auth	0010_alter_group_name_max_length	2020-09-22 23:24:09.850764-04
16	auth	0011_update_proxy_permissions	2020-09-22 23:24:09.863764-04
17	auth	0012_alter_user_first_name_max_length	2020-09-22 23:24:09.871759-04
18	jobs	0001_initial	2020-09-22 23:24:09.883743-04
19	sessions	0001_initial	2020-09-22 23:24:09.899747-04
20	jobs	0002_job_name	2020-09-28 20:42:50.406121-04
21	jobs	0003_auto_20200928_2142	2020-09-28 21:43:22.414716-04
22	jobs	0004_job_url	2020-09-28 21:43:22.432705-04
23	jobs	0005_auto_20200928_2220	2020-09-28 22:20:52.405174-04
24	jobs	0006_job_admin_credentials	2020-09-28 22:29:18.157582-04
25	jobs	0007_job_is_personal	2020-09-29 11:44:50.680934-04
26	jobs	0008_auto_20200929_1151	2020-09-29 11:51:05.190812-04
27	jobs	0009_auto_20200929_1242	2020-09-29 12:42:38.215486-04
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
rckjz0l5bzus7sp8p2mdg1rffhcuw806	.eJxVjEEOwiAQRe_C2hCBjoBL956BMJ0ZqRpISrsy3l2bdKHb_977L5XyupS0dp7TROqsjDr8bpjHB9cN0D3XW9Njq8s8od4UvdOur434edndv4OSe_nWQaIZ-CSOMlhnSMSTQAYZAwJF9A6jAzmyHVDIR-uG4NkAYAjCTtT7AwAUOIg:1kKvR7:DPxaLxjI7p5VAO1lKU4f0duiFUYrl56LR4BwJGM9WrQ	2020-10-06 23:27:17.268496-04
psuzeavkb106u2bjevws5w4f4m1ulh8j	.eJxVjMsOgyAUBf-FdUMuGFG67L7fQO4Dim0DiejK9N-riYt2OzPnbCrguuSwtjiHSdRVWXX5ZYT8iuUQ8sTyqJprWeaJ9JHo0zZ9rxLft7P9O8jY8r4eXUxAAN4LG7SQDBghQgMdoeUBPbjke040RI9WRtlBj2Acs-1iUp8v8xQ4cw:1kMcCf:S40yIVUqFVvZwfd6IEFm1rxiqpRYihK-ykpqDKry50Q	2020-10-11 15:19:21.717962-04
\.


--
-- Data for Name: jobs_job; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.jobs_job (id, image, summary, name, demo_url, github_url, admin_credentials, is_personal) FROM stdin;
1	images/OUTCOME-sml-logo_O2FhSpU.png	The project I worked with during my 1 year co-op experienceIt is a B2B platform developed to solve experiential learning management which is trusted by many leading Canadian post-secondary institutions. It has many modules involved quantifying, tracking, and cataloguing all experiential learning offerings into one streamlined, and easily searchable, digital library and also build extractable data sets that reveal an in-depth perspective on student engagement, skills, and growth opportunity areas	OUTCOME - ORBIS COMMUNICATIONS	https://orbiscommunications.com/outcome/			f
3	images/mern_FUDpDme.jpg	Ecommerce website made using MERN stack with Redux and Tailwind CSS	Ecommerce website		https://github.com/benjaminnd/ecommerce		t
2	images/Laravel_y1Wny10.jpg	A web application developed with Laravel PHP following MVC pattern that allow users to manage their own restaurant systems including many functionalities from User Authentication,  Inventory and Recipe Management,  to POS support and End of Day analytics. This is also my Capstone project for semester 6th that I got 90 grade	Restaurant management App	http://gentle-lake-60384.herokuapp.com/	https://github.com/benjaminnd/myCapstone2019-Restaurant-Management-App	Admin credentials (username/password): minh.chef@restaurant.ca/12345	t
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 28, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 2, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 28, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 7, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 27, true);


--
-- Name: jobs_job_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.jobs_job_id_seq', 3, true);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: jobs_job jobs_job_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.jobs_job
    ADD CONSTRAINT jobs_job_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

