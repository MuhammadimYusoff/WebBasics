--!! You must run the whole Query/Statement if any of the table have REFERENCES to other tables.
--? If you don't run the whole Query/Statement, you will get an error.
--? Other option is to CREATE the REFERENCES table first (in this case 'cities' table) and then execute the Table referencing to it (the 'locations' table).
--@Block
CREATE TABLE cities (
    name VARCHAR(200) PRIMARY KEY
);

--? As for 'cities' table, we don't need to have an 'id' because the city itself is a PRIMARY KEY and it's non-duplicate
--* We can add 'id' to the table, but it's not necessary.

--? This part is the same as '02-create-table-events.sql'
--@Block
CREATE TABLE locations(
    id SERIAL PRIMARY KEY,
    title VARCHAR(300),
    street VARCHAR(300) NOT NULL,
    house_number VARCHAR(10) NOT NULL,
    postal_code VARCHAR(5) NOT NULL,
    city_name VARCHAR(200) REFERENCES cities(name) ON DELETE RESTRICT ON UPDATE CASCADE
);
--? In 'locations' table, we have a FOREIGN KEY from 'cities' table which we will REFERENCES to it.
--* In Convention, we write as follows:-
-- ? < table_name > _ < column_name > < datatype > < constraints > REFERENCES < foreign_table_name > (< foreign_column_name >) < constraints >;
--? make sure the datatype and values are the same.
--? The '(name)' for 'cities' can be omitted and it's not mandatory. It will automatically point to PRIMARY KEY of 'cities' table.
--! We added extra condition to the 'city_name' column, which is 'ON DELETE RESTRICT' and 'ON UPDATE CASCADE'.
--* This means we are not allow to DELETE city and any UPDATE to the city_name will also change the city's 'name' of the cities table.

CREATE TABLE events( 
    id SERIAL PRIMARY KEY,
    name VARCHAR(300) NOT NULL CHECK (LENGTH(name) > 5) REFEFRENCES tags(name) ON DELETE RESTRICT ON UPDATE CASCADE,
    date_planned TIMESTAMP NOT NULL,
    image VARCHAR, description TEXT NOT NULL,
    max_participants INT CHECK (max_participants > 0), 
    min_age INT CHECK (min_age > 0), 
    location_id INT REFERENCES locations(id) ON DELETE CASCADE
);
--* 'events' table explanation:-
--? We MUST DROP the table previously created, this new schema provides the relationship between the tables completely.
--? we use the locations 'id' as our REFERENCES here and INT as datatype, as SERIAL in PostgreSQL means it's INT and AUTO_INCREMENT.
--! We also put extra restriction for events table ON DELETE if occur.
--* ON DELETE will execute if requested and it will do according to the request, example below.
--? RESTRICT: will not allow the deletion of the row as long as it REFERENCES to other tables column.
--? CASCADE: will delete all the rows that REFERENCES to the row that is being deleted.
--? SET NULL: it will set the column NULL