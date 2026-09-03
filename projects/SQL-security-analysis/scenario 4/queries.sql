-- ============================================================
-- SQL security analysis
-- Google Cybersecurity Certificate Portfolio Activity
-- SCENARIO 4: SQL DATA RETRIEVAL & SORTING
-- Database: organization
-- Tables: machines, log_in_attempts
-- ============================================================



-- -----------------------------------------------------------
-- TASK 1: Retrieve all machine information
-- -----------------------------------------------------------

SELECT *
FROM machines;
-- Result: 200 machine records returned


-- Retrieve device IDs and email clients
SELECT device_id, email_client
FROM machines;
-- Result: Third email client: Email Client 2


-- Retrieve device, operating system, and patch date
SELECT device_id, operating_system, OS_patch_date
FROM machines;
-- Result: First patch date: 2021-09-01


-- -----------------------------------------------------------
-- TASK 2: Investigate login activity
-- -----------------------------------------------------------

-- Review login locations
SELECT event_id, country
FROM log_in_attempts;
-- Result: No login attempts from Australia


-- Review usernames, dates, and times
SELECT username, login_date, login_time
FROM log_in_attempts;
-- Result: Fifth username: jrafael


-- Retrieve all login information
SELECT *
FROM log_in_attempts;


-- -----------------------------------------------------------
-- TASK 3: Order login attempts by date
-- -----------------------------------------------------------

SELECT *
FROM log_in_attempts
ORDER BY login_date;
-- Result: First record:, Username: ivelasco, Date: 2022-05-08


-- -----------------------------------------------------------
-- TASK 4: Order login attempts by date and time
-- -----------------------------------------------------------

SELECT *
FROM log_in_attempts
ORDER BY login_date, login_time;
-- Result: First record:, Username: bsand, Time: 00:19:11
