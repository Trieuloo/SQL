-- First and last names of the top 5 authors clients borrowed in 2017


select a.AuthorFirstName, a.AuthorLastName
from author a
join book b on a.AuthorID = b.AuthorID -- Join book to Join over to borrower
join borrower bor on bor.BookID = b.BookID -- Join Borrower from book ID
where year(bor.BorrowDate) = '2017'  -- Find the year that is 2017
group by a.AuthorFirstName, a.authorlastname -- Group all the first naem so no dup's
order by count(*)  DESC -- Order by Count to see the top authors. DESC to see the top
limit 5 -- Limit only 5 results
