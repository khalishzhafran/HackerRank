-- Bar-bar Gamink
SELECT '* * * * * * * * * * * * * * * * * * * * ';
SELECT '* * * * * * * * * * * * * * * * * * * ';
SELECT '* * * * * * * * * * * * * * * * * * ';
SELECT '* * * * * * * * * * * * * * * * * ';
SELECT '* * * * * * * * * * * * * * * * ';
SELECT '* * * * * * * * * * * * * * * ';
SELECT '* * * * * * * * * * * * * * ';
SELECT '* * * * * * * * * * * * * ';
SELECT '* * * * * * * * * * * * ';
SELECT '* * * * * * * * * * * ';
SELECT '* * * * * * * * * * ';
SELECT '* * * * * * * * * ';
SELECT '* * * * * * * * ';
SELECT '* * * * * * * ';
SELECT '* * * * * * ';
SELECT '* * * * * ';
SELECT '* * * * ';
SELECT '* * * ';
SELECT '* * ';
SELECT '*';

-- Use function
SET @pattern = 21;
SELECT REPEAT('* ', @pattern := @pattern - 1) FROM INFORMATION_SCHEMA.TABLES;