-- Top 5 occupations that borrowed the most in 2016

SELECT c.occupation, count(*) as MostBorrowed -- Count most borrowed
from Client c
join borrower bo on bo.ClientID = c.ClientID -- Join borrower to see borrowed
where year(bo.BorrowDate) = 2016 -- 2016 only
group by c.occupation -- Occupations Dup
order by MostBorrowed DESC -- MOST
limit 5 -- 5 limit






