
CREATE TABLE IF NOT EXISTS public.fooditem
(
    id SERIAL NOT NULL PRIMARY KEY,
    name character varying(64)  NOT NULL,
    price character NUMERIC(6, 2)  NOT NULL
)

