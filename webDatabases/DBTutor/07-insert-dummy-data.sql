--@Block 
INSERT INTO tags(name)
VALUES ('socialize'),('learn'),('connect'),('dinner'),('breakfast');
SELECT * FROM tags;

--@Block 
INSERT INTO cities (name)
VALUES ('Munich'), ('Berlin'), ('Cologne'), ('Frankfurt'), ('Hamburg');
SELECT * FROM cities;

--@Block 
INSERT INTO locations (title, street, house_number, postal_code, city_name)
VALUES ('Beerhall', 'Beerstreet', '5A', '80135', 'Munich'),
      (NULL, 'Beerstreet', '10', '81035', 'Munich'),
     (NULL, 'Gardenstreet', '101', '80031', 'Munich'),
    ('The Green One', 'Veggiestreet', '12', '12141', 'Berlin'),
      (NULL, 'Park Plaza', '1', '11011', 'Berlin'),
     ('Partyhouse', 'Carnevalstreet', '3', '12345', 'Cologne'),
    (NULL, 'Some Street', '18', '72657', 'Hamburg');
SELECT * FROM locations;
-- If you are entering multiple data into a table, you must follow the column data value to prevent error
-- We use NULL to give a blank value to the column

--@Block 
INSERT INTO users (first_name, last_name, birth_date, email)
VALUES 
('Max', 'Schwarz', '1989-05-01', 'max@test.com'),
('John', 'Doe', '1988-01-19', 'johndoe@tester.com'),
('Jane', 'Doe', '1986-02-13', 'janne@tester.com'),
('Julie', 'Barners', '1989-05-01', 'juliebarn@tset.com'),
('Micheal', 'Smith', '1982-11-11', 'micheal@test.com');
SELECT * FROM users;

--@Block 
INSERT INTO organizers (password, user_id)
VALUES 
('mypw1', 1), -- passwords would typically be stored encrypted
('somepw2', 2);
SELECT * FROM organizers;

--@Block 
INSERT INTO events  (name, date_planned, image, description, max_participants, min_age, location_id, organizer_id)
VALUES 
(
  'New in Town',
 '2022-02-01 17:30:00', 
 'path/to/image.jpg', 
 'You are new in town? Join us and meet like-minded new people!', 
 20, 
 16, 
 8, 
 1
 );
SELECT * FROM events;

--@Block 
INSERT INTO events_tags (event_id, tag_name)
VALUES 
(1 , 'socialize'), 
(1, 'connect'), 
(1, 'dinner');
SELECT * FROM events_tags;

--@Block 
INSERT INTO events_users (event_id, user_id)
VALUES 
(1,3), 
(1,4), 
(1,5);
SELECT * FROM events_users;

