# Library Management System (SQL Project)

## 📌 Project Overview
This is a simple **Library Management System** built using SQL. It includes tables for books, members, and borrowed books, along with useful queries to manage library operations.

## 📂 Files in This Repository
- **schema.sql** → Contains table creation scripts.
- **sample_data.sql** → Contains sample data for testing.
- **queries.sql** → Contains useful SQL queries.
- **README.md** → Project documentation.

## 🛠️ How to Use This Project

### **Step 1: Set Up the Database**
1. Open MySQL or any SQL database tool.
2. Execute the `schema.sql` file to create the database and tables.

### **Step 2: Insert Sample Data**
1. Execute the `sample_data.sql` file to insert test records into the tables.
2. Verify data insertion with:
   ```sql
   SELECT * FROM books;
   SELECT * FROM members;
   SELECT * FROM borrowed_books;
   ```

### **Step 3: Run SQL Queries**
Use the `queries.sql` file to run useful queries such as:
- Viewing all books.
- Checking books borrowed by a specific member.
- Finding overdue books.

## 📌 SQL Queries Examples
```sql
-- View all books
SELECT * FROM books;

-- Find books borrowed by Alice Johnson
SELECT members.name, books.title, borrowed_books.borrow_date, borrowed_books.return_date
FROM borrowed_books
JOIN members ON borrowed_books.member_id = members.member_id
JOIN books ON borrowed_books.book_id = books.book_id
WHERE members.name = 'Alice Johnson';

-- Find overdue books
SELECT members.name, books.title, borrowed_books.borrow_date
FROM borrowed_books
JOIN members ON borrowed_books.member_id = members.member_id
JOIN books ON borrowed_books.book_id = books.book_id
WHERE borrowed_books.return_date IS NULL 
AND DATEDIFF(CURRENT_DATE, borrowed_books.borrow_date) > 15;
```

## 📞 Need Help?
If you have any questions, feel free to reach out or open an issue. 😊


## 👨‍💻 Developed By
This project is developed by [Senthil Murugan A K](https://github.com/Senthil-Murugan22). Feel free to connect with me!

