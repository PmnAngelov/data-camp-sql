SELECT 
  code, 
  inflation_rate, 
  unemployment_rate
FROM economies
WHERE year = 2015 
  AND code NOT IN
	(SELECT code
  FROM countries
  WHERE 
    gov_form LIKE '%Republic%'
    OR gov_form LIKE '%Monarchy%')
ORDER BY inflation_rate;