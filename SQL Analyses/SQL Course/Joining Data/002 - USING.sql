SELECT 
	c.name AS country, 
	l.name AS language, 
	official
FROM countries AS c
INNER JOIN languages AS l
USING(code);