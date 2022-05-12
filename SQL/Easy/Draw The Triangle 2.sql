-- Bar-bar Gamink
SELECT '* ';
SELECT '* * ';
SELECT '* * * ';
SELECT '* * * * ';
SELECT '* * * * * ';
SELECT '* * * * * * ';
SELECT '* * * * * * * ';
SELECT '* * * * * * * * ';
SELECT '* * * * * * * * * ';
SELECT '* * * * * * * * * * ';
SELECT '* * * * * * * * * * * ';
SELECT '* * * * * * * * * * * * ';
SELECT '* * * * * * * * * * * * * ';
SELECT '* * * * * * * * * * * * * * ';
SELECT '* * * * * * * * * * * * * * * ';
SELECT '* * * * * * * * * * * * * * * * ';
SELECT '* * * * * * * * * * * * * * * * * ';
SELECT '* * * * * * * * * * * * * * * * * * ';
SELECT '* * * * * * * * * * * * * * * * * * * ';
SELECT '* * * * * * * * * * * * * * * * * * * *';

-- Use function
SET @pattern = 0;
SELECT REPEAT('* ', @pattern := @pattern + 1) FROM INFORMATION_SCHEMA.TABLES WHERE @pattern < 20;