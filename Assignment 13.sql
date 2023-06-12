-- The oldest and the youngest clients of the library


SELECT c.ClientFirstName, c.ClientDoB as YoungtoOld -- Get DOB as Young to Old to see youngest / oldest
FROM Client c
WHERE c.ClientDoB = (SELECT MIN(ClientDoB) FROM Client) -- Creates the Oldest
   OR c.ClientDoB = (SELECT MAX(ClientDoB) FROM Client) -- Creates the youngest
group by c.ClientFirstName, c.ClientDoB -- Gropu by First name to see who it is, and DOB to see when they were born
order by YoungtoOld DESC -- DESC to see from Young to OLD as stated in table column

