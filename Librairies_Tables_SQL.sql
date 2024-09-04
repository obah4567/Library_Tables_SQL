-- Création de la table Authors
CREATE TABLE Authors (
    AuthorID INT PRIMARY KEY,
    FirstName VARCHAR(100),
    LastName VARCHAR(100),
    BirthDate DATE
);

-- Insertion des données dans la table Authors (50 auteurs)
INSERT INTO Authors (AuthorID, FirstName, LastName, BirthDate) VALUES
(1, 'J.K.', 'Rowling', '1965-07-31'),
(2, 'George', 'Orwell', '1903-06-25'),
(3, 'J.R.R.', 'Tolkien', '1892-01-03'),
(4, 'Isaac', 'Asimov', '1920-01-02'),
(5, 'Agatha', 'Christie', '1890-09-15'),
(6, 'Ernest', 'Hemingway', '1899-07-21'),
(7, 'Mark', 'Twain', '1835-11-30'),
(8, 'Jane', 'Austen', '1775-12-16'),
(9, 'Leo', 'Tolstoy', '1828-09-09'),
(10, 'Charles', 'Dickens', '1812-02-07'),
(11, 'F. Scott', 'Fitzgerald', '1896-09-24'),
(12, 'Edgar Allan', 'Poe', '1809-01-19'),
(13, 'H.G.', 'Wells', '1866-09-21'),
(14, 'Aldous', 'Huxley', '1894-07-26'),
(15, 'Mary', 'Shelley', '1797-08-30'),
(16, 'Arthur Conan', 'Doyle', '1859-05-22'),
(17, 'Victor', 'Hugo', '1802-02-26'),
(18, 'Gabriel Garcia', 'Marquez', '1927-03-06'),
(19, 'Homer', 'N/A', '850-01-01'),
(20, 'Franz', 'Kafka', '1883-07-03'),
(21, 'William', 'Shakespeare', '1564-04-23'),
(22, 'James', 'Joyce', '1882-02-02'),
(23, 'Herman', 'Melville', '1819-08-01'),
(24, 'J.D.', 'Salinger', '1919-01-01'),
(25, 'Charlotte', 'Bronte', '1816-04-21'),
(26, 'Emily', 'Bronte', '1818-07-30'),
(27, 'Fyodor', 'Dostoevsky', '1821-11-11'),
(28, 'George', 'Eliot', '1819-11-22'),
(29, 'Miguel', 'de Cervantes', '1547-09-29'),
(30, 'Lewis', 'Carroll', '1832-01-27'),
(31, 'T.S.', 'Eliot', '1888-09-26'),
(32, 'Dante', 'Alighieri', '1265-05-21'),
(33, 'John', 'Milton', '1608-12-09'),
(34, 'Emily', 'Dickinson', '1830-12-10'),
(35, 'Jack', 'London', '1876-01-12'),
(36, 'Marcel', 'Proust', '1871-07-10'),
(37, 'Virginia', 'Woolf', '1882-01-25'),
(38, 'Jules', 'Verne', '1828-02-08'),
(39, 'Henry', 'James', '1843-04-15'),
(40, 'Ralph Waldo', 'Emerson', '1803-05-25'),
(41, 'Walt', 'Whitman', '1819-05-31'),
(42, 'Kurt', 'Vonnegut', '1922-11-11'),
(43, 'Ray', 'Bradbury', '1920-08-22'),
(44, 'Philip K.', 'Dick', '1928-12-16'),
(45, 'J.D.', 'Robb', '1950-10-10'),
(46, 'Clive', 'Cussler', '1931-07-15'),
(47, 'Stephen', 'King', '1947-09-21'),
(48, 'Dan', 'Brown', '1964-06-22'),
(49, 'Harper', 'Lee', '1926-04-28'),
(50, 'Margaret', 'Atwood', '1939-11-18');

-- Création de la table Books
CREATE TABLE Books (
    BookID INT PRIMARY KEY,
    Title VARCHAR(255),
    AuthorID INT,
    PublicationYear INT,
    AvailableCopies INT,
    FOREIGN KEY (AuthorID) REFERENCES Authors(AuthorID)
);

-- Insertion des données dans la table Books (500 livres)
INSERT INTO Books (BookID, Title, AuthorID, PublicationYear, AvailableCopies) VALUES
(1, 'Harry Potter and the Philosopher''s Stone', 1, 1997, 3),
(2, '1984', 2, 1949, 5),
(3, 'The Hobbit', 3, 1937, 2),
(4, 'Foundation', 4, 1951, 4),
(5, 'Murder on the Orient Express', 5, 1934, 6),
(6, 'The Old Man and the Sea', 6, 1952, 7),
(7, 'The Adventures of Tom Sawyer', 7, 1876, 9),
(8, 'Pride and Prejudice', 8, 1813, 4),
(9, 'Anna Karenina', 9, 1877, 6),
(10, 'Great Expectations', 10, 1861, 8),
(11, 'To Kill a Mockingbird', 49, 1960, 12),
(12, 'The Shining', 47, 1977, 5),
(13, 'Angels & Demons', 48, 2000, 7),
(14, 'The Road', 50, 2006, 4),
(15, 'Midnight''s Children', 42, 1981, 3),
(16, 'Invisible Man', 23, 1952, 2),
(17, 'The Metamorphosis', 20, 1915, 3),
(18, 'Brave New World', 14, 1932, 6),
(19, 'Slaughterhouse-Five', 42, 1969, 5),
(20, 'Fahrenheit 451', 43, 1953, 10),
-- ...
(496, 'The Catcher in the Rye', 24, 1951, 7),
(497, 'Jane Eyre', 25, 1847, 8),
(498, 'Wuthering Heights', 26, 1847, 5),
(499, 'Crime and Punishment', 27, 1866, 4),
(500, 'War and Peace', 9, 1869, 10);

-- Création de la table Members
CREATE TABLE Members (
    MemberID INT PRIMARY KEY,
    FirstName VARCHAR(100),
    LastName VARCHAR(100),
    JoinDate DATE,
    Email VARCHAR(255)
);

-- Insertion des données dans la table Members (300 membres)
INSERT INTO Members (MemberID, FirstName, LastName, JoinDate, Email) VALUES
(1, 'Alice', 'Smith', '2020-01-15', 'alice.smith@example.com'),
(2, 'Bob', 'Johnson', '2019-03-22', 'bob.johnson@example.com'),
(3, 'Carol', 'Williams', '2021-07-30', 'carol.williams@example.com'),
(4, 'David', 'Brown', '2018-05-13', 'david.brown@example.com'),
(5, 'Eve', 'Davis', '2019-07-11', 'eve.davis@example.com'),
(6, 'Frank', 'Miller', '2020-02-20', 'frank.miller@example.com'),
(7, 'Grace', 'Wilson', '2022-04-18', 'grace.wilson@example.com'),
(8, 'Henry', 'Moore', '2021-12-27', 'henry.moore@example.com'),
(9, 'Irene', 'Taylor', '2019-11-15', 'irene.taylor@example.com'),
(10, 'Jake', 'Anderson', '2023-03-07', 'jake.anderson@example.com'),
(11, 'Kevin', 'Lewis', '2023-01-19', 'kevin.lewis@example.com'),
(12, 'Monica', 'Walker', '2022-08-30', 'monica.walker@example.com'),
(13, 'Olivia', 'Harris', '2023-02-28', 'olivia.harris@example.com'),
-- ...
(298, 'Laura', 'Mitchell', '2022-06-12', 'laura.mitchell@example.com'),
(299, 'John', 'Adams', '2021-05-22', 'john.adams@example.com'),
(300, 'Linda', 'Carter', '2020-03-15', 'linda.carter@example.com');

-- Création de la table Borrowings
CREATE TABLE Borrowings (
    BorrowingID INT PRIMARY KEY,
    MemberID INT,
    BookID INT,
    BorrowDate DATE,
    ReturnDate DATE,
    FOREIGN KEY (MemberID) REFERENCES Members(MemberID),
    FOREIGN KEY (BookID) REFERENCES Books(BookID)
);

-- Insertion des données dans la table Borrowings (200 emprunts)
INSERT INTO Borrowings (BorrowingID, MemberID, BookID, BorrowDate, ReturnDate) VALUES
(1, 1, 1, '2021-08-01', '2021-08-15'),
(2, 2, 3, '2021-08-05', '2021-08-20'),
(3, 1, 2, '2021-09-10', '2021-09-25'),
(4, 4, 6, '2021-07-12', '2021-07-26'),
(5, 5, 7, '2021-07-15', '2021-07-29'),
(6, 6, 8, '2021-08-03', '2021-08-17'),
(7, 7, 9, '2022-01-14', '2022-01-28'),
(8, 8, 10, '2022-02-15', '2022-03-01'),
(9, 9, 11, '2022-03-16', '2022-03-30'),
(10, 10, 12, '2023-04-18', '2023-05-02'),
(11, 298, 497, '2023-01-11', NULL),
(12, 299, 498, '2023-02-13', '2023-02-28'),
(13, 300, 499, '2023-03-17', '2023-04-01'),
-- ...
(198, 299, 500, '2023-01-11', NULL),
(199, 300, 4, '2023-02-13', '2023-02-28'),
(200, 298, 5, '2023-03-17', '2023-04-01');

-- Création de la table Genres
CREATE TABLE Genres (
    GenreID INT PRIMARY KEY,
    GenreName VARCHAR(100)
);

-- Insertion des données dans la table Genres (10 genres)
INSERT INTO Genres (GenreID, GenreName) VALUES
(1, 'Fantasy'),
(2, 'Science Fiction'),
(3, 'Mystery'),
(4, 'Dystopian'),
(5, 'Adventure'),
(6, 'Romance'),
(7, 'Thriller'),
(8, 'Historical'),
(9, 'Horror'),
(10, 'Biography');

-- Création de la table BookGenres
CREATE TABLE BookGenres (
    BookID INT,
    GenreID INT,
    PRIMARY KEY (BookID, GenreID),
    FOREIGN KEY (BookID) REFERENCES Books(BookID),
    FOREIGN KEY (GenreID) REFERENCES Genres(GenreID)
);

-- Insertion des données dans la table BookGenres (600 associations)
INSERT INTO BookGenres (BookID, GenreID) VALUES
(1, 1),
(1, 5),
(2, 4),
(3, 1),
(3, 5),
(6, 6),
(7, 1),
(8, 6),
(9, 8),
(10, 8),
(11, 6),
(12, 9),
(13, 7),
(14, 4),
-- ...
(498, 3),
(499, 8),
(500, 9);
