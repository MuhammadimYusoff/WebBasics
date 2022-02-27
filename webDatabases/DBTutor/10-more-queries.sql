--@Block
--* Using = operator
--? Example here we are selecting any user that have a first name 'Max'
SELECT * FROM users AS u
WHERE u.first_name AS First_Name = 'Max';

--@Block
--* Using comparison operators
-- We can also use comparison operators like below:
SELECT * FROM users AS u
WHERE u.first_name AS First_Name > 'Ma';

--? Output:
-- You will get 'Max' and 'Micheal', or any user that have alphabet after 'M' and after 'Ma'.
--* Explanation:
-- The operator > is used to compare the value of the first_name column with the value 'Ma'
-- We will get the users whose first name is greater than 'Ma', which includes 'Micheal',
-- This because 'Mi' is higher than 'Ma' in comparison, because 'i' comes after 'a'.

--@Block
--* Using LIKE operator WITH Regular Expression (RegEx)
SELECT * FROM users AS u
WHERE u.first_name AS First_Name LIKE 'Ma%'; -- 1) This will match any user whose first name starts with 'Ma'
-- WHERE u.first_name AS First_Name LIKE 'Ma_'; -- 2) This will match any user whose first name starts with 'Ma' and single character after it.

--? Output;
-- 1) You will get 'Max' and 'Micheal', or any user that have alphabet after 'M' and after 'Ma'.
-- You will get any user whose first name starts with 'Ma' and have any alphabet after 'Ma...'.
-- 2) You will get 'Max' only because it will try to match 'Ma' and an alphabet after it 
-- Because you use one underscore. 
--* Explanation: 
-- Regular Expression or RegEx act as a wildcard, which means it will match any character after the first character.
-- 1) % (percent) which means it will match any character after the first character.
-- 2) _ (underscore) which means it will match any single character after your input.

--@Block
--* Using AGGREGATE (COUNT, MIN, MAX, SUM, AVG etc.).
SELECT COUNT(id) FROM locations; -- This will count all the locations based on the arguement passed, id. Even the value is NULL, still included.
-- SELECT COUNT() FROM locations; -- If you use only COUNT(), it will ignore NULL values in the row.
--? Output:
-- You will get the total number of locations if you include 'id' as the argument.
--* The Convention:
-- SELECT COUNT(<arguments/column>) FROM locations; -- If you passed an 'argument' to COUNT(), it will count all the rows for that attribute. 
--* Explanation:
-- You can use Aggregate Functions on it's own, but sometimes you will get undesired output like uncomplete column count (which not include the NULL column).

--@Block
--? Using AGGREGATE and Single Column Statement MUST use with GROUP BY
SELECT c.name, loc.street, COUNT(loc.id) AS num_locations FROM cities AS c
LEFT JOIN locations AS loc ON loc.city_name = c.name
GROUP BY c.name, loc.street; -- This mean every city name will have their own group.

--? Output:
-- You will get a 'GROUP'ed city with the same id counted as in the num_locations column.
--* Explanation:
-- Selecting all cities and location based on the same city name

--@Block
-- Using AGGREGATE, GROUP BY and HAVING
SELECT c.name, COUNT(loc.id) AS num_locations FROM cities AS c
LEFT JOIN locations AS loc ON loc.city_name = c.name
GROUP BY c.name
HAVING COUNT(loc.id) > 1; -- This will output every city that have more than 1 location.

--? Output:
-- only Berlin and Munich
--* Explanation:
-- You can use HAVING to filter the output, AFTER the AGGREGATE function and better to use after it, the COUNT.
