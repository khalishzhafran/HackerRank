SET @d = 0, @p = 0, @s = 0, @a = 0;
SELECT MIN(Doctors), MIN(Professors), MIN(Singers), MIN(Actors)
FROM (
  SELECT
    CASE
      WHEN OCCUPATION='Doctor' THEN (@d := @d + 1)
      WHEN OCCUPATION='Professor' THEN (@p := @p + 1)
      WHEN OCCUPATION='Singer' THEN (@s := @s + 1)
      WHEN OCCUPATION='Actor' THEN (@a := @a + 1)
    END AS ROWNUMBER,
    CASE WHEN OCCUPATION='Doctor' THEN NAME END AS Doctors,
    CASE WHEN OCCUPATION='Professor' THEN NAME END AS Professors,
    CASE WHEN OCCUPATION='Singer' THEN NAME END AS Singers,
    CASE WHEN OCCUPATION='Actor' THEN NAME END AS Actors
  FROM OCCUPATIONS
  ORDER BY NAME
) AS TEMP GROUP BY ROWNUMBER