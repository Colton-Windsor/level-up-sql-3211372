-- Remove incorrect information from the database.

-- A customer named Norby has notified us he won't 
-- be able to keep his Friday reservation. 
-- Today is July 24, 2022.

SELECT 
  CustomerID,
  FirstName,
  LastName
FROM Customers
WHERE FirstName = 'Norby';

SELECT * FROM Reservations
WHERE CustomerID = 64
ORDER BY Date;

DELETE FROM Reservations 
WHERE ReservationID = 2000;

-- Above was my solution - They're intention was for me to join 
-- the customer and reservation tables first, so below is my attempt at that. 

SELECT * FROM Reservations
JOIN Customers ON Reservations.CustomerID = Customers.CustomerID
WHERE Customers.FirstName = 'Norby' AND Reservations.Date > '2022-07-24';

DELETE FROM Reservations 
WHERE ReservationID = 2000;