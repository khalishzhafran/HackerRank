SELECT W.ID, WP.AGE, W.COINS_NEEDED, W.POWER
FROM WANDS W
  JOIN WANDS_PROPERTY WP
  ON W.CODE = WP.CODE
WHERE WP.IS_EVIL = 0 ANDW.COINS_NEEDED = (
    SELECT MIN(COINS_NEEDED)
    FROM WANDS W1
      JOIN WANDS_PROPERTY WP1
      ON W1.CODE = WP1.CODE
    WHERE W1.POWER = W.POWER ANDWP1.AGE = WP.AGE
  )
ORDER BY W.POWER DESC, WP.AGE DESC;