INSERT INTO customer(first_name, last_name) VALUES
('Mary Lou', 'Retton'),
('Dominique', 'Dawes'),
('Dominique', 'Moceanu');

INSERT INTO ticket(movie_id, customer_id) VALUES
('72', '1'),
('34', '2'),
('17', '3');

INSERT INTO movie(ticket_id, movie_name, movie_rating, movie_description) VALUES
('001', 'The Notebook', 'PG-13', 'A lovey dovey movie.'),
('002', 'American Gangster', 'R', 'A violent movie.'),
('003', 'Road to Yesterday', 'R', 'An interesting movie.');

INSERT INTO payment(customer_id, ticket_id, concession_id, amount, payment_date, payment_type) VALUES
('1', '5789', 'Z01', '7.99', '01/02/2022', 'Cash'),
('2', '8279', 'B92', '2.99', '01/02/2022', 'Debit'),
('3', '9635', 'B78', '5.99', '01/02/2022', 'Debit');

INSERT INTO concession(customer_id, concession_id) VALUES
('1','Snickers'),
('2','Sprite'),
('3','Pretzel');