SELECT F1.X, F1.Y
FROM FUNCTIONS AS F1
  JOIN FUNCTIONS AS F2
  ON F1.X = F2.Y ANDF2.X = F1.Y
GROUP BY F1.X, F1.Y
HAVING COUNT(F1.X) > 1 ORF1.X < F1.Y
ORDER BY F1.X