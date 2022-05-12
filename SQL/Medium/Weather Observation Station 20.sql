-- Language: MySQL
SELECT ROUND(S.LAT_N, 4)
FROM STATION S
WHERE (
    SELECT ROUND(COUNT(S.ID) / 2) - 1
    FROM STATION
  ) = (
    SELECT COUNT(ST.ID)
    FROM STATION ST
    WHERE ST.LAT_N > S.LAT_N
  );

-- Language: Oracle
SELECT ROUND(MEDIAN(LAT_N), 4)
FROM STATION;