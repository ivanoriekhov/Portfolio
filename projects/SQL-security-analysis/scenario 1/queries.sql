-- ============================================================
-- SQL security analysis
-- Google Cybersecurity Certificate Portfolio Activity
-- Database: organization
-- Tables: log_in_attempts, employees
-- ============================================================



-- ------------------------------------------------------------
-- TASK 1: Retrieve after-hours failed login attempts
-- ------------------------------------------------------------
-- Security problem:Investigate failed login attempts occurring after business hours (18:00).

SELECT *
FROM log_in_attempts
WHERE login_time > '18:00' AND success = FALSE;

-- Result: 19 failed login attempts occurred after 18:00.



-- ------------------------------------------------------------
-- TASK 2: Retrieve login attempts on specific dates
-- ------------------------------------------------------------
-- Security problem: Investigate login attempts on May 8 and May 9, 2022.

SELECT *
FROM log_in_attempts 
WHERE login_date = '2022-05-09' OR login_date = '2022-05-08';

-- Result: 75 login attempts occurred across these two dates.



-- ------------------------------------------------------------
-- TASK 3: Retrieve login attempts outside of Mexico
-- ------------------------------------------------------------
-- Security problem: Identify login attempts that did not originate in Mexico. The database contains both MEX and MEXICO.

SELECT *
FROM log_in_attempts
WHERE NOT country LIKE 'MEX%';

-- Result: 144 login attempts originated outside of Mexico.



-- ------------------------------------------------------------
-- TASK 4: Retrieve employees in Marketing
-- ------------------------------------------------------------
-- Security/IT problem: Identify Marketing employees located in the East building.

SELECT *
FROM employees
WHERE department = 'Marketing' AND office LIKE 'East%';

-- Result: The first employee returned had the username "elarson".



-- ------------------------------------------------------------
-- TASK 5: Retrieve employees in Finance or Sales
-- ------------------------------------------------------------
-- Security/IT problem: Identify employees in either the Finance or Sales department.

SELECT *
FROM employees
WHERE department = 'Finance' OR department = 'Sales';

-- Result: The first Sales employee returned had the username "lrodriqu".



-- ------------------------------------------------------------
-- TASK 6: Retrieve employees not in Information Technology
-- ------------------------------------------------------------
-- Security/IT problem: Identify employees who are not in the IT department.

SELECT *
FROM employees
WHERE NOT department = 'Information Technology';

-- Result: 161 employees were not in the Information Technology department.
