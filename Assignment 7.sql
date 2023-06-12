-- Top borrowed genres for clients born in years 1970-1980

SELECT b.Genre, COUNT(*) AS BorrowCount -- Count  to see the top borrowed
FROM book b
join borrower bo on b.BookID = bo.BookID -- Join Borrower to see most borrowed
join client c on c.ClientID = bo.ClientID -- Join client to see DOB
where c.ClientDoB between 1970 and 1980 -- DoB between 1970 and 1980
group by b.Genre -- Group by Genre to get rid of dups
order by BorrowCount DESC; -- Most Borrowed





