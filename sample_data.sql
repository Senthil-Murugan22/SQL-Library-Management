-- sample_data.sql: Contains sample data

-- Insert Sample Books
INSERT INTO books (title, author, genre, published_year) VALUES
('The Alchemist', 'Paulo Coelho', 'Fiction', 1988),
('Harry Potter and the Sorcerer\'s Stone', 'J.K. Rowling', 'Fantasy', 1997),
('To Kill a Mockingbird', 'Harper Lee', 'Classic', 1960);

-- Insert Sample Members
INSERT INTO members (name, email) VALUES
('Alice Johnson', 'alice@example.com'),
('Bob Smith', 'bob@example.com');

-- Insert Sample Borrowed Books Data
INSERT INTO borrowed_books (book_id, member_id, borrow_date, return_date) VALUES
(1, 1, '2024-03-10', '2024-03-20'),
(2, 2, '2024-03-12', NULL);

