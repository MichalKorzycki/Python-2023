SET search_path TO public ;


CREATE TABLE IF NOT EXISTS public.fooditem
(
    id SERIAL NOT NULL PRIMARY KEY,
    name character varying(64)  NOT NULL,
    price NUMERIC(6, 2)  NOT NULL
);

INSERT INTO fooditem(name, price) VALUES ('Pizza', 23.0);
INSERT INTO fooditem(name, price) VALUES ('Sushi', 60.0);
INSERT INTO fooditem(name, price) VALUES ('Pasta', 40.0);


CREATE TABLE IF NOT EXISTS public.customer
(
    id SERIAL NOT NULL PRIMARY KEY,
    name character varying(64)  NOT NULL
);

INSERT INTO customer(name) VALUES ('Michal');
INSERT INTO customer(name) VALUES ('Ala');


CREATE TABLE IF NOT EXISTS public.orders
(
    id SERIAL NOT NULL PRIMARY KEY,
    customer_id INT NOT NULL,
    created_at TIMESTAMPTZ DEFAULT Now(),
    CONSTRAINT fk_customer FOREIGN KEY(customer_id) REFERENCES customer(id)
);

INSERT INTO orders(customer_id) VALUES (1);
INSERT INTO orders(customer_id) VALUES (2);

CREATE TABLE IF NOT EXISTS public.orders_item
(
    id SERIAL NOT NULL PRIMARY KEY,
    orders_id INT NOT NULL,
    fooditem_id INT NOT NULL,
    created_at TIMESTAMPTZ DEFAULT Now(),
    CONSTRAINT fk_orders FOREIGN KEY(orders_id) REFERENCES orders(id),
    CONSTRAINT fk_fooditem FOREIGN KEY(fooditem_id) REFERENCES fooditem(id)
);


INSERT INTO orders_item(orders_id, fooditem_id) VALUES (1,1);
INSERT INTO orders_item(orders_id, fooditem_id) VALUES (1,2);
INSERT INTO orders_item(orders_id, fooditem_id) VALUES (2,3);
