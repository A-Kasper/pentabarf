--
-- PostgreSQL database dump
--

SET client_encoding = 'UNICODE';
SET check_function_bodies = false;

SET search_path = public, pg_catalog;

--
-- Data for TOC entry 3 (OID 67170)
-- Name: attachment_type; Type: TABLE DATA; Schema: public; Owner: pentabarf
--

INSERT INTO attachment_type (attachment_type_id, tag, rank) VALUES (1, 'slides', 1);
INSERT INTO attachment_type (attachment_type_id, tag, rank) VALUES (2, 'paper', 2);
INSERT INTO attachment_type (attachment_type_id, tag, rank) VALUES (3, 'other', 3);
INSERT INTO attachment_type (attachment_type_id, tag, rank) VALUES (4, 'audio', 4);
INSERT INTO attachment_type (attachment_type_id, tag, rank) VALUES (5, 'video', 5);


--
-- TOC entry 2 (OID 67168)
-- Name: attachment_type_attachment_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pentabarf
--

SELECT pg_catalog.setval('attachment_type_attachment_type_id_seq', 5, true);


