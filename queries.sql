-- queries.sql: Contains useful queries

-- Query: View all books
SELECT * FROM books;

-- Query: Find books borrowed by a specific member
SELECT members.name, books.title, borrowed_books.borrow_date, borrowed_books.return_date
FROM borrowed_books
JOIN members ON borrowed_books.member_id = members.member_id
JOIN books ON borrowed_books.book_id = books.book_id
WHERE members.name = 'Alice Johnson';

-- Query: Find overdue books (borrowed but not returned within 15 days)
SELECT members.name, books.title, borrowed_books.borrow_date
FROM borrowed_books
JOIN members ON borrowed_books.member_id = members.member_id
JOIN books ON borrowed_books.book_id = books.book_id
WHERE borrowed_books.return_date IS NULL 
AND DATEDIFF(CURRENT_DATE, borrowed_books.borrow_date) > 15;

