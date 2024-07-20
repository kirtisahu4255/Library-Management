CREATE DATABASE Library_management; 

CREATE TABLE Book_fines
(Fine_id VARCHAR(100) PRIMARY KEY NOT NULL,
Loan_id INTEGER, 
Fine_amount DECIMAL(4,2),
Fine_due_date DATE,
FOREIGN KEY (Loan_id) REFERENCES Book_loans(Loan_id)
);

CREATE TABLE Book_loans
(Loan_id INTEGER PRIMARY KEY NOT NULL,
Loan_Date DATE NOT NULL, 
Book_id INTEGER NOT NULL,
Member_id INTEGER NOT NULL, 
Return_date DATE, 
FOREIGN KEY (Book_id) REFERENCES Books(Book_id),
FOREIGN KEY (Member_id) REFERENCES Library_members (Member_id)
);

CREATE TABLE Books
(Book_id INTEGER PRIMARY KEY NOT NULL,
Book_Title VARCHAR(255), 
Author VARCHAR(255),
Genre_id VARCHAR(200),
Publication_Year INTEGER, 
ISBN INTEGER, 
FOREIGN KEY (Genre_id) REFERENCES Genres(Genre_id)
);

CREATE TABLE Genres 
(Genre_id VARCHAR(100) PRIMARY KEY NOT NULL, 
Genre_name VARCHAR(200)
);

CREATE TABLE Library_members
(Member_id INTEGER PRIMARY KEY NOT NULL,
First_name VARCHAR(100),
Last_name VARCHAR(100),
Home_address VARCHAR(255),
Email_address VARCHAR(200),
Phone_number BIGINT
);


INSERT INTO Library_members 
(Member_id, First_name, Last_name, Home_address, Email_address, Phone_number)
VALUES
(15244,'Mohammad','Ellis','35 Canterbury Road, Vowchurch, HR2 2DQ','mohammedellis@teleworm.us', 7010220783),
(57384,'Olivia','Thorpe','26 Neville Street, Islington, TQ13 6RQ','oliviathorpe@dayrep.com',7741838109),
(68087,'Robert','Humphries','26 Wern Ddu Lane, Lumb, HX6 4YU','roberthumphries@jourrapide.com',7718865298),
(86923,'Jude','Hilton','47 Graham Road, Chediston, IP19 3RR','judehilton@dayrep.com',7806046430),
(300608,'Danielle','Lees','42 Thirsk Road, Blairquhan, KA19 7US','daniellelees@armyspy.com',7011963834),
(445334,'Kate','Bolton','42 Holburn Lane, Heast, IV49 7PP','katebolton@teleworm.us',7809710411),
(616640,'Lily','Jenkins','61 Hendford Hill, Moy House, IV36 6FQ','lilyjenkins@armyspy.com',7887880476),
(778478,'Isaac','Barber','56 Guildford Rd, East Learney, AB31 3FG','isaacbarber@armyspy.com',7941906773),
(806632,'Holly','Saunders','49 Sloe Lane, Cruden Bay, AB42 6PN','hollysaunders@armyspy.com',7961253068),
(889999,'Harrison','Austin','96 Sandyhill Rd, Fullwood, KA3 9LL','harrisonaustin@dayrep.com',7948102536)
;


UPDATE `Library_management`.`Library_members` SET `Phone_number` = '+447961253068' WHERE (`Member_id` = '806632');
UPDATE `Library_management`.`Library_members` SET `Phone_number` = '+447941906773' WHERE (`Member_id` = '778478');
UPDATE `Library_management`.`Library_members` SET `Phone_number` = '+447887880476' WHERE (`Member_id` = '616640');
UPDATE `Library_management`.`Library_members` SET `Phone_number` = '+447809710411' WHERE (`Member_id` = '445334');
UPDATE `Library_management`.`Library_members` SET `Phone_number` = '+447806046430' WHERE (`Member_id` = '86923');
UPDATE `Library_management`.`Library_members` SET `Phone_number` = '+447741838109' WHERE (`Member_id` = '57384');
UPDATE `Library_management`.`Library_members` SET `Phone_number` = '+447718865298' WHERE (`Member_id` = '68087');
UPDATE `Library_management`.`Library_members` SET `Phone_number` = '+447011963834' WHERE (`Member_id` = '300608');
UPDATE `Library_management`.`Library_members` SET `Phone_number` = '+447010220783' WHERE (`Member_id` = '15244');
UPDATE `Library_management`.`Library_members` SET `Phone_number` = '+447010220783' WHERE (`Member_id` = '889999');


INSERT INTO Genres
(Genre_id, Genre_name)
VALUES
('PHILOS', 'Philsophy'), ('RNOVEL', 'Romance Novel'), ('SEHELP', 'Self-help book'),
('MYSTER', 'Mystery'), ('COOKBK', 'Cookbook'), ('CHILDS', 'Children\s'),('THRILL', 'THRILLER'),
('FCTION', 'Fiction'), ('HUMOUR', 'Humour'), ('BIOPHY', 'Biography')
;


INSERT INTO Books
(Book_id, Book_Title, Author, Genre_id, Publication_Year, ISBN)
VALUES
(6457, 'It Ends With Us', 'Colleen Hoover', 'RNOVEL', 2016, 1471156265),
(3678, 'The Boy, The Mole, The Fox and The Horse', 'Charlie Mackesy', 'PHILOS', 2019, 1529105102),
(1143, 'Why Has Nobody Told Me This Before?: The No 1 Sunday Times Bestseller', 'Dr Julie Smith', 'SEHELP', 2022, 0241529719),
(1890, 'The Bullet That Missed: (The Thursday Murder Club 3)', 'Richard Osman', 'MYSTER', 2022, 0241512425),
(2534, 'One: Simple One-Pan Wonders', 'Jamie Oliver', 'COOKBK', 2022, 0241431107),
(6478, 'It Starts with Us', 'Colleen Hoover', 'RNOVEL', 2022, 1398518166),
(9867, 'Guinness World Recrods 2023', 'Guinness World Records', 'CHILDS', 2022, 1913484211),
(4958, 'Verity', 'Colleen Hoover', 'THRILL', 2022, 1408726602),
(6987, 'The Thursday Murder Club: (The Thursday Murder Club 1)', 'Richard Osman', 'MYSTER', 2021, 0241988268),
(8967, 'Where the Crawdads Sing', 'Delia Owens', 'MYSTER', 2019, 1472154665),
(3424, 'Where\'s Spidey?: A Marvel Spider-Man search & find book', 'Marvel Entertainment International Ltd', 'CHILDS', 2022, 1800783019),
(1463, 'The Man Who Died Twice: (The Thursday Murder Club 2)', 'Richard Osman', 'MYSTER', 2022, 0241988241),
(4094, 'Spare: by Prince Harry', 'Prince Harry The Duke of Sussex', 'BIOPHY', 2023, 0857504797),
(5006, 'Pinch of Nom: Enjoy', 'Kay Allinson', 'COOKBK', 2022, 1529062268),
(8103, 'SPACEBOY', 'David Walliams', 'CHILDS', 2022, 0008467196),
(3476, 'The World\'s Worst Pets', 'David Walliams', 'CHILDS', 2022, 0008305803),
(4509, 'The Satsuma Complex', 'Bob Mortimer', 'FCTION', 2022, 1398521205),
(7834, 'Lessons in Chemistry', 'Bobbie Garmus', 'HUMOUR', 2022, 0857528122),
(7645, 'Bored of Lunch: The Healthy Slow Cooker Book', 'Nathan Anthony', 'COOKBK', 2023, 1529903548),
(2343, 'Bunny vs Monkey: Multiverse Mix-Up!', 'Jamie Smart', 'CHILDS', 2023, 1788452925)
;

INSERT INTO Library_members 
(Member_id, First_name, Last_name, Home_address, Email_address, Phone_number)
VALUES
(174824, 'Alexander', 'Mann', '2 Great North Road, Ambleston, SA62 7SQ','alexandermann@rhyta.com', 447920087022),
(199433, 'Alice', 'Williams', '33 Church Way, Braemore, KW6 6AN', 'alicewilliams@teleworm.us', 447854211765),
(716541, 'Amber', 'Bell', '96 Sloe Lane, Crundale, CT4 2AF', 'amberbell@jourrapide.com', 447986903326),
(366514, 'Emily', 'Nicholls', '10 New Dover Rd, Wadhurst, TN5 4QE', 'emilynicholls@armyspy.com', 447936196725),
(104776, 'Brandon', 'Carpenter', '65 Whitby Road, Dibden Purlieu, SO45 6GN', 'brandoncarpenter@armyspy.cpm', 447733321529),
(846729, 'Charles', 'Powell', '17 Nenthead Road, High Roding, CM6 2JH', 'charlespowell@rhyta.com', 447833322025)
;

INSERT INTO Book_loans
(Loan_id, Loan_Date, Book_id, Member_id, Return_date)
VALUES
(3, '2023-01-04', 8103, 104776, '2023-01-18'),
(4, '2023-01-09', 6457, 846729, '2023-01-23'),
(5, '2023-01-09', 6478, 846729, '2023-01-23'),
(6, '2023-02-03', 4094, 86923, '2023-02-17'),
(7, '2023-02-03', 7645, 889999, '2023-02-17'),
(8, '2023-02-11', 2343, 174824, '2023-02-25'),
(9, '2023-02-11', 3424, 366514, '2023-02-25'),
(10, '2023-02-11', 3476, 716541, '2023-02-25'),
(11, '2023-02-11', 9867, 57384, '2023-02-25'),
(12, '2023-02-11', 7834, 300608, '2023-02-25'), 
(15, '2023-02-13', 5006, 68087, '2023-02-27')
;

UPDATE Book_loans
SET Loan_id = 13
WHERE Loan_id = 15
;

ALTER TABLE Book_fines
ADD COLUMN Member_id INTEGER NOT NULL AFTER Loan_id
;

ALTER TABLE Book_fines
ADD FOREIGN KEY (Member_id) REFERENCES Library_members(Member_id)
;

ALTER TABLE Book_fines
DROP COLUMN Fine_due_date
;


INSERT INTO Book_fines 
(Fine_id, Loan_id, Fine_amount)
VALUES 
('OVRD001', 1, 12.50),
('OVRD002', 2, 12.50),
('OVRD003', 3, 11.00),
('OVRD004', 4, 8.50),
('OVRD005', 5, 8.50)
;

ALTER TABLE Book_loans 
RENAME COLUMN Return_date TO Due_date;


ALTER TABLE Book_fines
ADD COLUMN Member_id INTEGER NOT NULL AFTER Loan_id
;

ALTER TABLE Book_fines
ADD COlUMN First_name VARCHAR(100) NOT NULL AFTER Member_id
; 

ALTER TABLE Book_Fines
ADD COLUMN Last_name VARCHAR(100) NOT NULL AFTER First_name
;

ALTER TABLE Book_Fines
ADD COLUMN Book_id INTEGER NOT NULL AFTER Last_name
;

UPDATE `Library_management`.`Book_Fines` SET `Member_id` = '616640', `First_name` = 'Lily', `Last_name` = 'Jenkins', `Book_id` = '1143' WHERE (`Fine_id` = 'OVRD001');
UPDATE `Library_management`.`Book_Fines` SET `Member_id` = '616640', `First_name` = 'Lily', `Last_name` = 'Jenkins', `Book_id` = '2534' WHERE (`Fine_id` = 'OVRD002');
UPDATE `Library_management`.`Book_Fines` SET `Member_id` = '104776', `First_name` = 'Brandon', `Last_name` = 'Carpenter', `Book_id` = '8103' WHERE (`Fine_id` = 'OVRD003');
UPDATE `Library_management`.`Book_Fines` SET `Member_id` = '846729', `First_name` = 'Charles', `Last_name` = 'Powell', `Book_id` = '6457' WHERE (`Fine_id` = 'OVRD004');
UPDATE `Library_management`.`Book_Fines` SET `Member_id` = '846729', `First_name` = 'Charles', `Last_name` = 'Powell', `Book_id` = '6478' WHERE (`Fine_id` = 'OVRD005');


ALTER TABLE Book_Fines 
ADD CONSTRAINT FK_Member_id
FOREIGN KEY (Member_id)
REFERENCES Library_members(Member_id)
;

ALTER TABLE Book_Fines 
ADD CONSTRAINT FK_Book_id
FOREIGN KEY (Book_id)
REFERENCES Books(Book_id)
;

ALTER TABLE Book_Fines
DROP COLUMN First_name
;

ALTER TABLE Book_Fines
DROP COLUMN Last_name
;




# VIEW WITH JOINS

CREATE VIEW fined_members AS
SELECT Book_Fines.Fine_id, 
Book_Fines.Loan_id,
Book_Fines.Book_id, 
Library_Members.First_name,
Library_Members.Last_name,
Book_Fines.Fine_amount 
FROM Book_Fines
INNER JOIN Library_Members ON Book_Fines.Member_id =
Library_Members.Member_id
;




# STORED FUNCTION

DELIMITER //

CREATE FUNCTION calculatefine(Loan_id INTEGER)
RETURNS Decimal(4,2)
DETERMINISTIC
BEGIN 
DECLARE fine_total DECIMAL(4,2);

SELECT SUM(DATEDIFF(CURRENT_DATE, Due_Date) * 0.50)
INTO fine_total
FROM Book_loans
WHERE Loan_id = Loan_id AND CURRENT_DATE > Due_Date; 

RETURN fine_total;

END//

DELIMITER ; 

# EXAMPLE QUERY

select Library_management.calculatefine(3);


# EXAMPLE QUERY WITH SUBQUERY

SELECT
Book_id, Book_Title
FROM 
Books
WHERE 
Book_id IN(SELECT 
Book_id
FROM
Book_loans
WHERE 
Book_id > 2000 AND Book_id < 3000);






# STORED PROCEDURE

DELIMITER // 

CREATE PROCEDURE BookCheck(thisBook 
INTEGER)
BEGIN
	   SELECT
           Books.Book_Title, 
           Books.Author, 
           Books.Genre_id, 
           Books.Publication_Year,
           Books.ISBN,
           Book_loans.Loan_Date
       FROM
          Books INNER JOIN Book_loans ON 
          Books.Book_id = Book_loans.Book_id
       WHERE Books.ISBN = thisBook; 
END //

DELIMITER ; 

# EXAMPLE QUERY

CALL BookCheck(857528122);





# EXAMPLE GROUP BY QUERY

SELECT COUNT(Genre_id), Publication_Year
FROM Books
WHERE Genre_id = 'CHILDS'
GROUP BY Publication_Year
;





# THE TRIGGER 

CREATE TABLE Library_member_changes (
id INT AUTO_INCREMENT PRIMARY KEY,
The_New_id INTEGER NOT NULL,
Alert VARCHAR(200) NOT NULL, 
AlertTime TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
); 



DELIMITER // 

CREATE TRIGGER new_library_member 
AFTER INSERT 
ON Library_members FOR EACH ROW 
BEGIN 
IF NEW.Email_address IS NULL 
OR NEW.Phone_number IS NULL 
THEN 
INSERT INTO Library_member_changes(id, The_New_id, Alert)
VALUES (id, NEW.Member_id, 'Please update this information.');
END IF; 
END// 

DELIMITER ; 

# EXAMPLE QUERY

INSERT INTO Library_members(Member_id, First_name, Last_name, Home_address)
VALUES 
(54353, 'Kameron', 'Josephs', '32423 Flower Pot Lane, London, SW12 3TY')
;






   
   
   
   
	   



























