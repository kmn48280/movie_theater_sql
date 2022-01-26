-- DROP TABLE IF EXISTS customer CASCADE;
CREATE TABLE customer(
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    customer_email VARCHAR (50)
);


-- DROP TABLE IF EXISTS box_office CASCADE;
CREATE TABLE box_office(
    box_office_id SERIAL PRIMARY KEY,
    seat_selection VARCHAR(10),
    ticket_price DECIMAL(5,2),
    mobile_ticket_pick_up VARCHAR(10)
);

-- DROP TABLE IF EXISTS concession CASCADE;
CREATE TABLE concession(
    concession_id SERIAL PRIMARY KEY,
    concession_food VARCHAR(100),
    concession_drink VARCHAR(100),
    concession_price DECIMAL(5,2)
);

-- DROP TABLE IF EXISTS customer_concession CASCADE;
CREATE TABLE customer_concession(
    customer_id INTEGER NOT NULL,
    concession_id INTEGER NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id) ON DELETE CASCADE,
    FOREIGN KEY (concession_id) REFERENCES concession(concession_id) ON DELETE CASCADE
);


-- DROP TABLE IF EXISTS movie CASCADE;
CREATE TABLE movie(
    movie_id SERIAL PRIMARY KEY,
    movie_title VARCHAR(50),
    movie_rating VARCHAR(10),
    box_office_id INTEGER NOT NULL,
    FOREIGN KEY (box_office_id) REFERENCES box_office(box_office_id) ON DELETE CASCADE
);

-- DROP TABLE IF EXISTS ticket CASCADE;
CREATE TABLE ticket(
    ticket_time TIMESTAMP WITH TIME ZONE DEFAULT timezone('utc', now()),
    customer_id INTEGER NOT NULL,
    movie_id INTEGER NOT NULL,
    box_office_id INTEGER NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id) ON DELETE CASCADE,
    FOREIGN KEY (movie_id) REFERENCES movie(movie_id) ON DELETE CASCADE,
    FOREIGN KEY (box_office_id) REFERENCES box_office(box_office_id) ON DELETE CASCADE
);