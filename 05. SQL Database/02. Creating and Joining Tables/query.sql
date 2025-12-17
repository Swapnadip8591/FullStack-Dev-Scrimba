/*
	Select name, role, city, state
		From the staff table
	Left join with the dealerships table where the dealership_id in staff
			matches with the id in dealerships
*/
-- SELECT name, role, city, state FROM staff s
--     LEFT JOIN dealerships d 
--     ON s.dealership_id = d.id;

/*
	Select name, role, city, state
		From the staff table
	Right join with the dealerships table where the dealership_id in staff
			matches with the id in dealerships
*/
-- SELECT name, role, city, state FROM staff s
--     RIGHT JOIN dealerships d 
--     ON s.dealership_id = d.id;

/*
	Select name, role, sold_price from staff
	Inner join with sold_cars
		matching seller with staff.id	
*/
-- SELECT name, role, sold_price FROM staff
--     INNER JOIN sold_cars ON staff.id = seller;

/*
	Use full join to show the name, role and sold_price
		from staff
	Full join with sold_cars
		matching seller with staff.id	
*/
-- SELECT name, role, sold_price FROM staff
--     FULL JOIN sold_cars ON staff.id = seller;

/*
	Select the city and average car price
	Round that car price to a whole number
	
	Only show dealerships which have cars
	
	Group by dealership city and state
*/
-- SELECT city, state, ROUND(AVG(price), 2) AS avg FROM dealerships
-- 	RIGHT JOIN cars ON dealerships.id = cars.dealership_id
-- 	GROUP BY city, state;

/*
	Select the name and role, alongside a total_sales:
		this is the sum of sales by a member of staff
	
	Use staff as your left table and sold_cars as your right table
	
	Include a where clause to select only staff with the role 'Salesperson'
	
	Group by staff name and role
	Order by the total_sales from high to low
*/
-- SELECT name, role, SUM(sold_price) AS total_sales FROM staff
-- 	LEFT JOIN sold_cars ON staff.id = seller
-- 	WHERE role = 'Salesperson'
-- 	GROUP BY name, role
-- 	ORDER BY total_sales DESC;

/*
	Select the city, state and
		count the total number of cars in each dealership
		alias the count as car_count
	
	Use cars as the left table, and dealerships as the right table
		choosing a join which will show every dealership
		
	Include a condition to count unsold cars
	
	Group by dealership city and state
	Order by the car_count
*/
-- SELECT city, state, COUNT(c.id) AS car_count FROM cars c
-- 	RIGHT JOIN dealerships d ON dealership_id = d.id
-- 	WHERE sold IS NOT true
-- 	GROUP BY city, state
-- 	ORDER BY car_count;

/*
	Select the name, role and city from sold_cars
	
	Join with the staff and dealerships tables
		use appropriate joins to show staff who have no dealership_id
		
	Include a where clause to find
		- null values in sold_cars
		- staff who have the role 'Salesperson'
*/
-- SELECT name, role, city FROM sold_cars sc
-- 	RIGHT JOIN staff s ON sc.seller = s.id
-- 	LEFT JOIN dealerships d ON s.dealership_id = d.id
-- 	WHERE S.role = 'Salesperson'
-- 	GROUP BY name, role, city
-- 	HAVING COUNT(cars_id) = 0;

/*
	Show the city and state of dealerships
		with a count of the cars sold
		aliased as cars_sold
		
	Select from sold_cars
		join with the relevant tables
		
	Include dealerships which have no sold cars
	
	Order the count in descending order
		
	Hint: you may need to join using a table not included in our columns
*/
-- SELECT d.city, d.state, COUNT(sc.cars_id) AS cars_sold FROM sold_cars sc
-- 	LEFT JOIN cars c ON sc.cars_id = c.id
-- 	RIGHT JOIN dealerships d ON c.dealership_id = d.id
-- 	GROUP BY d.city, d.state
-- 	ORDER BY cars_sold DESC;