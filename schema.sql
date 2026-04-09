CREATE DATABASE LibraryDB;
USE LibraryDB;

CREATE TABLE Users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100) UNIQUE,
    phone VARCHAR(15)
);

CREATE TABLE Authors (
    author_id INT AUTO_INCREMENT PRIMARY KEY,
    author_name VARCHAR(100)
);

CREATE TABLE Books (
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(150),
    author_id INT,
    available_copies INT,
    FOREIGN KEY (author_id) REFERENCES Authors(author_id)
);

CREATE TABLE Issued_Books (
    issue_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    book_id INT,
    issue_date DATE,
    return_date DATE,
    FOREIGN KEY (user_id) REFERENCES Users(user_id),
    FOREIGN KEY (book_id) REFERENCES Books(book_id)
);

INSERT INTO Users (name, email, phone)
VALUES ('John', 'john@gmail.com', '1234567890');

INSERT INTO Authors (author_name)
VALUES ('J.K. Rowling');

INSERT INTO Books (title, author_id, available_copies)
VALUES ('Harry Potter', 1, 5);

INSERT INTO Issued_Books (user_id, book_id, issue_date, return_date)
VALUES (1, 1, '2026-04-01', '2026-04-10');