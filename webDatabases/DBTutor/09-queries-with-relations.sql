SELECT * FROM events AS e
INNER JOIN locations AS loc
ON e.location_id = loc.id;

--? Explanation: Select all events from the events table, and join the locations table on the location_id column.
-- We use AS to make alias so we can easily recognise which table and column for the output later.

--? INNER JOIN: JOIN multiple tables into single result set. It just generating result without creating new tables.
--? AS: Alias also help the program to recognise which column to take if we have 2 tables with the same column name.
-- You can have multiple INNER JOIN statement in a query.
--* The Convention:
-- SELECT * FROM <table1> AS <alias1/alternative_name1> 
-- INNER JOIN <table2> AS <alias2/alternative_name2> 
-- ON <table1/alias1/alternative_name1>.<column1> = <table2/alias2/alternative_name2>.<column2>;
--! You must join a Table and the Rows you wanted to be JOINED.

--? Other example as below (We use AS for the output for each of the column):
-- SELECT
-- e.id AS event_id, e.name AS ,event_name e.date_planned AS event_date,
-- loc.title AS location_title, loc.street AS street, loc.house_number AS house_number, loc.city_name AS city_name
-- FROM events AS e
-- INNER JOIN locations AS loc
-- ON e.location_id = loc.id;
--* Explanation: 
-- Select eventRelatedDetails(id, name, date_planned), locationRelatedDetails(title, street, house_number, city_name) 
-- FROM the events table alias e 
-- INNER JOIN the locations AS loc
-- ON e.location_id = loc.id;
--? For this, only the same event_id will be outputed.

--@Block
--? For this Example we use INNER JOIN to output:
--* eventDetails(id, name, date_planned), locationDetails(title, street, house_number, city_name).
SELECT 
e.id AS Event_ID, e.name as Event_Name, e.date_planned AS Event_Date,
loc.title AS Location_Name, loc.street AS Sreet, loc.house_number AS House_Number, loc.city_name AS City_Name
FROM events AS e
INNER JOIN locations AS loc
ON e.location_id = loc.id;

--* Explanation:
--? We select eventDetails(id, name, date_planned), locationDetails(title, street, house_number, city_name) give them alias.
--? FROM events table and INNER JOIN with locations table.
--? We use ON to join the 2 tables with the same/comparable column (here it's the id column).

--@Block
--? Here we are joining 3 tables (events, locations and users) and outputing the eventDetails(id, name, date_planned), locationDetails(title, street, house_number, city_name), userDetails(first_name, last_name, email).
SELECT
e.id AS Event_ID, e.name as Event_Name, e.date_planned AS Event_Date,
loc.title AS Location_Name, loc.street AS Sreet, loc.house_number AS House_Number, loc.city_name AS City_Name,
u.first_name AS First_Name, u.last_name AS Last_Name, u.email AS Email
FROM events AS e
INNER JOIN locations AS loc ON e.location_id = loc.id
INNER JOIN events_users AS eu ON eu.event_id = e.id
INNER JOIN users AS u ON eu.user_id = u.id;

--* Explanation:
-- We have to connet all three tables because locations table and users table have no direct relationship/linking table.
-- so we must go through events table, link it to locations and link it again with users to establish the relation between them.
--? Output:
-- You will get all users that have the related event (in this case 3 users because 3 of them registered for the event).

--@Block
--? LEFT JOIN: LEFT JOIN multiple tables into single result set. It will gives the base table (in this example the locations table) as the LEFT JOIN output.
SELECT * FROM locations AS loc
LEFT JOIN events AS e ON e.location_id = loc.id;

--* Explanation:
-- Select all FROM locations table with alias 'loc'
-- LEFT JOIN with events table with alias 'e' on the location_id column.
--? Output:
-- It will give all the locations table content with related event given, 
-- other unrelated to the event will get NULL value.

--@Block
--? Multiple LEFT JOIN: LEFT JOIN multiple tables into single result set.
--* Explanation:
-- Below we will get all the cities with related locations and events from the cities.
SELECT * FROM cities AS c
LEFT JOIN locations AS loc ON loc.city_name = c.name
LEFT JOIN events AS e ON e.location_id = loc.id;

--? Output: You will get all the cities location including Frankfurt which have all other details as NULL 
-- This because all cities selected, but no related data to Frankfurt, thus you get NULL for the details related to Frankfurt.

--@Block
--? Multiple JOIN statement
--* Explanation:
-- Below we will get only the cities and location with events.
SELECT * FROM cities AS c
LEFT JOIN locations AS loc ON loc.city_name = c.name
INNER JOIN events AS e ON e.location_id = loc.id;

--? Output: You will only get Munich as only Munich city have event and the location/street name where the event is.

--@Block
--? Filter and Order the JOIN
--* Explanation:
-- Below we will filter the city with name 'Munich'.
SELECT * FROM cities AS c
LEFT JOIN locations AS loc ON loc.city_name = c.name
LEFT JOIN events AS e ON e.location_id = loc.id
WHERE c.name = 'Munich';
-- WHERE e.planned_date > '2020-01-01'; -- using comparison operator.

--? You will get city with 'Munich' name and related location and event, although it does not have any details.
-- The filter will happen at the end of the query, that's why you will get 3 rows.
