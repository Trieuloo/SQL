-- The top month of borrows in 2017

select month(BorrowDate) as BorrowMonth, count(*) as BorrowCount -- Month(borrowdate) to get only the month, Count to get how many borrows
from Borrower
where year(Borrowdate) = 2017 -- Make year = 2017
group by BorrowMonth -- Congregate all the Month borrows
order by borrowcount desc -- DESC to see top month
 










