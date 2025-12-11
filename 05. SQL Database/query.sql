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

