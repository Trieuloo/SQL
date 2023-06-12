-- Average number of borrows by age
SELECT c.ClientDoB, COUNT(b.BookID) AS NumBooksBorrowed, AVGBooks.AverageBorrowsByAge -- We need Average,Count of bookID's, and DOB
FROM Borrower b
JOIN Client c ON b.ClientID = c.ClientID -- Joining Client to get age
JOIN (
    SELECT c.ClientDoB, AVG(cnt) AS AverageBorrowsByAge -- Getting the Date of Birth as well as Averaging the count that we will get to get the average borrows
    FROM Client c
    JOIN ( -- Another Join to define count which would be from borrower
        SELECT b.ClientID, COUNT(b.BookID) AS cnt   -- Define count and client ID
        FROM Borrower b -- defines borrower
        GROUP BY b.ClientID -- Groups by clientID to drop dup clients
    ) AS BookCounts ON c.ClientID = BookCounts.ClientID -- Defines the subquery as bookcounts
    GROUP BY c.ClientDoB -- Group ClientDOB from previous Join statement
) AS AVGBooks ON c.ClientDoB = AVGBooks.ClientDoB -- Definese subquery as avg book
GROUP BY c.ClientDoB, AVGBooks.AverageBorrowsByAge -- Group all values
ORDER BY c.ClientDoB; -- order to make nicer.
