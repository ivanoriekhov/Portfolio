-- ============================================================
-- SQL security analysis
-- Google Cybersecurity Certificate Portfolio Activity
-- SCENARIO 2: DATE, TIME & NUMERIC SQL ANALYSIS
-- Database: organization
-- Table: log_in_attempts
-- ============================================================



-- ------------------------------------------------------------
-- TASK 1: Login attempts after May 9, 2022
-- ------------------------------------------------------------

SELECT *
FROM log_in_attempts
WHERE login_date > '2022-05-09';
-- Result: 125 login attempts


-- Include May 9, 2022 and later
SELECT *
FROM log_in_attempts
WHERE login_date >= '2022-05-09';
-- Result: 165 login attempts



-- ============================================================
-- TASK 2: Login attempts between May 9 and May 11
-- ============================================================

SELECT *
FROM log_in_attempts
WHERE login_date BETWEEN '2022-05-09' AND '2022-05-11';
-- Result: 123 login attempts



-- ------------------------------------------------------------
-- TASK 3: Login attempts before 07:00
-- ------------------------------------------------------------

SELECT *
FROM log_in_attempts
WHERE login_time < '07:00:00';
-- Result: Fifth username returned: eraab


-- Login attempts between 06:00 and 07:00
SELECT *
FROM log_in_attempts
WHERE login_time BETWEEN '06:00:00' AND '07:00:00';
-- Result: Earliest login time: 06:01:31



-- ------------------------------------------------------------
-- TASK 4: Login attempts with event IDs >= 100
-- ------------------------------------------------------------

SELECT event_id, username, login_date
FROM log_in_attempts
WHERE event_id >= 100;
-- Result: Third result login date: 2022-05-09


-- Login attempts with event IDs between 100 and 150
SELECT event_id, username, login_date
FROM log_in_attempts
WHERE event_id BETWEEN 100 AND 150;
-- Result: Seventh username returned: tmitchel
