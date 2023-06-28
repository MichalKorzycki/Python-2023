
CREATE TABLE IF NOT EXISTS public.employee
(
    id SERIAL NOT NULL PRIMARY KEY,
    name character varying(64)  NOT NULL,
    surname character varying(64)  NOT NULL
)

