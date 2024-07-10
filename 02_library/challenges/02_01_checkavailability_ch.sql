-- Determine how many copies of the book 'Dracula'
-- are available for library patrons to borrow.

SELECT COUNT(Books.Title)
FROM Books
WHERE Books.Title = 'Dracula';

SELECT COUNT(Books.Title)
FROM Loans
JOIN Books ON Loans.BookID = Books.BookID
WHERE Loans.ReturnedDate IS NULL AND Books.Title = 'Dracula';

SELECT 
(SELECT COUNT(Books.Title)
FROM Books
WHERE Books.Title = 'Dracula') -
(SELECT COUNT(Books.Title)
FROM Loans
JOIN Books ON Loans.BookID = Books.BookID
WHERE Loans.ReturnedDate IS NULL AND Books.Title = 'Dracula')
AS 'Total Available Copies of Dracula';