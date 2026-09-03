-- ============================================================
-- SQL security analysis
-- Google Cybersecurity Certificate Portfolio Activity
-- SCENARIO 5: SQL Inner and outer join
-- Database: organization
-- Tables: machines, employees
-- ============================================================



-- ------------------------------------------------------------
-- Task 1: Retrieve employee information
-- ------------------------------------------------------------
SELECT *
FROM employees; 
INNER JOIN employees ON machines.device_id = employees.device_id;


-- ------------------------------------------------------------
-- Task 2: Retrieve more data
-- ------------------------------------------------------------

SELECT * 
FROM machines 
LEFT JOIN employees ON machines.device_id = employees.device_id;

SELECT * 
FROM machines
RIGHT JOIN employees ON machines.device_id = employees.device_id;


-- ------------------------------------------------------------
-- Task 3: Join employees with login attempts
-- ------------------------------------------------------------
-- The username column is common to both tables. The INNER JOIN returns records where a username exists in both tables.

SELECT *
FROM employees
INNER JOIN log_in_attempts ON employees.username = log_in_attempts.username;



