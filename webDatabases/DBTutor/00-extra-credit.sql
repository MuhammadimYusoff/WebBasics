--@Block
--? To see the database created, in PostgreSQL our DB is 'public'
SELECT table_schema,table_name
FROM information_schema.tables
WHERE table_schema = 'public'
ORDER BY table_schema,table_name;

--@Block
DROP TABLE events;
DROP DATABASE my_events;
--! FLIP * TABLES WHERE (programmer <> happy);
--? <> is !=

DROP TABLE events_users;