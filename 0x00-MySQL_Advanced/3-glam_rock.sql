-- galm 
SELECT 
    band_name, 
    (YEAR(split) - YEAR(formed)) AS lifespan 
FROM 
    metals_bands 
WHERE 
    style = 'Glam rock' 
ORDER BY 
    lifespan DESC;