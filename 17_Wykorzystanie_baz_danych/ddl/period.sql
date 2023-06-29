--
-- PostgreSQL database dump
--

-- Dumped from database version 13.8 (Ubuntu 13.8-1.pgdg18.04+1)
-- Dumped by pg_dump version 13.8 (Ubuntu 13.8-1.pgdg18.04+1)

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
-- Name: period_type; Type: TABLE; Schema: public; Owner: myuser
--

CREATE TABLE public.period_type (
    id character varying(36) NOT NULL
);


ALTER TABLE public.period_type OWNER TO myuser;

--
-- Data for Name: period_type; Type: TABLE DATA; Schema: public; Owner: myuser
--

INSERT INTO public.period_type (id) VALUES ('PERIOD_TYPE_YEAR');
INSERT INTO public.period_type (id) VALUES ('PERIOD_TYPE_QUARTER');
INSERT INTO public.period_type (id) VALUES ('PERIOD_TYPE_MONTH');


--
-- Name: period_type period_type_pkey; Type: CONSTRAINT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY public.period_type
    ADD CONSTRAINT period_type_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 13.8 (Ubuntu 13.8-1.pgdg18.04+1)
-- Dumped by pg_dump version 13.8 (Ubuntu 13.8-1.pgdg18.04+1)

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
-- Name: period_dimension; Type: TABLE; Schema: public; Owner: myuser
--

CREATE TABLE public.period_dimension (
    id uuid NOT NULL,
    value character varying(144) NOT NULL,
    name character varying(144) NOT NULL,
    "order" integer DEFAULT nextval('public.dimension_order_seq'::regclass) NOT NULL,
    created timestamp without time zone DEFAULT now(),
    modified timestamp without time zone DEFAULT now(),
    level integer NOT NULL,
    leaf boolean NOT NULL,
    type_id character varying(36) NOT NULL,
    parent_id uuid
);


ALTER TABLE public.period_dimension OWNER TO myuser;

--
-- Data for Name: period_dimension; Type: TABLE DATA; Schema: public; Owner: myuser
--

INSERT INTO public.period_dimension (id, value, name, "order", created, modified, level, leaf, type_id, parent_id) VALUES ('91874745-8caa-49bf-aa3b-88ccdb9972a8', '2014Y', '2014', 1, '2023-02-16 13:58:34.575266', '2023-02-16 13:58:34.575266', 0, false, 'PERIOD_TYPE_YEAR', NULL);
INSERT INTO public.period_dimension (id, value, name, "order", created, modified, level, leaf, type_id, parent_id) VALUES ('8e2dfb93-624a-46ec-8301-f5fad842726a', '2014Q1', '1st Quarter 2014', 2, '2023-02-16 13:58:34.575266', '2023-02-16 13:58:34.575266', 0, false, 'PERIOD_TYPE_QUARTER', '91874745-8caa-49bf-aa3b-88ccdb9972a8');
INSERT INTO public.period_dimension (id, value, name, "order", created, modified, level, leaf, type_id, parent_id) VALUES ('70497256-dc52-49b9-9c74-82097b193069', '2014M01', 'Jan 2014', 3, '2023-02-16 13:58:34.575266', '2023-02-16 13:58:34.575266', 0, true, 'PERIOD_TYPE_MONTH', '8e2dfb93-624a-46ec-8301-f5fad842726a');
INSERT INTO public.period_dimension (id, value, name, "order", created, modified, level, leaf, type_id, parent_id) VALUES ('bc5bebdc-073f-4ee4-8e17-5d9a488cd302', '2014M02', 'Feb 2014', 4, '2023-02-16 13:58:34.575266', '2023-02-16 13:58:34.575266', 0, true, 'PERIOD_TYPE_MONTH', '8e2dfb93-624a-46ec-8301-f5fad842726a');
INSERT INTO public.period_dimension (id, value, name, "order", created, modified, level, leaf, type_id, parent_id) VALUES ('27168c22-d1f8-49f4-9067-9bc5fe7f1f17', '2014M03', 'Mar 2014', 5, '2023-02-16 13:58:34.575266', '2023-02-16 13:58:34.575266', 0, true, 'PERIOD_TYPE_MONTH', '8e2dfb93-624a-46ec-8301-f5fad842726a');
INSERT INTO public.period_dimension (id, value, name, "order", created, modified, level, leaf, type_id, parent_id) VALUES ('4e419470-4154-42ee-a2c9-8ba1f4b1cbed', '2014Q2', '2nd Quarter 2014', 6, '2023-02-16 13:58:34.575266', '2023-02-16 13:58:34.575266', 0, false, 'PERIOD_TYPE_QUARTER', '91874745-8caa-49bf-aa3b-88ccdb9972a8');
INSERT INTO public.period_dimension (id, value, name, "order", created, modified, level, leaf, type_id, parent_id) VALUES ('f76ef44e-4863-4b87-8c10-7ba3121a22c9', '2014M04', 'Apr 2014', 7, '2023-02-16 13:58:34.575266', '2023-02-16 13:58:34.575266', 0, true, 'PERIOD_TYPE_MONTH', '4e419470-4154-42ee-a2c9-8ba1f4b1cbed');
INSERT INTO public.period_dimension (id, value, name, "order", created, modified, level, leaf, type_id, parent_id) VALUES ('38e9e19d-06e6-458b-9972-622ad08d8f5e', '2014M05', 'May 2014', 8, '2023-02-16 13:58:34.575266', '2023-02-16 13:58:34.575266', 0, true, 'PERIOD_TYPE_MONTH', '4e419470-4154-42ee-a2c9-8ba1f4b1cbed');
INSERT INTO public.period_dimension (id, value, name, "order", created, modified, level, leaf, type_id, parent_id) VALUES ('733bf8e9-92ba-49ad-ba86-b3f1a9a73ef4', '2014M06', 'Jun 2014', 9, '2023-02-16 13:58:34.575266', '2023-02-16 13:58:34.575266', 0, true, 'PERIOD_TYPE_MONTH', '4e419470-4154-42ee-a2c9-8ba1f4b1cbed');
INSERT INTO public.period_dimension (id, value, name, "order", created, modified, level, leaf, type_id, parent_id) VALUES ('c48eb96d-b0cc-4c4d-baa4-2b49a88ff587', '2014Q3', '3rd Quarter 2014', 10, '2023-02-16 13:58:34.575266', '2023-02-16 13:58:34.575266', 0, false, 'PERIOD_TYPE_QUARTER', '91874745-8caa-49bf-aa3b-88ccdb9972a8');
INSERT INTO public.period_dimension (id, value, name, "order", created, modified, level, leaf, type_id, parent_id) VALUES ('31852471-8a86-462d-be39-8c994e9de665', '2014M07', 'Jul 2014', 11, '2023-02-16 13:58:34.575266', '2023-02-16 13:58:34.575266', 0, true, 'PERIOD_TYPE_MONTH', 'c48eb96d-b0cc-4c4d-baa4-2b49a88ff587');
INSERT INTO public.period_dimension (id, value, name, "order", created, modified, level, leaf, type_id, parent_id) VALUES ('0152c891-19a8-4f97-94c3-662097751616', '2014M08', 'Aug 2014', 12, '2023-02-16 13:58:34.575266', '2023-02-16 13:58:34.575266', 0, true, 'PERIOD_TYPE_MONTH', 'c48eb96d-b0cc-4c4d-baa4-2b49a88ff587');
INSERT INTO public.period_dimension (id, value, name, "order", created, modified, level, leaf, type_id, parent_id) VALUES ('bc35f2cd-6aee-4367-8db2-a4081f7663bc', '2014M09', 'Sep 2014', 13, '2023-02-16 13:58:34.575266', '2023-02-16 13:58:34.575266', 0, true, 'PERIOD_TYPE_MONTH', 'c48eb96d-b0cc-4c4d-baa4-2b49a88ff587');
INSERT INTO public.period_dimension (id, value, name, "order", created, modified, level, leaf, type_id, parent_id) VALUES ('3ab15444-91d8-4ba9-b32e-277bd3165a0d', '2014Q4', '4th Quarter 2014', 14, '2023-02-16 13:58:34.575266', '2023-02-16 13:58:34.575266', 0, false, 'PERIOD_TYPE_QUARTER', '91874745-8caa-49bf-aa3b-88ccdb9972a8');
INSERT INTO public.period_dimension (id, value, name, "order", created, modified, level, leaf, type_id, parent_id) VALUES ('9529eac4-6050-4d72-a3ac-900c9b23d36a', '2014M10', 'Oct 2014', 15, '2023-02-16 13:58:34.575266', '2023-02-16 13:58:34.575266', 0, true, 'PERIOD_TYPE_MONTH', '3ab15444-91d8-4ba9-b32e-277bd3165a0d');
INSERT INTO public.period_dimension (id, value, name, "order", created, modified, level, leaf, type_id, parent_id) VALUES ('b6c63218-fc2d-4471-9413-8724f3a737cb', '2014M11', 'Nov 2014', 16, '2023-02-16 13:58:34.575266', '2023-02-16 13:58:34.575266', 0, true, 'PERIOD_TYPE_MONTH', '3ab15444-91d8-4ba9-b32e-277bd3165a0d');
INSERT INTO public.period_dimension (id, value, name, "order", created, modified, level, leaf, type_id, parent_id) VALUES ('8f7b0e8a-4204-4440-b294-9cfd34343f7a', '2014M12', 'Dec 2014', 17, '2023-02-16 13:58:34.575266', '2023-02-16 13:58:34.575266', 0, true, 'PERIOD_TYPE_MONTH', '3ab15444-91d8-4ba9-b32e-277bd3165a0d');
INSERT INTO public.period_dimension (id, value, name, "order", created, modified, level, leaf, type_id, parent_id) VALUES ('cb98e5bc-5252-471a-9572-bf5589ae1a5d', '2015Y', '2015', 18, '2023-02-16 13:58:34.575266', '2023-02-16 13:58:34.575266', 0, false, 'PERIOD_TYPE_YEAR', NULL);
INSERT INTO public.period_dimension (id, value, name, "order", created, modified, level, leaf, type_id, parent_id) VALUES ('8c4261bb-7fe5-4deb-9616-b538c650be1f', '2015Q1', '1st Quarter 2015', 19, '2023-02-16 13:58:34.575266', '2023-02-16 13:58:34.575266', 0, false, 'PERIOD_TYPE_QUARTER', 'cb98e5bc-5252-471a-9572-bf5589ae1a5d');
INSERT INTO public.period_dimension (id, value, name, "order", created, modified, level, leaf, type_id, parent_id) VALUES ('59eba00a-f4c0-46f7-b024-f24265a9d4b2', '2015M01', 'Jan 2015', 20, '2023-02-16 13:58:34.575266', '2023-02-16 13:58:34.575266', 0, true, 'PERIOD_TYPE_MONTH', '8c4261bb-7fe5-4deb-9616-b538c650be1f');
INSERT INTO public.period_dimension (id, value, name, "order", created, modified, level, leaf, type_id, parent_id) VALUES ('0f84e74d-b9b0-4210-918d-6222ea8fa3f5', '2015M02', 'Feb 2015', 21, '2023-02-16 13:58:34.575266', '2023-02-16 13:58:34.575266', 0, true, 'PERIOD_TYPE_MONTH', '8c4261bb-7fe5-4deb-9616-b538c650be1f');
INSERT INTO public.period_dimension (id, value, name, "order", created, modified, level, leaf, type_id, parent_id) VALUES ('545310e7-953e-4139-ae26-265352f14f6e', '2015M03', 'Mar 2015', 22, '2023-02-16 13:58:34.575266', '2023-02-16 13:58:34.575266', 0, true, 'PERIOD_TYPE_MONTH', '8c4261bb-7fe5-4deb-9616-b538c650be1f');
INSERT INTO public.period_dimension (id, value, name, "order", created, modified, level, leaf, type_id, parent_id) VALUES ('9287ac91-0c68-4e79-bf24-2de9d5b7dcba', '2015Q2', '2nd Quarter 2015', 23, '2023-02-16 13:58:34.575266', '2023-02-16 13:58:34.575266', 0, false, 'PERIOD_TYPE_QUARTER', 'cb98e5bc-5252-471a-9572-bf5589ae1a5d');
INSERT INTO public.period_dimension (id, value, name, "order", created, modified, level, leaf, type_id, parent_id) VALUES ('a68ac553-50e7-4e86-8219-f348c883920f', '2015M04', 'Apr 2015', 24, '2023-02-16 13:58:34.575266', '2023-02-16 13:58:34.575266', 0, true, 'PERIOD_TYPE_MONTH', '9287ac91-0c68-4e79-bf24-2de9d5b7dcba');
INSERT INTO public.period_dimension (id, value, name, "order", created, modified, level, leaf, type_id, parent_id) VALUES ('310911df-ce0b-41ca-95d8-ea095caeda04', '2015M05', 'May 2015', 25, '2023-02-16 13:58:34.575266', '2023-02-16 13:58:34.575266', 0, true, 'PERIOD_TYPE_MONTH', '9287ac91-0c68-4e79-bf24-2de9d5b7dcba');
INSERT INTO public.period_dimension (id, value, name, "order", created, modified, level, leaf, type_id, parent_id) VALUES ('1fcf4c8e-d817-489f-b56e-26870e47c77b', '2015M06', 'Jun 2015', 26, '2023-02-16 13:58:34.575266', '2023-02-16 13:58:34.575266', 0, true, 'PERIOD_TYPE_MONTH', '9287ac91-0c68-4e79-bf24-2de9d5b7dcba');
INSERT INTO public.period_dimension (id, value, name, "order", created, modified, level, leaf, type_id, parent_id) VALUES ('4f66571e-a99c-4cc8-8a06-22a8975a44de', '2015Q3', '3rd Quarter 2015', 27, '2023-02-16 13:58:34.575266', '2023-02-16 13:58:34.575266', 0, false, 'PERIOD_TYPE_QUARTER', 'cb98e5bc-5252-471a-9572-bf5589ae1a5d');
INSERT INTO public.period_dimension (id, value, name, "order", created, modified, level, leaf, type_id, parent_id) VALUES ('da46de77-9054-441f-9393-9965ebf3a9a2', '2015M07', 'Jul 2015', 28, '2023-02-16 13:58:34.575266', '2023-02-16 13:58:34.575266', 0, true, 'PERIOD_TYPE_MONTH', '4f66571e-a99c-4cc8-8a06-22a8975a44de');
INSERT INTO public.period_dimension (id, value, name, "order", created, modified, level, leaf, type_id, parent_id) VALUES ('fc3ac936-4962-4178-b619-f99ca15a098f', '2015M08', 'Aug 2015', 29, '2023-02-16 13:58:34.575266', '2023-02-16 13:58:34.575266', 0, true, 'PERIOD_TYPE_MONTH', '4f66571e-a99c-4cc8-8a06-22a8975a44de');
INSERT INTO public.period_dimension (id, value, name, "order", created, modified, level, leaf, type_id, parent_id) VALUES ('5eb02e75-3cab-4110-b493-28bb6f97833b', '2015M09', 'Sep 2015', 30, '2023-02-16 13:58:34.575266', '2023-02-16 13:58:34.575266', 0, true, 'PERIOD_TYPE_MONTH', '4f66571e-a99c-4cc8-8a06-22a8975a44de');
INSERT INTO public.period_dimension (id, value, name, "order", created, modified, level, leaf, type_id, parent_id) VALUES ('3b717f9e-6789-4fde-8819-377f1abbd147', '2015Q4', '4th Quarter 2015', 31, '2023-02-16 13:58:34.575266', '2023-02-16 13:58:34.575266', 0, false, 'PERIOD_TYPE_QUARTER', 'cb98e5bc-5252-471a-9572-bf5589ae1a5d');
INSERT INTO public.period_dimension (id, value, name, "order", created, modified, level, leaf, type_id, parent_id) VALUES ('56388f30-832b-45dc-9d4a-30e94701ec1f', '2015M10', 'Oct 2015', 32, '2023-02-16 13:58:34.575266', '2023-02-16 13:58:34.575266', 0, true, 'PERIOD_TYPE_MONTH', '3b717f9e-6789-4fde-8819-377f1abbd147');
INSERT INTO public.period_dimension (id, value, name, "order", created, modified, level, leaf, type_id, parent_id) VALUES ('1b419ad6-5e68-4cba-a2c2-9f413ff3c014', '2015M11', 'Nov 2015', 33, '2023-02-16 13:58:34.575266', '2023-02-16 13:58:34.575266', 0, true, 'PERIOD_TYPE_MONTH', '3b717f9e-6789-4fde-8819-377f1abbd147');
INSERT INTO public.period_dimension (id, value, name, "order", created, modified, level, leaf, type_id, parent_id) VALUES ('d3cf0f0e-466d-4e7c-96fe-bdc4bc06e1cc', '2015M12', 'Dec 2015', 34, '2023-02-16 13:58:34.575266', '2023-02-16 13:58:34.575266', 0, true, 'PERIOD_TYPE_MONTH', '3b717f9e-6789-4fde-8819-377f1abbd147');
INSERT INTO public.period_dimension (id, value, name, "order", created, modified, level, leaf, type_id, parent_id) VALUES ('5be87bcb-f96d-44e2-a7ba-eff81f9c5527', '2016Y', '2016', 35, '2023-02-16 13:58:34.575266', '2023-02-16 13:58:34.575266', 0, false, 'PERIOD_TYPE_YEAR', NULL);
INSERT INTO public.period_dimension (id, value, name, "order", created, modified, level, leaf, type_id, parent_id) VALUES ('c4966c15-98d1-437a-8318-087581353577', '2016Q1', '1st Quarter 2016', 36, '2023-02-16 13:58:34.575266', '2023-02-16 13:58:34.575266', 0, false, 'PERIOD_TYPE_QUARTER', '5be87bcb-f96d-44e2-a7ba-eff81f9c5527');
INSERT INTO public.period_dimension (id, value, name, "order", created, modified, level, leaf, type_id, parent_id) VALUES ('5d6720f0-1dab-49a5-9737-c4931fa504f0', '2016M01', 'Jan 2016', 37, '2023-02-16 13:58:34.575266', '2023-02-16 13:58:34.575266', 0, true, 'PERIOD_TYPE_MONTH', 'c4966c15-98d1-437a-8318-087581353577');
INSERT INTO public.period_dimension (id, value, name, "order", created, modified, level, leaf, type_id, parent_id) VALUES ('75971d5c-b83a-41c6-8e28-9166bc01107c', '2016M02', 'Feb 2016', 38, '2023-02-16 13:58:34.575266', '2023-02-16 13:58:34.575266', 0, true, 'PERIOD_TYPE_MONTH', 'c4966c15-98d1-437a-8318-087581353577');
INSERT INTO public.period_dimension (id, value, name, "order", created, modified, level, leaf, type_id, parent_id) VALUES ('a89e8299-bded-4bae-9d58-c0c56b93251d', '2016M03', 'Mar 2016', 39, '2023-02-16 13:58:34.575266', '2023-02-16 13:58:34.575266', 0, true, 'PERIOD_TYPE_MONTH', 'c4966c15-98d1-437a-8318-087581353577');
INSERT INTO public.period_dimension (id, value, name, "order", created, modified, level, leaf, type_id, parent_id) VALUES ('e99d378f-ec10-4f3e-bd7e-fb8000a092b7', '2016Q2', '2nd Quarter 2016', 40, '2023-02-16 13:58:34.575266', '2023-02-16 13:58:34.575266', 0, false, 'PERIOD_TYPE_QUARTER', '5be87bcb-f96d-44e2-a7ba-eff81f9c5527');
INSERT INTO public.period_dimension (id, value, name, "order", created, modified, level, leaf, type_id, parent_id) VALUES ('d14a5f58-a42d-474e-a33b-e69af982488e', '2016M04', 'Apr 2016', 41, '2023-02-16 13:58:34.575266', '2023-02-16 13:58:34.575266', 0, true, 'PERIOD_TYPE_MONTH', 'e99d378f-ec10-4f3e-bd7e-fb8000a092b7');
INSERT INTO public.period_dimension (id, value, name, "order", created, modified, level, leaf, type_id, parent_id) VALUES ('5462cde3-06aa-46e7-ae3b-badc623884d1', '2016M05', 'May 2016', 42, '2023-02-16 13:58:34.575266', '2023-02-16 13:58:34.575266', 0, true, 'PERIOD_TYPE_MONTH', 'e99d378f-ec10-4f3e-bd7e-fb8000a092b7');
INSERT INTO public.period_dimension (id, value, name, "order", created, modified, level, leaf, type_id, parent_id) VALUES ('2c035e3f-e458-439d-a9b7-273efe23edfe', '2016M06', 'Jun 2016', 43, '2023-02-16 13:58:34.575266', '2023-02-16 13:58:34.575266', 0, true, 'PERIOD_TYPE_MONTH', 'e99d378f-ec10-4f3e-bd7e-fb8000a092b7');
INSERT INTO public.period_dimension (id, value, name, "order", created, modified, level, leaf, type_id, parent_id) VALUES ('e7084626-8e37-4363-bdaf-a8492305a162', '2016Q3', '3rd Quarter 2016', 44, '2023-02-16 13:58:34.575266', '2023-02-16 13:58:34.575266', 0, false, 'PERIOD_TYPE_QUARTER', '5be87bcb-f96d-44e2-a7ba-eff81f9c5527');
INSERT INTO public.period_dimension (id, value, name, "order", created, modified, level, leaf, type_id, parent_id) VALUES ('c3742d83-a877-494a-b8c2-085b9edbba70', '2016M07', 'Jul 2016', 45, '2023-02-16 13:58:34.575266', '2023-02-16 13:58:34.575266', 0, true, 'PERIOD_TYPE_MONTH', 'e7084626-8e37-4363-bdaf-a8492305a162');
INSERT INTO public.period_dimension (id, value, name, "order", created, modified, level, leaf, type_id, parent_id) VALUES ('531f26e6-29f9-435e-9f24-b347823a5295', '2016M08', 'Aug 2016', 46, '2023-02-16 13:58:34.575266', '2023-02-16 13:58:34.575266', 0, true, 'PERIOD_TYPE_MONTH', 'e7084626-8e37-4363-bdaf-a8492305a162');
INSERT INTO public.period_dimension (id, value, name, "order", created, modified, level, leaf, type_id, parent_id) VALUES ('d87ad550-2a2c-4942-9548-3d36ab112c73', '2016M09', 'Sep 2016', 47, '2023-02-16 13:58:34.575266', '2023-02-16 13:58:34.575266', 0, true, 'PERIOD_TYPE_MONTH', 'e7084626-8e37-4363-bdaf-a8492305a162');
INSERT INTO public.period_dimension (id, value, name, "order", created, modified, level, leaf, type_id, parent_id) VALUES ('ae3d11ed-0e85-46aa-a1e8-b067851703e2', '2016Q4', '4th Quarter 2016', 48, '2023-02-16 13:58:34.575266', '2023-02-16 13:58:34.575266', 0, false, 'PERIOD_TYPE_QUARTER', '5be87bcb-f96d-44e2-a7ba-eff81f9c5527');
INSERT INTO public.period_dimension (id, value, name, "order", created, modified, level, leaf, type_id, parent_id) VALUES ('719fc3d9-5478-45f6-9748-a84da2c97e60', '2016M10', 'Oct 2016', 49, '2023-02-16 13:58:34.575266', '2023-02-16 13:58:34.575266', 0, true, 'PERIOD_TYPE_MONTH', 'ae3d11ed-0e85-46aa-a1e8-b067851703e2');
INSERT INTO public.period_dimension (id, value, name, "order", created, modified, level, leaf, type_id, parent_id) VALUES ('7d006474-a8c4-4b06-bd5e-2fd5a6e9b22c', '2016M11', 'Nov 2016', 50, '2023-02-16 13:58:34.575266', '2023-02-16 13:58:34.575266', 0, true, 'PERIOD_TYPE_MONTH', 'ae3d11ed-0e85-46aa-a1e8-b067851703e2');
INSERT INTO public.period_dimension (id, value, name, "order", created, modified, level, leaf, type_id, parent_id) VALUES ('7f60daed-00ac-45eb-a9e6-e89eafa76a9f', '2016M12', 'Dec 2016', 51, '2023-02-16 13:58:34.575266', '2023-02-16 13:58:34.575266', 0, true, 'PERIOD_TYPE_MONTH', 'ae3d11ed-0e85-46aa-a1e8-b067851703e2');
INSERT INTO public.period_dimension (id, value, name, "order", created, modified, level, leaf, type_id, parent_id) VALUES ('acfb1b81-736e-418e-9daf-3c9ae51d1f74', '2017Y', '2017', 52, '2023-02-16 13:58:34.575266', '2023-02-16 13:58:34.575266', 0, false, 'PERIOD_TYPE_YEAR', NULL);
INSERT INTO public.period_dimension (id, value, name, "order", created, modified, level, leaf, type_id, parent_id) VALUES ('f0bd5cfc-82b2-40ce-bb1a-a43c6213df41', '2017Q1', '1st Quarter 2017', 53, '2023-02-16 13:58:34.575266', '2023-02-16 13:58:34.575266', 0, false, 'PERIOD_TYPE_QUARTER', 'acfb1b81-736e-418e-9daf-3c9ae51d1f74');
INSERT INTO public.period_dimension (id, value, name, "order", created, modified, level, leaf, type_id, parent_id) VALUES ('4c556053-3789-4e8e-9d24-32ab2c1ba61f', '2017M01', 'Jan 2017', 54, '2023-02-16 13:58:34.575266', '2023-02-16 13:58:34.575266', 0, true, 'PERIOD_TYPE_MONTH', 'f0bd5cfc-82b2-40ce-bb1a-a43c6213df41');
INSERT INTO public.period_dimension (id, value, name, "order", created, modified, level, leaf, type_id, parent_id) VALUES ('2f509500-a44f-4a1e-8096-030803e76adc', '2017M02', 'Feb 2017', 55, '2023-02-16 13:58:34.575266', '2023-02-16 13:58:34.575266', 0, true, 'PERIOD_TYPE_MONTH', 'f0bd5cfc-82b2-40ce-bb1a-a43c6213df41');
INSERT INTO public.period_dimension (id, value, name, "order", created, modified, level, leaf, type_id, parent_id) VALUES ('6cb96f52-9c3a-4731-8cc9-818f68324958', '2017M03', 'Mar 2017', 56, '2023-02-16 13:58:34.575266', '2023-02-16 13:58:34.575266', 0, true, 'PERIOD_TYPE_MONTH', 'f0bd5cfc-82b2-40ce-bb1a-a43c6213df41');
INSERT INTO public.period_dimension (id, value, name, "order", created, modified, level, leaf, type_id, parent_id) VALUES ('66ace1c9-7b02-47e3-bd3d-82ca0370e6ce', '2017Q2', '2nd Quarter 2017', 57, '2023-02-16 13:58:34.575266', '2023-02-16 13:58:34.575266', 0, false, 'PERIOD_TYPE_QUARTER', 'acfb1b81-736e-418e-9daf-3c9ae51d1f74');
INSERT INTO public.period_dimension (id, value, name, "order", created, modified, level, leaf, type_id, parent_id) VALUES ('c2305f0d-5dab-423f-8ef5-c932ffb41933', '2017M04', 'Apr 2017', 58, '2023-02-16 13:58:34.575266', '2023-02-16 13:58:34.575266', 0, true, 'PERIOD_TYPE_MONTH', '66ace1c9-7b02-47e3-bd3d-82ca0370e6ce');
INSERT INTO public.period_dimension (id, value, name, "order", created, modified, level, leaf, type_id, parent_id) VALUES ('8024585a-62fc-4c15-8840-04acbae43823', '2017M05', 'May 2017', 59, '2023-02-16 13:58:34.575266', '2023-02-16 13:58:34.575266', 0, true, 'PERIOD_TYPE_MONTH', '66ace1c9-7b02-47e3-bd3d-82ca0370e6ce');
INSERT INTO public.period_dimension (id, value, name, "order", created, modified, level, leaf, type_id, parent_id) VALUES ('fa2e0606-a4d9-4c81-8106-711e4b4bace7', '2017M06', 'Jun 2017', 60, '2023-02-16 13:58:34.575266', '2023-02-16 13:58:34.575266', 0, true, 'PERIOD_TYPE_MONTH', '66ace1c9-7b02-47e3-bd3d-82ca0370e6ce');
INSERT INTO public.period_dimension (id, value, name, "order", created, modified, level, leaf, type_id, parent_id) VALUES ('3ec828ff-e61a-4b15-8e3d-b9c1b0d4042f', '2017Q3', '3rd Quarter 2017', 61, '2023-02-16 13:58:34.575266', '2023-02-16 13:58:34.575266', 0, false, 'PERIOD_TYPE_QUARTER', 'acfb1b81-736e-418e-9daf-3c9ae51d1f74');
INSERT INTO public.period_dimension (id, value, name, "order", created, modified, level, leaf, type_id, parent_id) VALUES ('636334d5-377b-42f1-99bb-7b85d1c46c71', '2017M07', 'Jul 2017', 62, '2023-02-16 13:58:34.575266', '2023-02-16 13:58:34.575266', 0, true, 'PERIOD_TYPE_MONTH', '3ec828ff-e61a-4b15-8e3d-b9c1b0d4042f');
INSERT INTO public.period_dimension (id, value, name, "order", created, modified, level, leaf, type_id, parent_id) VALUES ('badd6b1e-3520-4ed4-9012-0c82d46a78ba', '2017M08', 'Aug 2017', 63, '2023-02-16 13:58:34.575266', '2023-02-16 13:58:34.575266', 0, true, 'PERIOD_TYPE_MONTH', '3ec828ff-e61a-4b15-8e3d-b9c1b0d4042f');
INSERT INTO public.period_dimension (id, value, name, "order", created, modified, level, leaf, type_id, parent_id) VALUES ('5ab98d11-3380-4fa8-8bf2-98107623bebc', '2017M09', 'Sep 2017', 64, '2023-02-16 13:58:34.575266', '2023-02-16 13:58:34.575266', 0, true, 'PERIOD_TYPE_MONTH', '3ec828ff-e61a-4b15-8e3d-b9c1b0d4042f');
INSERT INTO public.period_dimension (id, value, name, "order", created, modified, level, leaf, type_id, parent_id) VALUES ('f082e6b9-4124-4082-8d62-62a5e0c548ab', '2017Q4', '4th Quarter 2017', 65, '2023-02-16 13:58:34.575266', '2023-02-16 13:58:34.575266', 0, false, 'PERIOD_TYPE_QUARTER', 'acfb1b81-736e-418e-9daf-3c9ae51d1f74');
INSERT INTO public.period_dimension (id, value, name, "order", created, modified, level, leaf, type_id, parent_id) VALUES ('3867e85b-9e62-48e4-8275-26d3f802fe58', '2017M10', 'Oct 2017', 66, '2023-02-16 13:58:34.575266', '2023-02-16 13:58:34.575266', 0, true, 'PERIOD_TYPE_MONTH', 'f082e6b9-4124-4082-8d62-62a5e0c548ab');
INSERT INTO public.period_dimension (id, value, name, "order", created, modified, level, leaf, type_id, parent_id) VALUES ('234bfa6f-fa66-4fda-bad7-e8f1f71777a4', '2017M11', 'Nov 2017', 67, '2023-02-16 13:58:34.575266', '2023-02-16 13:58:34.575266', 0, true, 'PERIOD_TYPE_MONTH', 'f082e6b9-4124-4082-8d62-62a5e0c548ab');
INSERT INTO public.period_dimension (id, value, name, "order", created, modified, level, leaf, type_id, parent_id) VALUES ('1d14fdfe-4f05-46d3-a007-b66c26f092b5', '2017M12', 'Dec 2017', 68, '2023-02-16 13:58:34.575266', '2023-02-16 13:58:34.575266', 0, true, 'PERIOD_TYPE_MONTH', 'f082e6b9-4124-4082-8d62-62a5e0c548ab');
INSERT INTO public.period_dimension (id, value, name, "order", created, modified, level, leaf, type_id, parent_id) VALUES ('7cb5a86c-1f23-43ea-8a02-201ada7e81ee', '2018Y', '2018', 69, '2023-02-16 13:58:34.575266', '2023-02-16 13:58:34.575266', 0, false, 'PERIOD_TYPE_YEAR', NULL);
INSERT INTO public.period_dimension (id, value, name, "order", created, modified, level, leaf, type_id, parent_id) VALUES ('86cb4f7a-783b-4123-8cc2-ad19c6a44bb0', '2018Q1', '1st Quarter 2018', 70, '2023-02-16 13:58:34.575266', '2023-02-16 13:58:34.575266', 0, false, 'PERIOD_TYPE_QUARTER', '7cb5a86c-1f23-43ea-8a02-201ada7e81ee');
INSERT INTO public.period_dimension (id, value, name, "order", created, modified, level, leaf, type_id, parent_id) VALUES ('3ac311fb-782d-4a21-9100-c6cbdf295b43', '2018M01', 'Jan 2018', 71, '2023-02-16 13:58:34.575266', '2023-02-16 13:58:34.575266', 0, true, 'PERIOD_TYPE_MONTH', '86cb4f7a-783b-4123-8cc2-ad19c6a44bb0');
INSERT INTO public.period_dimension (id, value, name, "order", created, modified, level, leaf, type_id, parent_id) VALUES ('060d7e64-4ddd-497d-89b0-d6751a492f1d', '2018M02', 'Feb 2018', 72, '2023-02-16 13:58:34.575266', '2023-02-16 13:58:34.575266', 0, true, 'PERIOD_TYPE_MONTH', '86cb4f7a-783b-4123-8cc2-ad19c6a44bb0');
INSERT INTO public.period_dimension (id, value, name, "order", created, modified, level, leaf, type_id, parent_id) VALUES ('6bbcb3c2-b2ba-4712-8a45-13e130291e7f', '2018M03', 'Mar 2018', 73, '2023-02-16 13:58:34.575266', '2023-02-16 13:58:34.575266', 0, true, 'PERIOD_TYPE_MONTH', '86cb4f7a-783b-4123-8cc2-ad19c6a44bb0');
INSERT INTO public.period_dimension (id, value, name, "order", created, modified, level, leaf, type_id, parent_id) VALUES ('cc14d009-1b82-4362-bfc3-dbdebfd0f276', '2018Q2', '2nd Quarter 2018', 74, '2023-02-16 13:58:34.575266', '2023-02-16 13:58:34.575266', 0, false, 'PERIOD_TYPE_QUARTER', '7cb5a86c-1f23-43ea-8a02-201ada7e81ee');
INSERT INTO public.period_dimension (id, value, name, "order", created, modified, level, leaf, type_id, parent_id) VALUES ('98a1874c-d935-4e49-b303-7539b49014dc', '2018M04', 'Apr 2018', 75, '2023-02-16 13:58:34.575266', '2023-02-16 13:58:34.575266', 0, true, 'PERIOD_TYPE_MONTH', 'cc14d009-1b82-4362-bfc3-dbdebfd0f276');
INSERT INTO public.period_dimension (id, value, name, "order", created, modified, level, leaf, type_id, parent_id) VALUES ('662f429a-8f45-432d-b278-7af9d75e741b', '2018M05', 'May 2018', 76, '2023-02-16 13:58:34.575266', '2023-02-16 13:58:34.575266', 0, true, 'PERIOD_TYPE_MONTH', 'cc14d009-1b82-4362-bfc3-dbdebfd0f276');
INSERT INTO public.period_dimension (id, value, name, "order", created, modified, level, leaf, type_id, parent_id) VALUES ('78ee1acf-ecb6-4a5a-b1f2-28918faf5f31', '2018M06', 'Jun 2018', 77, '2023-02-16 13:58:34.575266', '2023-02-16 13:58:34.575266', 0, true, 'PERIOD_TYPE_MONTH', 'cc14d009-1b82-4362-bfc3-dbdebfd0f276');
INSERT INTO public.period_dimension (id, value, name, "order", created, modified, level, leaf, type_id, parent_id) VALUES ('5d6eb261-507c-426b-9c4c-ff4a3db48605', '2018Q3', '3rd Quarter 2018', 78, '2023-02-16 13:58:34.575266', '2023-02-16 13:58:34.575266', 0, false, 'PERIOD_TYPE_QUARTER', '7cb5a86c-1f23-43ea-8a02-201ada7e81ee');
INSERT INTO public.period_dimension (id, value, name, "order", created, modified, level, leaf, type_id, parent_id) VALUES ('69ac2db4-d558-4d24-aa3c-1f4227ec0d86', '2018M07', 'Jul 2018', 79, '2023-02-16 13:58:34.575266', '2023-02-16 13:58:34.575266', 0, true, 'PERIOD_TYPE_MONTH', '5d6eb261-507c-426b-9c4c-ff4a3db48605');
INSERT INTO public.period_dimension (id, value, name, "order", created, modified, level, leaf, type_id, parent_id) VALUES ('48f2c624-eb91-451c-936b-cb9919bbc959', '2018M08', 'Aug 2018', 80, '2023-02-16 13:58:34.575266', '2023-02-16 13:58:34.575266', 0, true, 'PERIOD_TYPE_MONTH', '5d6eb261-507c-426b-9c4c-ff4a3db48605');
INSERT INTO public.period_dimension (id, value, name, "order", created, modified, level, leaf, type_id, parent_id) VALUES ('cb1a899e-3eb7-4b14-8212-d989ba591477', '2018M09', 'Sep 2018', 81, '2023-02-16 13:58:34.575266', '2023-02-16 13:58:34.575266', 0, true, 'PERIOD_TYPE_MONTH', '5d6eb261-507c-426b-9c4c-ff4a3db48605');
INSERT INTO public.period_dimension (id, value, name, "order", created, modified, level, leaf, type_id, parent_id) VALUES ('f1e267a4-2c81-40b9-abf0-323f8c1ffd1c', '2018Q4', '4th Quarter 2018', 82, '2023-02-16 13:58:34.575266', '2023-02-16 13:58:34.575266', 0, false, 'PERIOD_TYPE_QUARTER', '7cb5a86c-1f23-43ea-8a02-201ada7e81ee');
INSERT INTO public.period_dimension (id, value, name, "order", created, modified, level, leaf, type_id, parent_id) VALUES ('6d993c7d-696f-4452-bc6d-9f869d39444b', '2018M10', 'Oct 2018', 83, '2023-02-16 13:58:34.575266', '2023-02-16 13:58:34.575266', 0, true, 'PERIOD_TYPE_MONTH', 'f1e267a4-2c81-40b9-abf0-323f8c1ffd1c');
INSERT INTO public.period_dimension (id, value, name, "order", created, modified, level, leaf, type_id, parent_id) VALUES ('c513d009-e6d4-4f27-ba7a-31c9cb83f1ca', '2018M11', 'Nov 2018', 84, '2023-02-16 13:58:34.575266', '2023-02-16 13:58:34.575266', 0, true, 'PERIOD_TYPE_MONTH', 'f1e267a4-2c81-40b9-abf0-323f8c1ffd1c');
INSERT INTO public.period_dimension (id, value, name, "order", created, modified, level, leaf, type_id, parent_id) VALUES ('bd906920-a024-4c66-acd9-58c047e40688', '2018M12', 'Dec 2018', 85, '2023-02-16 13:58:34.575266', '2023-02-16 13:58:34.575266', 0, true, 'PERIOD_TYPE_MONTH', 'f1e267a4-2c81-40b9-abf0-323f8c1ffd1c');
INSERT INTO public.period_dimension (id, value, name, "order", created, modified, level, leaf, type_id, parent_id) VALUES ('59380307-62b2-42f6-ba20-ff44a6418368', '2019Y', '2019', 86, '2023-02-16 13:58:34.575266', '2023-02-16 13:58:34.575266', 0, false, 'PERIOD_TYPE_YEAR', NULL);
INSERT INTO public.period_dimension (id, value, name, "order", created, modified, level, leaf, type_id, parent_id) VALUES ('080c4554-cd73-4c02-b785-54de9e0f34cf', '2019Q1', '1st Quarter 2019', 87, '2023-02-16 13:58:34.575266', '2023-02-16 13:58:34.575266', 0, false, 'PERIOD_TYPE_QUARTER', '59380307-62b2-42f6-ba20-ff44a6418368');
INSERT INTO public.period_dimension (id, value, name, "order", created, modified, level, leaf, type_id, parent_id) VALUES ('c377f714-1581-4376-89e2-cfce41d62825', '2019M01', 'Jan 2019', 88, '2023-02-16 13:58:34.575266', '2023-02-16 13:58:34.575266', 0, true, 'PERIOD_TYPE_MONTH', '080c4554-cd73-4c02-b785-54de9e0f34cf');
INSERT INTO public.period_dimension (id, value, name, "order", created, modified, level, leaf, type_id, parent_id) VALUES ('4ac8a44a-0c62-464e-8cd7-18c2cc60c324', '2019M02', 'Feb 2019', 89, '2023-02-16 13:58:34.575266', '2023-02-16 13:58:34.575266', 0, true, 'PERIOD_TYPE_MONTH', '080c4554-cd73-4c02-b785-54de9e0f34cf');
INSERT INTO public.period_dimension (id, value, name, "order", created, modified, level, leaf, type_id, parent_id) VALUES ('d216763b-d78f-434e-8e68-cb92da9f2049', '2019M03', 'Mar 2019', 90, '2023-02-16 13:58:34.575266', '2023-02-16 13:58:34.575266', 0, true, 'PERIOD_TYPE_MONTH', '080c4554-cd73-4c02-b785-54de9e0f34cf');
INSERT INTO public.period_dimension (id, value, name, "order", created, modified, level, leaf, type_id, parent_id) VALUES ('5389b8f9-c9ca-4d7c-91f0-5aa9e4432650', '2019Q2', '2nd Quarter 2019', 91, '2023-02-16 13:58:34.575266', '2023-02-16 13:58:34.575266', 0, false, 'PERIOD_TYPE_QUARTER', '59380307-62b2-42f6-ba20-ff44a6418368');
INSERT INTO public.period_dimension (id, value, name, "order", created, modified, level, leaf, type_id, parent_id) VALUES ('fee6a8df-356d-43dc-b0ef-a9e3b39c15e4', '2019M04', 'Apr 2019', 92, '2023-02-16 13:58:34.575266', '2023-02-16 13:58:34.575266', 0, true, 'PERIOD_TYPE_MONTH', '5389b8f9-c9ca-4d7c-91f0-5aa9e4432650');
INSERT INTO public.period_dimension (id, value, name, "order", created, modified, level, leaf, type_id, parent_id) VALUES ('23da6cc2-3129-4670-8af0-819c9b2bc16d', '2019M05', 'May 2019', 93, '2023-02-16 13:58:34.575266', '2023-02-16 13:58:34.575266', 0, true, 'PERIOD_TYPE_MONTH', '5389b8f9-c9ca-4d7c-91f0-5aa9e4432650');
INSERT INTO public.period_dimension (id, value, name, "order", created, modified, level, leaf, type_id, parent_id) VALUES ('265c237d-b10e-4eca-8e2d-631850370223', '2019M06', 'Jun 2019', 94, '2023-02-16 13:58:34.575266', '2023-02-16 13:58:34.575266', 0, true, 'PERIOD_TYPE_MONTH', '5389b8f9-c9ca-4d7c-91f0-5aa9e4432650');
INSERT INTO public.period_dimension (id, value, name, "order", created, modified, level, leaf, type_id, parent_id) VALUES ('93dd3608-fa67-4919-8635-33ec3977d477', '2019Q3', '3rd Quarter 2019', 95, '2023-02-16 13:58:34.575266', '2023-02-16 13:58:34.575266', 0, false, 'PERIOD_TYPE_QUARTER', '59380307-62b2-42f6-ba20-ff44a6418368');
INSERT INTO public.period_dimension (id, value, name, "order", created, modified, level, leaf, type_id, parent_id) VALUES ('819adcb7-4334-4a78-9864-1df16c86a4e2', '2019M07', 'Jul 2019', 96, '2023-02-16 13:58:34.575266', '2023-02-16 13:58:34.575266', 0, true, 'PERIOD_TYPE_MONTH', '93dd3608-fa67-4919-8635-33ec3977d477');
INSERT INTO public.period_dimension (id, value, name, "order", created, modified, level, leaf, type_id, parent_id) VALUES ('f7246c89-560a-4939-9970-3e0a4f9658e5', '2019M08', 'Aug 2019', 97, '2023-02-16 13:58:34.575266', '2023-02-16 13:58:34.575266', 0, true, 'PERIOD_TYPE_MONTH', '93dd3608-fa67-4919-8635-33ec3977d477');
INSERT INTO public.period_dimension (id, value, name, "order", created, modified, level, leaf, type_id, parent_id) VALUES ('4ef77333-6615-46ef-9aeb-3387d0cc9bf2', '2019M09', 'Sep 2019', 98, '2023-02-16 13:58:34.575266', '2023-02-16 13:58:34.575266', 0, true, 'PERIOD_TYPE_MONTH', '93dd3608-fa67-4919-8635-33ec3977d477');
INSERT INTO public.period_dimension (id, value, name, "order", created, modified, level, leaf, type_id, parent_id) VALUES ('18f8e964-c5c9-481d-9238-06e7ff67498e', '2019Q4', '4th Quarter 2019', 99, '2023-02-16 13:58:34.575266', '2023-02-16 13:58:34.575266', 0, false, 'PERIOD_TYPE_QUARTER', '59380307-62b2-42f6-ba20-ff44a6418368');
INSERT INTO public.period_dimension (id, value, name, "order", created, modified, level, leaf, type_id, parent_id) VALUES ('fc1e6b98-f345-47ba-a14b-713b527a68ac', '2019M10', 'Oct 2019', 100, '2023-02-16 13:58:34.575266', '2023-02-16 13:58:34.575266', 0, true, 'PERIOD_TYPE_MONTH', '18f8e964-c5c9-481d-9238-06e7ff67498e');
INSERT INTO public.period_dimension (id, value, name, "order", created, modified, level, leaf, type_id, parent_id) VALUES ('42b7667e-4840-4a0c-8a97-dcc0ccea75a5', '2019M11', 'Nov 2019', 101, '2023-02-16 13:58:34.575266', '2023-02-16 13:58:34.575266', 0, true, 'PERIOD_TYPE_MONTH', '18f8e964-c5c9-481d-9238-06e7ff67498e');
INSERT INTO public.period_dimension (id, value, name, "order", created, modified, level, leaf, type_id, parent_id) VALUES ('bddc926d-833f-4405-b957-d0fc4228b067', '2019M12', 'Dec 2019', 102, '2023-02-16 13:58:34.575266', '2023-02-16 13:58:34.575266', 0, true, 'PERIOD_TYPE_MONTH', '18f8e964-c5c9-481d-9238-06e7ff67498e');
INSERT INTO public.period_dimension (id, value, name, "order", created, modified, level, leaf, type_id, parent_id) VALUES ('0213b3e7-bd24-4870-b6bd-075b71ef612b', '2020Y', '2020', 103, '2023-02-16 13:58:34.575266', '2023-02-16 13:58:34.575266', 0, false, 'PERIOD_TYPE_YEAR', NULL);
INSERT INTO public.period_dimension (id, value, name, "order", created, modified, level, leaf, type_id, parent_id) VALUES ('8e6892c6-80d7-4b84-a1be-7fc457e82eed', '2020Q1', '1st Quarter 2020', 104, '2023-02-16 13:58:34.575266', '2023-02-16 13:58:34.575266', 0, false, 'PERIOD_TYPE_QUARTER', '0213b3e7-bd24-4870-b6bd-075b71ef612b');
INSERT INTO public.period_dimension (id, value, name, "order", created, modified, level, leaf, type_id, parent_id) VALUES ('237d0729-d39f-4e4f-9317-575aec078d16', '2020M01', 'Jan 2020', 105, '2023-02-16 13:58:34.575266', '2023-02-16 13:58:34.575266', 0, true, 'PERIOD_TYPE_MONTH', '8e6892c6-80d7-4b84-a1be-7fc457e82eed');
INSERT INTO public.period_dimension (id, value, name, "order", created, modified, level, leaf, type_id, parent_id) VALUES ('20a1b380-5592-427a-a43f-cf5e56bc802a', '2020M02', 'Feb 2020', 106, '2023-02-16 13:58:34.575266', '2023-02-16 13:58:34.575266', 0, true, 'PERIOD_TYPE_MONTH', '8e6892c6-80d7-4b84-a1be-7fc457e82eed');
INSERT INTO public.period_dimension (id, value, name, "order", created, modified, level, leaf, type_id, parent_id) VALUES ('a97073bc-0a60-4f94-9cd0-b356e02d4500', '2020M03', 'Mar 2020', 107, '2023-02-16 13:58:34.575266', '2023-02-16 13:58:34.575266', 0, true, 'PERIOD_TYPE_MONTH', '8e6892c6-80d7-4b84-a1be-7fc457e82eed');
INSERT INTO public.period_dimension (id, value, name, "order", created, modified, level, leaf, type_id, parent_id) VALUES ('85315328-39ce-4e8c-8861-9b7b9ce34537', '2020Q2', '2nd Quarter 2020', 108, '2023-02-16 13:58:34.575266', '2023-02-16 13:58:34.575266', 0, false, 'PERIOD_TYPE_QUARTER', '0213b3e7-bd24-4870-b6bd-075b71ef612b');
INSERT INTO public.period_dimension (id, value, name, "order", created, modified, level, leaf, type_id, parent_id) VALUES ('ae0607f0-adad-455c-89ff-640ec9697ea0', '2020M04', 'Apr 2020', 109, '2023-02-16 13:58:34.575266', '2023-02-16 13:58:34.575266', 0, true, 'PERIOD_TYPE_MONTH', '85315328-39ce-4e8c-8861-9b7b9ce34537');
INSERT INTO public.period_dimension (id, value, name, "order", created, modified, level, leaf, type_id, parent_id) VALUES ('0806ed6c-ca64-49df-b87a-3126e59375ca', '2020M05', 'May 2020', 110, '2023-02-16 13:58:34.575266', '2023-02-16 13:58:34.575266', 0, true, 'PERIOD_TYPE_MONTH', '85315328-39ce-4e8c-8861-9b7b9ce34537');
INSERT INTO public.period_dimension (id, value, name, "order", created, modified, level, leaf, type_id, parent_id) VALUES ('70b6c881-134e-44d3-ab95-47fb65a962d7', '2020M06', 'Jun 2020', 111, '2023-02-16 13:58:34.575266', '2023-02-16 13:58:34.575266', 0, true, 'PERIOD_TYPE_MONTH', '85315328-39ce-4e8c-8861-9b7b9ce34537');
INSERT INTO public.period_dimension (id, value, name, "order", created, modified, level, leaf, type_id, parent_id) VALUES ('d34765f5-8c56-4fb8-80a6-e5800377d1f4', '2020Q3', '3rd Quarter 2020', 112, '2023-02-16 13:58:34.575266', '2023-02-16 13:58:34.575266', 0, false, 'PERIOD_TYPE_QUARTER', '0213b3e7-bd24-4870-b6bd-075b71ef612b');
INSERT INTO public.period_dimension (id, value, name, "order", created, modified, level, leaf, type_id, parent_id) VALUES ('af2ded05-1536-4edf-9a5e-9001523bb4d1', '2020M07', 'Jul 2020', 113, '2023-02-16 13:58:34.575266', '2023-02-16 13:58:34.575266', 0, true, 'PERIOD_TYPE_MONTH', 'd34765f5-8c56-4fb8-80a6-e5800377d1f4');
INSERT INTO public.period_dimension (id, value, name, "order", created, modified, level, leaf, type_id, parent_id) VALUES ('9e4f90ea-4b6f-4464-b189-c41f92ed37b6', '2020M08', 'Aug 2020', 114, '2023-02-16 13:58:34.575266', '2023-02-16 13:58:34.575266', 0, true, 'PERIOD_TYPE_MONTH', 'd34765f5-8c56-4fb8-80a6-e5800377d1f4');
INSERT INTO public.period_dimension (id, value, name, "order", created, modified, level, leaf, type_id, parent_id) VALUES ('b8c9adbf-3041-4ec2-a95d-1bac4fac29e4', '2020M09', 'Sep 2020', 115, '2023-02-16 13:58:34.575266', '2023-02-16 13:58:34.575266', 0, true, 'PERIOD_TYPE_MONTH', 'd34765f5-8c56-4fb8-80a6-e5800377d1f4');
INSERT INTO public.period_dimension (id, value, name, "order", created, modified, level, leaf, type_id, parent_id) VALUES ('63e34fd3-1d53-46f1-b460-a56868dc7075', '2020Q4', '4th Quarter 2020', 116, '2023-02-16 13:58:34.575266', '2023-02-16 13:58:34.575266', 0, false, 'PERIOD_TYPE_QUARTER', '0213b3e7-bd24-4870-b6bd-075b71ef612b');
INSERT INTO public.period_dimension (id, value, name, "order", created, modified, level, leaf, type_id, parent_id) VALUES ('a884096f-4e90-4375-9356-22d78045a0a1', '2020M10', 'Oct 2020', 117, '2023-02-16 13:58:34.575266', '2023-02-16 13:58:34.575266', 0, true, 'PERIOD_TYPE_MONTH', '63e34fd3-1d53-46f1-b460-a56868dc7075');
INSERT INTO public.period_dimension (id, value, name, "order", created, modified, level, leaf, type_id, parent_id) VALUES ('10a9d198-a31b-4994-b97b-feb7208e35f4', '2020M11', 'Nov 2020', 118, '2023-02-16 13:58:34.575266', '2023-02-16 13:58:34.575266', 0, true, 'PERIOD_TYPE_MONTH', '63e34fd3-1d53-46f1-b460-a56868dc7075');
INSERT INTO public.period_dimension (id, value, name, "order", created, modified, level, leaf, type_id, parent_id) VALUES ('45964b5b-fd66-4b7b-81c5-45c7d458df80', '2020M12', 'Dec 2020', 119, '2023-02-16 13:58:34.575266', '2023-02-16 13:58:34.575266', 0, true, 'PERIOD_TYPE_MONTH', '63e34fd3-1d53-46f1-b460-a56868dc7075');
INSERT INTO public.period_dimension (id, value, name, "order", created, modified, level, leaf, type_id, parent_id) VALUES ('d3df4391-d8fd-46ea-8217-b8a060696f05', '2021Y', '2021', 120, '2023-02-16 13:58:34.575266', '2023-02-16 13:58:34.575266', 0, false, 'PERIOD_TYPE_YEAR', NULL);
INSERT INTO public.period_dimension (id, value, name, "order", created, modified, level, leaf, type_id, parent_id) VALUES ('55f1b2e6-bcbf-49b4-831e-f2cba5c7f0ea', '2021Q1', '1st Quarter 2021', 121, '2023-02-16 13:58:34.575266', '2023-02-16 13:58:34.575266', 0, false, 'PERIOD_TYPE_QUARTER', 'd3df4391-d8fd-46ea-8217-b8a060696f05');
INSERT INTO public.period_dimension (id, value, name, "order", created, modified, level, leaf, type_id, parent_id) VALUES ('6b31e52e-8638-482d-9301-898718fb0c0b', '2021M01', 'Jan 2021', 122, '2023-02-16 13:58:34.575266', '2023-02-16 13:58:34.575266', 0, true, 'PERIOD_TYPE_MONTH', '55f1b2e6-bcbf-49b4-831e-f2cba5c7f0ea');
INSERT INTO public.period_dimension (id, value, name, "order", created, modified, level, leaf, type_id, parent_id) VALUES ('a04450cb-864a-4084-8b52-033cb026b551', '2021M02', 'Feb 2021', 123, '2023-02-16 13:58:34.575266', '2023-02-16 13:58:34.575266', 0, true, 'PERIOD_TYPE_MONTH', '55f1b2e6-bcbf-49b4-831e-f2cba5c7f0ea');
INSERT INTO public.period_dimension (id, value, name, "order", created, modified, level, leaf, type_id, parent_id) VALUES ('31d5a198-b6d5-47dd-bc4c-030f512c3837', '2021M03', 'Mar 2021', 124, '2023-02-16 13:58:34.575266', '2023-02-16 13:58:34.575266', 0, true, 'PERIOD_TYPE_MONTH', '55f1b2e6-bcbf-49b4-831e-f2cba5c7f0ea');
INSERT INTO public.period_dimension (id, value, name, "order", created, modified, level, leaf, type_id, parent_id) VALUES ('4c72da98-0a9c-41c8-b7f7-862fabf7ef48', '2021Q2', '2nd Quarter 2021', 125, '2023-02-16 13:58:34.575266', '2023-02-16 13:58:34.575266', 0, false, 'PERIOD_TYPE_QUARTER', 'd3df4391-d8fd-46ea-8217-b8a060696f05');
INSERT INTO public.period_dimension (id, value, name, "order", created, modified, level, leaf, type_id, parent_id) VALUES ('b844b41d-74f4-4ef0-9a0c-47fa128aa65b', '2021M04', 'Apr 2021', 126, '2023-02-16 13:58:34.575266', '2023-02-16 13:58:34.575266', 0, true, 'PERIOD_TYPE_MONTH', '4c72da98-0a9c-41c8-b7f7-862fabf7ef48');
INSERT INTO public.period_dimension (id, value, name, "order", created, modified, level, leaf, type_id, parent_id) VALUES ('7bb37d1a-de74-4bcd-ba8b-429b6aa52652', '2021M05', 'May 2021', 127, '2023-02-16 13:58:34.575266', '2023-02-16 13:58:34.575266', 0, true, 'PERIOD_TYPE_MONTH', '4c72da98-0a9c-41c8-b7f7-862fabf7ef48');
INSERT INTO public.period_dimension (id, value, name, "order", created, modified, level, leaf, type_id, parent_id) VALUES ('347c1683-72d7-4d8b-88af-19ff043c42c3', '2021M06', 'Jun 2021', 128, '2023-02-16 13:58:34.575266', '2023-02-16 13:58:34.575266', 0, true, 'PERIOD_TYPE_MONTH', '4c72da98-0a9c-41c8-b7f7-862fabf7ef48');
INSERT INTO public.period_dimension (id, value, name, "order", created, modified, level, leaf, type_id, parent_id) VALUES ('178b153a-b2ce-46e7-bc8e-b36f6179ba52', '2021Q3', '3rd Quarter 2021', 129, '2023-02-16 13:58:34.575266', '2023-02-16 13:58:34.575266', 0, false, 'PERIOD_TYPE_QUARTER', 'd3df4391-d8fd-46ea-8217-b8a060696f05');
INSERT INTO public.period_dimension (id, value, name, "order", created, modified, level, leaf, type_id, parent_id) VALUES ('8e1b4dd2-9f5b-4721-b32b-2686f2012445', '2021M07', 'Jul 2021', 130, '2023-02-16 13:58:34.575266', '2023-02-16 13:58:34.575266', 0, true, 'PERIOD_TYPE_MONTH', '178b153a-b2ce-46e7-bc8e-b36f6179ba52');
INSERT INTO public.period_dimension (id, value, name, "order", created, modified, level, leaf, type_id, parent_id) VALUES ('2c7742ea-512b-47de-9d7e-7c77881af95c', '2021M08', 'Aug 2021', 131, '2023-02-16 13:58:34.575266', '2023-02-16 13:58:34.575266', 0, true, 'PERIOD_TYPE_MONTH', '178b153a-b2ce-46e7-bc8e-b36f6179ba52');
INSERT INTO public.period_dimension (id, value, name, "order", created, modified, level, leaf, type_id, parent_id) VALUES ('79e562b7-94e2-42df-a26f-d4836d158935', '2021M09', 'Sep 2021', 132, '2023-02-16 13:58:34.575266', '2023-02-16 13:58:34.575266', 0, true, 'PERIOD_TYPE_MONTH', '178b153a-b2ce-46e7-bc8e-b36f6179ba52');
INSERT INTO public.period_dimension (id, value, name, "order", created, modified, level, leaf, type_id, parent_id) VALUES ('f4cb55cb-2045-44bc-b24e-e0148d7fd21b', '2021Q4', '4th Quarter 2021', 133, '2023-02-16 13:58:34.575266', '2023-02-16 13:58:34.575266', 0, false, 'PERIOD_TYPE_QUARTER', 'd3df4391-d8fd-46ea-8217-b8a060696f05');
INSERT INTO public.period_dimension (id, value, name, "order", created, modified, level, leaf, type_id, parent_id) VALUES ('6eb438f0-da24-426f-9981-7a4affb1628c', '2021M10', 'Oct 2021', 134, '2023-02-16 13:58:34.575266', '2023-02-16 13:58:34.575266', 0, true, 'PERIOD_TYPE_MONTH', 'f4cb55cb-2045-44bc-b24e-e0148d7fd21b');
INSERT INTO public.period_dimension (id, value, name, "order", created, modified, level, leaf, type_id, parent_id) VALUES ('677e74f8-b326-4c0f-97c7-18dca4254f41', '2021M11', 'Nov 2021', 135, '2023-02-16 13:58:34.575266', '2023-02-16 13:58:34.575266', 0, true, 'PERIOD_TYPE_MONTH', 'f4cb55cb-2045-44bc-b24e-e0148d7fd21b');
INSERT INTO public.period_dimension (id, value, name, "order", created, modified, level, leaf, type_id, parent_id) VALUES ('29cca3f5-8fae-4064-bbb3-fcf6763c7138', '2021M12', 'Dec 2021', 136, '2023-02-16 13:58:34.575266', '2023-02-16 13:58:34.575266', 0, true, 'PERIOD_TYPE_MONTH', 'f4cb55cb-2045-44bc-b24e-e0148d7fd21b');


--
-- Name: period_dimension period_dimension_pkey; Type: CONSTRAINT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY public.period_dimension
    ADD CONSTRAINT period_dimension_pkey PRIMARY KEY (id);


--
-- Name: ix_period_dimension_name; Type: INDEX; Schema: public; Owner: myuser
--

CREATE INDEX ix_period_dimension_name ON public.period_dimension USING btree (name);


--
-- Name: ix_period_dimension_order; Type: INDEX; Schema: public; Owner: myuser
--

CREATE UNIQUE INDEX ix_period_dimension_order ON public.period_dimension USING btree ("order");


--
-- Name: ix_period_dimension_parent_id; Type: INDEX; Schema: public; Owner: myuser
--

CREATE INDEX ix_period_dimension_parent_id ON public.period_dimension USING btree (parent_id);


--
-- Name: ix_period_dimension_value; Type: INDEX; Schema: public; Owner: myuser
--

CREATE UNIQUE INDEX ix_period_dimension_value ON public.period_dimension USING btree (value);


--
-- Name: period_dimension period_dimension_parent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY public.period_dimension
    ADD CONSTRAINT period_dimension_parent_id_fkey FOREIGN KEY (parent_id) REFERENCES public.period_dimension(id);


--
-- Name: period_dimension period_dimension_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY public.period_dimension
    ADD CONSTRAINT period_dimension_type_id_fkey FOREIGN KEY (type_id) REFERENCES public.period_type(id);


--
-- PostgreSQL database dump complete
--

