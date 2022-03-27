CREATE TABLE customer(
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(45),
    last_name VARCHAR(45),
);
CREATE TABLE movie(
    movie_id SERIAL PRIMARY KEY,
    ticket_id INTEGER,
    movie_name VARCHAR(45),
    movie_rating VARCHAR(10),
    movie_description TEXT,
    FOREIGN KEY(ticket_id) REFERENCES ticket(ticket_id) ON DELETE CASCADE,
);
CREATE TABLE concession(
    concession_id SERIAL PRIMARY KEY,
    customer_id INTEGER,
    concession_item VARCHAR(45),
);
CREATE TABLE ticket(
    ticket_id SERIAL PRIMARY KEY,
    customer_id INTEGER,
    movie_id INTEGER,
    FOREIGN KEY(movie_id) REFERENCES movie(movie_id) ON DELETE CASCADE,
    FOREIGN KEY(customer_id) REFERENCES customer(customer_id) ON DELETE CASCADE,    
);
CREATE TABLE payment(
    payment_id SERIAL PRIMARY KEY,
    customer_id INTEGER NOT NULL,
    ticket_id INTEGER NOT NULL,
    concession_id INTEGER NOT NULL,
    payment_type VARCHAR (45),
    amount DECIMAL(5,2),
    payment_date TIMESTAMP WITH TIME ZONE DEFAULT timezone('utc' ,now()),
);