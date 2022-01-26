INSERT INTO customer (first_name, last_name, customer_email) VALUES
('Matthew', 'Sugimoto', 'mjsugimoto@gmail.com'),
('Samantha','Higgins', 'shiggins@yahoo.com'),
('Sonia','Mayfield', 'meow_meow@gmail.com');

INSERT INTO concession (concession_food, concession_drink, concession_price) VALUES
('popcorn', 'diet coke', 10.99),
('popcorn', 'sprite', 10.99),
('candy', 'bottled water', 7.99),
('hot dog', 'slurpee', 20.00);

INSERT INTO box_office (seat_selection, ticket_price, mobile_ticket_pick_up) VALUES
('1A', 15.75, 'NO'),
('4D', 15.75, 'YES'),
('2F', 7.50, 'NO');

INSERT INTO customer_concession (customer_id, concession_id) VALUES
(1,1), 
(2,1),
(3,1);

INSERT INTO movie (movie_title, movie_rating, box_office_id) VALUES
('Ctr-Alt-Elite-82 the Adventure Begins', 'R', 1),
('Codewars: The Code Strikes Back', 'PG-13', 1),
('The Whiteboard before Christmas', 'PG', 1);

INSERT INTO ticket (customer_id, movie_id, box_office_id) VALUES
(1, 1, 1), 
(2, 2, 1),
(3, 3, 1);
