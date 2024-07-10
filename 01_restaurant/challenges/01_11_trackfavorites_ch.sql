-- Update information in the database.

-- Set Cleo Goldwater's favorite dish to
-- the Quinoa Salmon Salad. unique ID 9

SELECT DishID
FROM Dishes
WHERE Name = 'Quinoa Salmon Salad'

SELECT *
FROM Customers
WHERE FirstName = 'Cleo' AND LastName = 'Goldwater'

UPDATE Customers
SET FavoriteDish = 9
WHERE CustomerID = 42;

SELECT Customers.FirstName, Customers.LastName, Customers.FavoriteDish, Dishes.Name
FROM Customers
JOIN Dishes ON Customers.FavoriteDish = Dishes.DishID
WHERE Customers.FirstName = 'Cleo' AND Customers.LastName = 'Goldwater';