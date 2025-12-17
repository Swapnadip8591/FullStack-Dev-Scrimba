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
SELECT name, role, sold_price FROM staff
    FULL JOIN sold_cars ON staff.id = seller;