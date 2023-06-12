-- First and last name of Clients that borrowed books in March 2018
Create Index March2018Borrow on Borrower(Borrowdate) ; -- Index on borrower
select c.ClientFirstName, c.ClientLastName
from client c -- Creates C variable to call on
join Borrower b on c.clientID = b.ClientID -- Joins borrower to see the borrow date
where b.borrowdate>= '2018-03-01' and b.borrowdate<= '2018-03-31'; -- Quereying inbetween the two borrow dates to see if the result lands exactly in between the first on the month and the last of the month
    
