-- SELECT * FROM cars;

/*
	Select the brand, model, condition and year from the cars table
*/
-- SELECT brand, model, condition, year FROM cars;

/*
	Select the brand, model, condition and price from cars
		where the condition equals 0
*/
-- SELECT brand, model, condition, price FROM cars WHERE condition = 0;

/*
	Select the brand, model, condition and price from cars
		find results where the price is less than $50,000
*/
-- SELECT brand, model, condition, price FROM cars WHERE price < 50000;

/*
	Filter out cars from 1965
		Select the brand, model, year and price
*/
-- SELECT brand, model, year, price FROM cars WHERE year != 1965;

/*
	Find cars which are not yellow
		Select the brand, model, price and color
*/
-- SELECT brand, model, price, color FROM cars WHERE color != 'yellow';

/*
	Select the brand, model, color and year for cars
		where the model is 'DB' followed by any other single character
*/
-- SELECT brand, model, color, year FROM cars WHERE model LIKE 'DB%';

/*
	Select the brand, model, year, condition and price from cars
		where the condition is 3 or higher
		and the year is before 1970
		and the price is below 100,000
*/
-- SELECT brand, model, year, condition, price FROM cars 
-- 	WHERE condition >= 3 
-- 	AND year < 1970
-- 	AND price < 100000;

/*
	Select cars made between 1980 and 1989
		show the brand, model, year and price
*/
-- SELECT brand, model, year, price FROM cars WHERE year BETWEEN 1980 AND 1989;

/*
	Select brand, model, condition, color and price from cars
		where the price is between $20,000 and $60,000
		and the condition is between 1 and 3
		and the color contains red
*/
-- SELECT brand, model, condition, color, price FROM cars
-- 	WHERE price BETWEEN 20000 AND 60000
-- 	AND condition BETWEEN 1 AND 3
-- 	AND color LIKE '%red%';

/*
	Search for brand, model, color, year and price of cars
		where the color is a shade of red
		or the year is between 1960 and 1969
		and sold is false
*/
-- SELECT brand, model, color, year, price FROM cars
-- 	WHERE (color LIKE '%red%'
-- 	OR year BETWEEN 1960 AND 1969)
-- 	AND sold = false;

/*
	Select the brand, model, condition and year from cars
		Where the year is 1961, 1963, 1965, 1967 or 1969
		and the condition is 3 or higher
		and sold is false
*/
-- SELECT brand, model, condition, year FROM cars 
-- 	WHERE year IN (1961, 1962, 1965, 1969)
-- 	AND condition >=3
-- 	AND sold IS false;

/*
	Select brand, model, price and sold from cars
		filter out any cars which are sold
		show cars where the brand is none of ('Ford', 'Triumph', 'Chevrolet', 'Dodge')
		or the price is less than $50000
*/
-- SELECT brand, model, price, sold FROM cars
-- 	WHERE (brand NOT IN ('Ford', 'Triumph', 'Chevrolet', 'Dodge')
-- 	OR price < 50000)
-- 	AND sold IS false;

/*
	Select brand, model, and color from cars
		where the color is 'red'
		and the brand is not 'Ferrari'
		and the car has not been sold
*/
-- SELECT brand, model, color FROM cars
-- 	WHERE color LIKE '%red%'
-- 	AND brand != 'Ferrari'
-- 	AND sold is false;

/*
	Select brand, model, and color from cars
		where the color is not red, blue, or white
		and the brand is none of: Aston Martin, Bentley or Jaguar
		and sold is false
*/
-- SELECT brand, model, color FROM cars
-- 	WHERE color NOT IN ('red', 'blue', 'white')
-- 	AND brand NOT IN ('Aston Martin', 'Bentley', 'Jaguar')
-- 	AND sold is false;

/*
	Select brand, model, year, sold from cars
		where the brand is 'Dodge' and year is in the 60s
		or the brand is either 'Ford' or 'Triumph' and the car is from the 70s
		only select cars where sold is not true
*/
-- SELECT brand, model, year, sold FROM cars
-- 	WHERE ((brand = 'Dodge' AND year BETWEEN 1960 AND 1969)
-- 	OR (brand IN ('Ford', 'Triumph') AND year BETWEEN 1970 AND 1979))
-- 	AND sold IS false;

/*
	Select the brand, model, condition and price from cars
		where the car is not sold
		and the condition is not 5
		order the table by condition in descending order
		and by price in ascending order
*/
-- SELECT brand, model, condition, price FROM cars
-- 	WHERE sold IS false
-- 	AND condition != 5
-- 	ORDER BY condition DESC, price;

/*
	Select the brand, model, color and price from cars
		where the color is a shade of 'red'
		and sold is false
		order by price
		limit the results to 5
*/
-- SELECT brand, model, color, price FROM cars
-- 	WHERE color LIKE '%red%'
-- 	AND sold IS false
-- 	ORDER BY price
-- 	LIMIT 5;	

/*
	Sum the price of cars
		where sold is true
	Use the alias total_earnings in your output
*/
-- SELECT SUM(price) AS total_earnings FROM cars WHERE sold IS true;

/*
	Use the AVG aggregate function to find the average price
		where the brand is Bentley
*/
-- SELECT AVG(price) FROM cars WHERE brand = 'Bentley';

/*
	Select the average, minimum and maximum price from cars
		where sold is true
	Round the average up to the nearest whole number
		and use 'avg' as the alias for that result	
*/
-- SELECT ROUND(AVG(price)) AS avg, MIN(price), MAX(price) FROM cars
-- 	WHERE sold IS true;

/*
	Select the condition, and a count of the condition from cars
		group by the condition column
*/
-- SELECT condition, COUNT(condition) FROM cars GROUP BY condition;

/*
	Select:
		* the brand
		* a count of the brand
		* and an average of the price for each brand
		* round the average down to the nearest number
		* alias the average as 'AVG' in your output
	From cars where
		the car has not been sold
	Group the table by brand.
*/
-- SELECT brand, COUNT(brand), FLOOR(AVG(price)) AS AVG FROM cars
-- 	WHERE sold IS false
-- 	GROUP BY brand;

/*
	Select:
		* year
		* a count of cars from that year, aliased as car_count
		* the maximum price
		* the minimum price
	from the table cars
		where the car has been sold
	group by year
		only show years where more than one car has been sold from that year
	order the result by car_count
*/
-- SELECT year, COUNT(*) AS car_count, MAX(price), MIN(price) FROM cars
-- 	WHERE sold IS true
-- 	GROUP BY year
-- 	HAVING COUNT(*) > 1
-- 	ORDER BY COUNT(*);

/*
	Select brand, model, and year from cars
		only show the oldest 5 cars in the database
		show cars which haven't been sold
*/
-- SELECT brand, model, year FROM cars
-- 	WHERE sold IS false
-- 	ORDER BY year
-- 	LIMIT 5;

/*
	Select color and count how many cars have each color
		find cars which have not been sold
		order by count in descending order
		only show results where the count is greater than 2
*/
-- SELECT color, COUNT(color) FROM cars
-- 	WHERE sold IS false
-- 	GROUP BY color
-- 	HAVING COUNT(color) > 2
-- 	ORDER BY COUNT(color) DESC;