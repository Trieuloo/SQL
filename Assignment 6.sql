-- The book that was most borrowed during the years 2015-2017

select b.AuthorID, b.BookTitle -- See which book was most borrowed
from book b 
join borrower bo on b.BookID = bo.BookID -- Join borrower BookID
where year(bo.BorrowDate) between '2015' and '2017' -- Between 2015 and 2017 borrow date
group by b.AuthorID, b.BookTitle -- Make sure all dups are gone
order by count(*) DESC -- Most Borrowed
limit 1 -- Most borrowed, only one
