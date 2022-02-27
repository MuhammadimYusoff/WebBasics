--@Block 
INSERT INTO events (
    name, 
    date_planned, 
    description, 
    max_participants, 
    min_age
) 
VALUES (
    'First Event!',
    '2022-04-04 16:30:00',
    'The First Event from the SQL!',
    20,
    18
),
(
    '2nd Event! Woho!!',
    '2022-01-01 06:30:00',
    'The Second Event from the SQL!',
    10,
    22
);

/*
? We must know the data that mandatory data and the datatype we want to insert.
? We must also insert the data according to it's arrangement.

* The Convention to insert data into a table:-
INSERT INTO <table_name> (<data1>, <data2>) VALUES (<value1>, <value2>);
INSERT INTO: Insert data into table
VALUES: Insert value into the table according to the data arrangement
? You can insert multiple values by:-
... VALUES (<value1>, <value2>), (<value1>, <value2>);
!! You must insert in the same amount of column because we defined the column in INSERT INTO.

*/
--@Block
--? We might wanted to make some changes to previous data we insert, that might need correction
--? We cannot just DELETE the previous data, as it will create a new one with different 'id'
--? Thus we will use UPDATE keyword for any data we wanted to UPDATE
--? The Convention to UPDATE a data:-
-- UPDATE <table_name> SET <column_name1>, <column_name2> WHERE <condition>
UPDATE events 
SET min_age = 16
WHERE id = 1;

-- '!=' in MySQL is '<>'

--@Block
--? Sometimes we wanted to get rid of a data from our table.
--? Thus we will use DELETE keyword for any data we wanted to DELETE
--? The Convention to DELETE a data:-
-- DELETE FROM <table_name> WHERE <condition>;
DELETE FROM events
WHERE id = 3;

--@Block
SELECT * FROM events;