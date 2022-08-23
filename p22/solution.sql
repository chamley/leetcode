SELECT
    qb,
    rate
FROM qbstats_2015_2016
GROUP BY
  qb,
  rate
ORDER BY 
  rate DESC, qb ASC
LIMIT 10