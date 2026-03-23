-- ============================================================
-- SQL Security Filtering: AND, OR, and NOT Operators
-- Google Cybersecurity Certificate - Lab Activity
-- Database: organization | Shell: MariaDB
-- ============================================================


-- ------------------------------------------------------------
-- Task 1: Retrieve After-Hours Failed Login Attempts
-- Objective: Find all failed login attempts after 18:00
-- Result: 19 failed login attempts
-- ------------------------------------------------------------

SELECT *
FROM log_in_attempts
WHERE login_time > '18:00' AND success = FALSE;


-- ------------------------------------------------------------
-- Task 2: Retrieve Login Attempts on Specific Dates
-- Objective: Find all login attempts on 2022-05-08 and 2022-05-09
-- Result: 75 login attempts across both days
-- ------------------------------------------------------------

SELECT *
FROM log_in_attempts
WHERE login_date = '2022-05-09' OR login_date = '2022-05-08';


-- ------------------------------------------------------------
-- Task 3: Retrieve Login Attempts Outside of Mexico
-- Objective: Find logins that did not originate in Mexico
-- Note: Country field includes both 'MEX' and 'MEXICO' entries
-- Result: 144 login attempts outside of Mexico
-- ------------------------------------------------------------

SELECT *
FROM log_in_attempts
WHERE NOT country LIKE 'MEX%';


-- ------------------------------------------------------------
-- Task 4: Retrieve Employees in Marketing (East Building)
-- Objective: Locate Marketing employees in East building offices
-- Note: Office values follow pattern 'East-XXX' (e.g., East-170)
-- Result: First employee returned was elarson
-- ------------------------------------------------------------

SELECT *
FROM employees
WHERE department = 'Marketing' AND office LIKE 'East%';


-- ------------------------------------------------------------
-- Task 5: Retrieve Employees in Finance or Sales
-- Objective: Identify employees in Finance or Sales departments
-- Result: First Sales employee returned was lrodriqu
-- ------------------------------------------------------------

SELECT *
FROM employees
WHERE department = 'Finance' OR department = 'Sales';


-- ------------------------------------------------------------
-- Task 6: Retrieve All Employees Not in IT
-- Objective: Find all employees outside the IT department
-- Result: 161 employees are not in Information Technology
-- ------------------------------------------------------------

SELECT *
FROM employees
WHERE NOT department = 'Information Technology';
