--@Block
--? Create Entities and Variables
--* The convention of creating a table is:-
-- CREATE TABLE < tableName > (dataName, dataType, optionalConstraint);
CREATE TABLE events (
    --* id INT PRIMARY KEY AUTO_INCREMENT, -- This will only work for MySQL but not PostGres
    -- NOT NULL: it still accept '' as empty string still accepted
    -- UNIQUE: Making sure the id is UNIQUE or no duplicate
    -- NOT NULL & UNIQUE can also be short as PRIMARY KEY
    -- as every table MUST have a PRIMARY KEY and usually at 1st column.
    id SERIAL PRIMARY KEY,
    -- SERIAL: INT + AUTO_INCREMENT, suitable for PostGreSQL
    --? MySQL also have SERIAL but it use BIGINT, which is not suitable for this project
    name VARCHAR(300) NOT NULL CHECK (LENGTH(name) > 5),
    -- NOT NULL make sure the name is not null or left empty by user
    -- We use LENGTH function to cast string input from user and compare it to our constraints
    date_planned TIMESTAMP NOT NULL,
    -- TIMESTAMP will store the complete time and date.
    image VARCHAR,
    -- We don't save the file in database, but instead just the path to it.
    description TEXT NOT NULL,
    -- TEXT is longer than VARCHAR, use when we didn't know how many user will put
    -- PostGreSQL and MySQL have functions for TEXT, look it up.
    max_participants INT CHECK (max_participants > 0),
    -- CHECK is a CONSTRAINTS we put on database level, like 'if' operator
    min_age INT CHECK (min_age > 0)
);

--! if you wanted to create a table with name reserved word, you need to include '`' (backtick) `create`