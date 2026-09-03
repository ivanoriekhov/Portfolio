-- ============================================================
-- SQL security analysis
-- Google Cybersecurity Certificate Portfolio Activity
-- SCENARIO 3: BASIC SQL FILTERING
-- Database: organization
-- Tables: machines, employees
-- ============================================================



-- ------------------------------------------------------------
-- TASK 1: List organization machines
-- ------------------------------------------------------------

SELECT device_id, operating_system
FROM machines;

-- Result: 200 machines returned



-- ------------------------------------------------------------
-- TASK 2: Identify machines running OS 2
-- ------------------------------------------------------------

SELECT device_id, operating_system
FROM machines
WHERE operating_system = 'OS 2';

-- Result: 80 machines use OS 2



-- ------------------------------------------------------------
-- TASK 3: Identify Finance employees
-- ------------------------------------------------------------

SELECT *
FROM employees
WHERE department = 'Finance';

-- Result: First employee ID: 1003



-- ------------------------------------------------------------
-- TASK 4: Identify Sales employees
-- ------------------------------------------------------------

SELECT *
FROM employees
WHERE department = 'Sales';

-- Result: 33 employees work in Sales



-- ------------------------------------------------------------
-- TASK 5: Identify employee using South-109
-- ------------------------------------------------------------

SELECT *
FROM employees
WHERE office = 'South-109';

-- Result: Employee username: jlansky



-- ------------------------------------------------------------
-- TASK 6: Identify employees in the South building
-- ------------------------------------------------------------

SELECT *
FROM employees
WHERE office LIKE 'South%';

-- Result: First employee's department: Finance
