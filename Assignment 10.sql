-- Create a VIEW and display the titles that were borrowed by at least 20% of clients

-- Create the view
CREATE VIEW PopularBooks AS
SELECT  b.BookTitle
FROM Book b
JOIN Borrower bo ON bo.BookID = b.BookID -- Join Borrower to get borrowed
GROUP BY b.BookTitle -- Group by bookTitle to not have dup titles
HAVING COUNT(DISTINCT bo.ClientID) >= (SELECT 0.2 * COUNT(DISTINCT ClientID) FROM Client); -- Distinct Client ID to make sure no dups, >= to get 20% or more DISTINCT client IDs from client

-- Query the view to display the popular books
SELECT * FROM PopularBooks;












