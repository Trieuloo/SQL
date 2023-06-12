-- First and last names of authors that wrote books in more than one genre

CREATE INDEX Genres ON Book (AuthorID);
SELECT AuthorFirstName, AuthorLastName
FROM Author
WHERE AuthorID IN (
    SELECT AuthorID
    FROM Book
    GROUP BY AuthorID
    HAVING COUNT(Genre) > 1
);
