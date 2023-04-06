-- galm 
SELECT 
    band_name, 
    (YEAR(split) - YEAR(formed)) AS lifespan 
FROM 
    metals_bands 
WHERE style LIKE '%Glam rock%'
ORDER BY lifespan DESC