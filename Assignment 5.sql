-- Nationalities of the least 5 authors that clients borrowed during the years 2015-2017

select a.AuthorNationality
from Author a
join book b on a.AuthorID = b.AuthorID -- Join book on AuthorID
join borrower bo on bo.BookID = b.BookID -- Join Borrower on BookID
where year(bo.BorrowDate) between '2015' and '2017' -- Obtain the year from borrowdate and make sure answer is between 2015 and 2017
group by a.AuthorNationality -- Group by nationality so no dups
order by count(*) ASC -- ASC to get the least 5
limit 5 -- Limit by 5