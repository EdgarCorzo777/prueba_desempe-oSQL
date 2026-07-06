--
-- PostgreSQL database dump
--

\restrict CFRTuvWn5AJnZwZdgcMPLBGlQPvJD7XvzLkf311L4RflIwMql6sFY5i98jD2Kxt

-- Dumped from database version 16.14 (Debian 16.14-1.pgdg13+1)
-- Dumped by pg_dump version 16.14 (Ubuntu 16.14-0ubuntu0.24.04.1)

-- Started on 2026-07-06 10:44:41 -05

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
-- TOC entry 218 (class 1259 OID 16482)
-- Name: riwi_category; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.riwi_category (
    category_id integer NOT NULL,
    category_name character varying(100) NOT NULL
);


ALTER TABLE public.riwi_category OWNER TO admin;

--
-- TOC entry 217 (class 1259 OID 16481)
-- Name: riwi_category_category_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.riwi_category_category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.riwi_category_category_id_seq OWNER TO admin;

--
-- TOC entry 3499 (class 0 OID 0)
-- Dependencies: 217
-- Name: riwi_category_category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.riwi_category_category_id_seq OWNED BY public.riwi_category.category_id;


--
-- TOC entry 216 (class 1259 OID 16473)
-- Name: riwi_city; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.riwi_city (
    city_id integer NOT NULL,
    city_name character varying(100) NOT NULL
);


ALTER TABLE public.riwi_city OWNER TO admin;

--
-- TOC entry 215 (class 1259 OID 16472)
-- Name: riwi_city_city_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.riwi_city_city_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.riwi_city_city_id_seq OWNER TO admin;

--
-- TOC entry 3500 (class 0 OID 0)
-- Dependencies: 215
-- Name: riwi_city_city_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.riwi_city_city_id_seq OWNED BY public.riwi_city.city_id;


--
-- TOC entry 228 (class 1259 OID 16547)
-- Name: riwi_movement; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.riwi_movement (
    movement_id integer NOT NULL,
    movement_date date NOT NULL,
    purchase_id integer NOT NULL,
    warehouse_id integer NOT NULL,
    product_id integer NOT NULL,
    quantity integer NOT NULL,
    unit_price numeric(12,2) NOT NULL,
    movement_type character varying(10) NOT NULL
);


ALTER TABLE public.riwi_movement OWNER TO admin;

--
-- TOC entry 227 (class 1259 OID 16546)
-- Name: riwi_movement_movement_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.riwi_movement_movement_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.riwi_movement_movement_id_seq OWNER TO admin;

--
-- TOC entry 3501 (class 0 OID 0)
-- Dependencies: 227
-- Name: riwi_movement_movement_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.riwi_movement_movement_id_seq OWNED BY public.riwi_movement.movement_id;


--
-- TOC entry 222 (class 1259 OID 16505)
-- Name: riwi_product; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.riwi_product (
    product_id integer NOT NULL,
    product_name character varying(150) NOT NULL,
    category_id integer NOT NULL
);


ALTER TABLE public.riwi_product OWNER TO admin;

--
-- TOC entry 221 (class 1259 OID 16504)
-- Name: riwi_product_product_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.riwi_product_product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.riwi_product_product_id_seq OWNER TO admin;

--
-- TOC entry 3502 (class 0 OID 0)
-- Dependencies: 221
-- Name: riwi_product_product_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.riwi_product_product_id_seq OWNED BY public.riwi_product.product_id;


--
-- TOC entry 226 (class 1259 OID 16533)
-- Name: riwi_purchase; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.riwi_purchase (
    purchase_id integer NOT NULL,
    po_number character varying(50) NOT NULL,
    supplier_id integer NOT NULL
);


ALTER TABLE public.riwi_purchase OWNER TO admin;

--
-- TOC entry 225 (class 1259 OID 16532)
-- Name: riwi_purchase_purchase_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.riwi_purchase_purchase_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.riwi_purchase_purchase_id_seq OWNER TO admin;

--
-- TOC entry 3503 (class 0 OID 0)
-- Dependencies: 225
-- Name: riwi_purchase_purchase_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.riwi_purchase_purchase_id_seq OWNED BY public.riwi_purchase.purchase_id;


--
-- TOC entry 220 (class 1259 OID 16491)
-- Name: riwi_supplier; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.riwi_supplier (
    supplier_id integer NOT NULL,
    supplier_name character varying(150) NOT NULL,
    city_id integer NOT NULL
);


ALTER TABLE public.riwi_supplier OWNER TO admin;

--
-- TOC entry 219 (class 1259 OID 16490)
-- Name: riwi_supplier_supplier_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.riwi_supplier_supplier_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.riwi_supplier_supplier_id_seq OWNER TO admin;

--
-- TOC entry 3504 (class 0 OID 0)
-- Dependencies: 219
-- Name: riwi_supplier_supplier_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.riwi_supplier_supplier_id_seq OWNED BY public.riwi_supplier.supplier_id;


--
-- TOC entry 224 (class 1259 OID 16519)
-- Name: riwi_warehouse; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.riwi_warehouse (
    warehouse_id integer NOT NULL,
    warehouse_name character varying(150) NOT NULL,
    city_id integer NOT NULL
);


ALTER TABLE public.riwi_warehouse OWNER TO admin;

--
-- TOC entry 223 (class 1259 OID 16518)
-- Name: riwi_warehouse_warehouse_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.riwi_warehouse_warehouse_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.riwi_warehouse_warehouse_id_seq OWNER TO admin;

--
-- TOC entry 3505 (class 0 OID 0)
-- Dependencies: 223
-- Name: riwi_warehouse_warehouse_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.riwi_warehouse_warehouse_id_seq OWNED BY public.riwi_warehouse.warehouse_id;


--
-- TOC entry 3298 (class 2604 OID 16485)
-- Name: riwi_category category_id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.riwi_category ALTER COLUMN category_id SET DEFAULT nextval('public.riwi_category_category_id_seq'::regclass);


--
-- TOC entry 3297 (class 2604 OID 16476)
-- Name: riwi_city city_id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.riwi_city ALTER COLUMN city_id SET DEFAULT nextval('public.riwi_city_city_id_seq'::regclass);


--
-- TOC entry 3303 (class 2604 OID 16550)
-- Name: riwi_movement movement_id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.riwi_movement ALTER COLUMN movement_id SET DEFAULT nextval('public.riwi_movement_movement_id_seq'::regclass);


--
-- TOC entry 3300 (class 2604 OID 16508)
-- Name: riwi_product product_id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.riwi_product ALTER COLUMN product_id SET DEFAULT nextval('public.riwi_product_product_id_seq'::regclass);


--
-- TOC entry 3302 (class 2604 OID 16536)
-- Name: riwi_purchase purchase_id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.riwi_purchase ALTER COLUMN purchase_id SET DEFAULT nextval('public.riwi_purchase_purchase_id_seq'::regclass);


--
-- TOC entry 3299 (class 2604 OID 16494)
-- Name: riwi_supplier supplier_id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.riwi_supplier ALTER COLUMN supplier_id SET DEFAULT nextval('public.riwi_supplier_supplier_id_seq'::regclass);


--
-- TOC entry 3301 (class 2604 OID 16522)
-- Name: riwi_warehouse warehouse_id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.riwi_warehouse ALTER COLUMN warehouse_id SET DEFAULT nextval('public.riwi_warehouse_warehouse_id_seq'::regclass);


--
-- TOC entry 3483 (class 0 OID 16482)
-- Dependencies: 218
-- Data for Name: riwi_category; Type: TABLE DATA; Schema: public; Owner: admin
--

INSERT INTO public.riwi_category VALUES (1, 'Herramienta');
INSERT INTO public.riwi_category VALUES (2, 'Consumible');
INSERT INTO public.riwi_category VALUES (3, 'EPP');


--
-- TOC entry 3481 (class 0 OID 16473)
-- Dependencies: 216
-- Data for Name: riwi_city; Type: TABLE DATA; Schema: public; Owner: admin
--

INSERT INTO public.riwi_city VALUES (1, 'Cartagena');
INSERT INTO public.riwi_city VALUES (2, 'Barranquilla');
INSERT INTO public.riwi_city VALUES (3, 'Santa Marta');


--
-- TOC entry 3493 (class 0 OID 16547)
-- Dependencies: 228
-- Data for Name: riwi_movement; Type: TABLE DATA; Schema: public; Owner: admin
--

INSERT INTO public.riwi_movement VALUES (1, '2026-04-01', 1, 1, 1, 148, 115388.00, 'OUT');
INSERT INTO public.riwi_movement VALUES (2, '2026-02-14', 2, 1, 2, 27, 35506.00, 'IN');
INSERT INTO public.riwi_movement VALUES (3, '2026-01-01', 3, 1, 3, 70, 14290.00, 'IN');


--
-- TOC entry 3487 (class 0 OID 16505)
-- Dependencies: 222
-- Data for Name: riwi_product; Type: TABLE DATA; Schema: public; Owner: admin
--

INSERT INTO public.riwi_product VALUES (1, 'Disco de Corte 4.5', 1);
INSERT INTO public.riwi_product VALUES (2, 'Electrodo E6013', 2);
INSERT INTO public.riwi_product VALUES (3, 'Guante Nitrilo', 3);
INSERT INTO public.riwi_product VALUES (4, 'Casco Industrial', 3);


--
-- TOC entry 3491 (class 0 OID 16533)
-- Dependencies: 226
-- Data for Name: riwi_purchase; Type: TABLE DATA; Schema: public; Owner: admin
--

INSERT INTO public.riwi_purchase VALUES (1, 'PO-1049', 1);
INSERT INTO public.riwi_purchase VALUES (2, 'PO-1041', 1);
INSERT INTO public.riwi_purchase VALUES (3, 'PO-1022', 2);
INSERT INTO public.riwi_purchase VALUES (4, 'PO-1075', 1);
INSERT INTO public.riwi_purchase VALUES (5, 'PO-1091', 2);
INSERT INTO public.riwi_purchase VALUES (6, 'PO-1059', 1);
INSERT INTO public.riwi_purchase VALUES (7, 'PO-1035', 2);
INSERT INTO public.riwi_purchase VALUES (8, 'PO-1032', 3);
INSERT INTO public.riwi_purchase VALUES (9, 'PO-1009', 3);
INSERT INTO public.riwi_purchase VALUES (10, 'PO-1040', 1);
INSERT INTO public.riwi_purchase VALUES (11, 'PO-1023', 1);
INSERT INTO public.riwi_purchase VALUES (12, 'PO-1029', 2);
INSERT INTO public.riwi_purchase VALUES (13, 'PO-1094', 2);
INSERT INTO public.riwi_purchase VALUES (14, 'PO-1034', 2);
INSERT INTO public.riwi_purchase VALUES (15, 'PO-1043', 2);
INSERT INTO public.riwi_purchase VALUES (16, 'PO-1083', 1);
INSERT INTO public.riwi_purchase VALUES (17, 'PO-1036', 1);


--
-- TOC entry 3485 (class 0 OID 16491)
-- Dependencies: 220
-- Data for Name: riwi_supplier; Type: TABLE DATA; Schema: public; Owner: admin
--

INSERT INTO public.riwi_supplier VALUES (2, 'Industriales S.A.S', 2);
INSERT INTO public.riwi_supplier VALUES (3, 'Suministros Global SAS', 3);
INSERT INTO public.riwi_supplier VALUES (4, 'Materiales Mbappe', 2);
INSERT INTO public.riwi_supplier VALUES (1, 'Hierro duro (Actualizado)', 1);


--
-- TOC entry 3489 (class 0 OID 16519)
-- Dependencies: 224
-- Data for Name: riwi_warehouse; Type: TABLE DATA; Schema: public; Owner: admin
--

INSERT INTO public.riwi_warehouse VALUES (1, 'Bodega Costa', 3);
INSERT INTO public.riwi_warehouse VALUES (2, 'Centro Logistico Norte', 1);
INSERT INTO public.riwi_warehouse VALUES (3, 'Bodega Central', 2);


--
-- TOC entry 3506 (class 0 OID 0)
-- Dependencies: 217
-- Name: riwi_category_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.riwi_category_category_id_seq', 3, true);


--
-- TOC entry 3507 (class 0 OID 0)
-- Dependencies: 215
-- Name: riwi_city_city_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.riwi_city_city_id_seq', 3, true);


--
-- TOC entry 3508 (class 0 OID 0)
-- Dependencies: 227
-- Name: riwi_movement_movement_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.riwi_movement_movement_id_seq', 3, true);


--
-- TOC entry 3509 (class 0 OID 0)
-- Dependencies: 221
-- Name: riwi_product_product_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.riwi_product_product_id_seq', 5, true);


--
-- TOC entry 3510 (class 0 OID 0)
-- Dependencies: 225
-- Name: riwi_purchase_purchase_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.riwi_purchase_purchase_id_seq', 17, true);


--
-- TOC entry 3511 (class 0 OID 0)
-- Dependencies: 219
-- Name: riwi_supplier_supplier_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.riwi_supplier_supplier_id_seq', 4, true);


--
-- TOC entry 3512 (class 0 OID 0)
-- Dependencies: 223
-- Name: riwi_warehouse_warehouse_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.riwi_warehouse_warehouse_id_seq', 3, true);


--
-- TOC entry 3309 (class 2606 OID 16489)
-- Name: riwi_category riwi_category_category_name_key; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.riwi_category
    ADD CONSTRAINT riwi_category_category_name_key UNIQUE (category_name);


--
-- TOC entry 3311 (class 2606 OID 16487)
-- Name: riwi_category riwi_category_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.riwi_category
    ADD CONSTRAINT riwi_category_pkey PRIMARY KEY (category_id);


--
-- TOC entry 3305 (class 2606 OID 16480)
-- Name: riwi_city riwi_city_city_name_key; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.riwi_city
    ADD CONSTRAINT riwi_city_city_name_key UNIQUE (city_name);


--
-- TOC entry 3307 (class 2606 OID 16478)
-- Name: riwi_city riwi_city_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.riwi_city
    ADD CONSTRAINT riwi_city_pkey PRIMARY KEY (city_id);


--
-- TOC entry 3329 (class 2606 OID 16552)
-- Name: riwi_movement riwi_movement_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.riwi_movement
    ADD CONSTRAINT riwi_movement_pkey PRIMARY KEY (movement_id);


--
-- TOC entry 3317 (class 2606 OID 16510)
-- Name: riwi_product riwi_product_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.riwi_product
    ADD CONSTRAINT riwi_product_pkey PRIMARY KEY (product_id);


--
-- TOC entry 3319 (class 2606 OID 16512)
-- Name: riwi_product riwi_product_product_name_key; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.riwi_product
    ADD CONSTRAINT riwi_product_product_name_key UNIQUE (product_name);


--
-- TOC entry 3325 (class 2606 OID 16538)
-- Name: riwi_purchase riwi_purchase_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.riwi_purchase
    ADD CONSTRAINT riwi_purchase_pkey PRIMARY KEY (purchase_id);


--
-- TOC entry 3327 (class 2606 OID 16540)
-- Name: riwi_purchase riwi_purchase_po_number_key; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.riwi_purchase
    ADD CONSTRAINT riwi_purchase_po_number_key UNIQUE (po_number);


--
-- TOC entry 3313 (class 2606 OID 16496)
-- Name: riwi_supplier riwi_supplier_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.riwi_supplier
    ADD CONSTRAINT riwi_supplier_pkey PRIMARY KEY (supplier_id);


--
-- TOC entry 3315 (class 2606 OID 16498)
-- Name: riwi_supplier riwi_supplier_supplier_name_key; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.riwi_supplier
    ADD CONSTRAINT riwi_supplier_supplier_name_key UNIQUE (supplier_name);


--
-- TOC entry 3321 (class 2606 OID 16524)
-- Name: riwi_warehouse riwi_warehouse_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.riwi_warehouse
    ADD CONSTRAINT riwi_warehouse_pkey PRIMARY KEY (warehouse_id);


--
-- TOC entry 3323 (class 2606 OID 16526)
-- Name: riwi_warehouse riwi_warehouse_warehouse_name_key; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.riwi_warehouse
    ADD CONSTRAINT riwi_warehouse_warehouse_name_key UNIQUE (warehouse_name);


--
-- TOC entry 3334 (class 2606 OID 16563)
-- Name: riwi_movement riwi_movement_product_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.riwi_movement
    ADD CONSTRAINT riwi_movement_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.riwi_product(product_id);


--
-- TOC entry 3335 (class 2606 OID 16553)
-- Name: riwi_movement riwi_movement_purchase_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.riwi_movement
    ADD CONSTRAINT riwi_movement_purchase_id_fkey FOREIGN KEY (purchase_id) REFERENCES public.riwi_purchase(purchase_id);


--
-- TOC entry 3336 (class 2606 OID 16558)
-- Name: riwi_movement riwi_movement_warehouse_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.riwi_movement
    ADD CONSTRAINT riwi_movement_warehouse_id_fkey FOREIGN KEY (warehouse_id) REFERENCES public.riwi_warehouse(warehouse_id);


--
-- TOC entry 3331 (class 2606 OID 16513)
-- Name: riwi_product riwi_product_category_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.riwi_product
    ADD CONSTRAINT riwi_product_category_id_fkey FOREIGN KEY (category_id) REFERENCES public.riwi_category(category_id);


--
-- TOC entry 3333 (class 2606 OID 16541)
-- Name: riwi_purchase riwi_purchase_supplier_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.riwi_purchase
    ADD CONSTRAINT riwi_purchase_supplier_id_fkey FOREIGN KEY (supplier_id) REFERENCES public.riwi_supplier(supplier_id);


--
-- TOC entry 3330 (class 2606 OID 16499)
-- Name: riwi_supplier riwi_supplier_city_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.riwi_supplier
    ADD CONSTRAINT riwi_supplier_city_id_fkey FOREIGN KEY (city_id) REFERENCES public.riwi_city(city_id);


--
-- TOC entry 3332 (class 2606 OID 16527)
-- Name: riwi_warehouse riwi_warehouse_city_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.riwi_warehouse
    ADD CONSTRAINT riwi_warehouse_city_id_fkey FOREIGN KEY (city_id) REFERENCES public.riwi_city(city_id);


-- Completed on 2026-07-06 10:44:41 -05

--
-- PostgreSQL database dump complete
--

\unrestrict CFRTuvWn5AJnZwZdgcMPLBGlQPvJD7XvzLkf311L4RflIwMql6sFY5i98jD2Kxt

