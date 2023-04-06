-- imports 
SELECT origin AS origin, SUM(fans) AS nb_fans
FROM bands
GROUP BY origin
ORDER BY nb_fans DESC;
