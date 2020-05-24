/* 
This project is about the restaurants in New York.
 */

/* Questions
--#########################################################################
1. Start by getting a feel for the table (data). Select all using *
--##########################################################################
2. What are the distinct neighborhoods?
--#########################################################################################
3. What are the distinct cuisine types?
--#########################################################################################
4. Suppose we would like some Chinese takeout. What are our options?
--#########################################################################################
5. Return all the restaurants with reviews of 4 and above.
--#########################################################################################
6. Suppose Abbi and Ilana want to have a fancy dinner date.
Return all the restaurants that are Italian and $$$.
--#########################################################################################
7. Your coworker Trey can’t remember the exact name of a restaurant he went to but he knows it contains the word ‘meatball’ in it.
Can you find it for him using a query?
--#########################################################################################
8. Let’s order delivery to the house!
Find all the close by spots in Midtown, Downtown or Chinatown.
(OR can be used more than once)
--#########################################################################################
9. Find all the health grade pending restaurants (empty values).          
-- ###################################################################################### 
10. Create a Top 10 Restaurants Ranking based on reviews.
-- ###################################################################################### 
11. Use a CASE statement to change the rating system to:
review > 4.5 is Extraordinary
review > 4 is Excellent
review > 3 is Good
review > 2 is Fair
Everything else is Poor
Don’t forget to rename the new column!
																						*/
-- 1
SELECT *
FROM restaurants;
-- ########################################################################################
-- 2 
SELECT DISTINCT neighborhood
FROM restaurants;
-- ########################################################################################
-- 3
SELECT DISTINCT cuisine
FROM restaurants;
-- ########################################################################################
-- 4 
SELECT *
FROM restaurants
WHERE cuisine = 'Chinese';
-- ########################################################################################
-- 5
	SELECT review
	FROM restaurants
	WHERE cuisine >= 4;
-- ########################################################################################
-- 6
	SELECT *
	FROM restaurants
	WHERE cuisine = 'Italian'
	      AND price = '$$$';
-- ########################################################################################
-- 7
SELECT *
	FROM restaurants
	WHERE name like '%meatball%';
-- ########################################################################################
-- 8
SELECT *
	FROM restaurants
	WHERE neighborhood = 'Midtown' OR
	      neighborhood = 'Downtown' OR
		  neighborhood = 'Chinatown';
-- ########################################################################################
-- 9
	SELECT *
	FROM restaurants
	WHERE health IS NULL;
-- ########################################################################################
-- 10
SELECT *
	FROM restaurants
	ORDER BY review DESC
	LIMIT 10;
-- ########################################################################################
-- 11
SELECT name,
 CASE
  WHEN review = 4.5 THEN 'Extraordinary'
  WHEN review = 4 THEN 'Excellent'
  WHEN review = 3.0 THEN 'Good'
  WHEN review = 2.0 THEN 'Fair'
  ELSE 'Poor'
 END AS 'review'
FROM restaurants;
-- ########################################################################################