-- Average number of borrowed books by job title

SELECT c.occupation, avg(bookcount) as AvgNumOfBooks -- AVG Book Count  to see average borrowed. BookCount is going to be said in my subquery
from Client c
Join ( -- Need to join borrower, and do a subquery at the same time
	select bo.ClientID, count(*) as bookCount -- Obtain the client ID to identify client, and count(*) to see borrowed books
    from borrower bo
    group by bo.clientID -- Group by ClientID to obtain all values for singular clients
    ) subquery on subquery.clientID = c.ClientID -- Creating the subquery
group by c.occupation -- Group occupation to see job title
order by AvgNumOfBooks desc -- Better format







