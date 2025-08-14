--595. Big Countries
--https://leetcode.com/problems/big-countries/
SELECT w1.name,w1.population,w1.area
FROM World w1
WHERE area>=3000000 or population>=25000000
