--@Block 
--? Query to SELECT data FROM table.
--? The Convention for querying the statement:-
-- SELECT <column_name>, <column_name> FROM <table_name>
--? You can include other contraints like WHERE and ORDER BY etc.
SELECT * FROM events;

--@Block 
--? Query to SELECT data FROM table.
--? The Convention for querying the statement:-
-- SELECT <column_name>, <column_name> FROM <table_name> WHERE <condition>
--? You can include other contraints like WHERE and ORDER BY etc.
SELECT * FROM events
WHERE date_planned > '2022-03-03';
--* Here we want to select events from a specific date inside our table.
--? We can use the OPERATOR to make comparison
--? As in the example explanation:-
--? SELECT all data FROM table 'events' WHERE date_planned is greater than '<date_we_want>';
--! DATE Convention:-
--? YYYY-MM-DD HH:MM:SS
--* To be reminded, TIMESTAMP (as we use) doesn't required the HH:MM:SS part.


--@Block 
--? Query to SELECT data FROM table.
--? The Convention for querying the statement:-
-- SELECT <column_name>, <column_name> FROM <table_name> WHERE <condition>
--? You can include other contraints like WHERE and ORDER BY etc.
SELECT * FROM events
WHERE date_planned >= '2022-03-03' 
OR 
min_age = 20 
ORDER BY id DESC;
--* Here we want to select events from a specific date inside our table.
--? We can use the OPERATOR to make comparison
--? As in the example explanation:-
--? SELECT all data FROM table 'events' WHERE date_planned is greater or equal to '<date_we_want>' AND min_age is 20;