-- galm 
SELECT 
    band_name, 
    (YEAR(split) - YEAR(formed)) AS lifespan 
FROM 
    bands 
WHERE 
    main_style = 'Glam rock' 
ORDER BY 
    lifespan DESC;