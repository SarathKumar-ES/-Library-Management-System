-- Crating Database Library
create database library;
use library;

-- Creating tables
# 1 branch table
create table Branch(
Branch_no int primary key,
Manager_Id int,
Branch_address varchar(255),
Contact_no varchar(15)
);

DESCRIBE Branch;

# 2 Employee Table
create	table Employee(
Emp_Id int Primary Key,
Emp_name varchar(100),
Position varchar(50),
Salary decimal(10, 2),
Branch_no int,
foreign key (Branch_no) references Branch ( Branch_no)
);
describe Employee;

#3 Books 

create table Books (
ISBN int primary key,
Book_title varchar (225),
Category varchar (100),
Retail_Price decimal(10, 2),
Status varchar (3) Check (Status in ( 'Yes' , 'No' )),
Author varchar (100),
Publisher varchar( 100)
);

describe Books;

# 4 Customer
create table Customer (
Customer_Id int Primary Key,
Customer_name varchar (100),
Customer_address varchar(255),
Reg_Date date
);

describe customer;

# 5 Issue Status Table
create table IssueStatus(
Issue_ID int primary Key,
Issued_Cust int,
Issued_book_name varchar(255),
Isuue_date date,
ISBN_Book int,
foreign key (Issued_Cust) references Customer (Customer_Id),
foreign key ( ISBN_Book) references Books (ISBN)
);
describe IssueStatus;
alter table IssueStatus Change Isuue_date Issue_date date;


# 6 ReturnStatus 
create table ReturnStatus (
Return_Id int Primary Key,
Return_Cust int ,
Return_book_name varchar (255),
Return_date Date,
 ISBN_book2 int,
 foreign key (Return_Cust) references Customer ( Customer_Id),
 foreign key (ISBN_book2) references Books ( ISBN)
 );
 describe ReturnStatus;
 
 SHOW TABLES;
 
 -- Insertung Values
 
 # 1 Branch table
 INSERT INTO Branch (Branch_no, Manager_Id, Branch_address, Contact_no) VALUES
(1, 101, 'Main Branch, Mumbai', '1234567890'),
(2, 102, 'Sub Branch, Pune', '1234567891'),
(3, 103, 'Branch, Delhi', '1234567892'),
(4, 104, 'Branch, Kolkata', '1234567893'),
(5, 105, 'Branch, Chennai', '1234567894'),
(6, 106, 'Branch, Bangalore', '1234567895'),
(7, 107, 'Branch, Hyderabad', '1234567896'),
(8, 108, 'Branch, Ahmedabad', '1234567897'),
(9, 109, 'Branch, Jaipur', '1234567898'),
(10, 110, 'Branch, Lucknow', '1234567899');

select * from Branch;

# 2 Employee Table

INSERT INTO Employee (Emp_Id, Emp_name, Position, Salary, Branch_no) VALUES
(1, 'Amit Sharma', 'Manager', 75000, 1),
(2, 'Neha Gupta', 'Assistant', 45000, 1),
(3, 'Rahul Singh', 'Clerk', 30000, 2),
(4, 'Priya Mehta', 'Manager', 80000, 2),
(5, 'Sunil Kumar', 'Clerk', 32000, 3),
(6, 'Kavita Jain', 'Assistant', 50000, 3),
(7, 'Rajesh Iyer', 'Manager', 60000, 4),
(8, 'Preeti Roy', 'Clerk', 25000, 4),
(9, 'Manish Tiwari', 'Assistant', 48000, 5),
(10, 'Ankita Bose', 'Manager', 77000, 5),
(11, 'Ravi Kumar', 'Manager', 90000, 6),
(12, 'Deepa Nair', 'Clerk', 28000, 6),
(13, 'Ankit Verma', 'Assistant', 47000, 7),
(14, 'Nidhi Sinha', 'Manager', 70000, 7),
(15, 'Suraj Rana', 'Clerk', 31000, 8),
(16, 'Pooja Yadav', 'Assistant', 52000, 8),
(17, 'Vinod Mishra', 'Manager', 85000, 9),
(18, 'Meena Das', 'Clerk', 29000, 9),
(19, 'Suresh Reddy', 'Assistant', 45000, 10),
(20, 'Rina Patel', 'Manager', 75000, 10),
(21, 'Vikram Goel', 'Clerk', 27000, 1),
(22, 'Arun Malhotra', 'Assistant', 48000, 2),
(23, 'Jaya Krishnan', 'Manager', 88000, 3),
(24, 'Anjali Khanna', 'Clerk', 26000, 4),
(25, 'Kiran Kaur', 'Assistant', 56000, 5);

select * From Employee;
# 3 Books table

INSERT INTO Books (ISBN, Book_title, Category, Retail_Price, Status, Author, Publisher) VALUES
(1001, 'Introduction to Python', 'Programming', 30.00, 'Yes', 'John Doe', 'TechPress'),
(1002, 'Data Science 101', 'Data Science', 45.00, 'No', 'Alice Smith', 'SciTech'),
(1003, 'Digital Marketing', 'Marketing', 20.00, 'Yes', 'Robert Johnson', 'MarketBooks'),
(1004, 'History of India', 'History', 15.00, 'Yes', 'Sanjay Verma', 'IndiaPub'),
(1005, 'Artificial Intelligence', 'AI', 50.00, 'Yes', 'AI Experts', 'AI World'),
(1006, 'Advanced SQL', 'Database', 25.00, 'No', 'SQL Guru', 'DataPub'),
(1007, 'React for Beginners', 'Programming', 35.00, 'Yes', 'Jane Roe', 'WebPress'),
(1008, 'Cloud Computing Basics', 'Technology', 40.00, 'Yes', 'Cloud Expert', 'CloudWorld'),
(1009, 'Machine Learning', 'Data Science', 55.00, 'No', 'AI Specialist', 'DataTech'),
(1010, 'Ancient Civilizations', 'History', 18.00, 'Yes', 'Archaeology Team', 'HistoryBooks'),
(1011, 'Modern JavaScript', 'Programming', 38.00, 'Yes', 'JS Guru', 'CodePress'),
(1012, 'Deep Learning', 'AI', 60.00, 'No', 'Neural Networks', 'AI Research'),
(1013, 'SQL Optimization', 'Database', 22.00, 'Yes', 'DBA Pro', 'DataExperts'),
(1014, 'World Wars', 'History', 19.00, 'Yes', 'War Historians', 'HistoryPub'),
(1015, 'Big Data Analytics', 'Data Science', 50.00, 'Yes', 'Big Data Team', 'SciTech'),
(1016, 'Basics of Physics', 'Science', 25.00, 'No', 'Science Enthusiast', 'EduWorld'),
(1017, 'Organic Chemistry', 'Science', 30.00, 'Yes', 'Chemistry Guru', 'EduBooks'),
(1018, 'Web Development', 'Programming', 29.00, 'Yes', 'Code Master', 'WebTech'),
(1019, 'Quantum Mechanics', 'Science', 35.00, 'No', 'Physics Research', 'EduScience'),
(1020, 'Cybersecurity Essentials', 'Technology', 45.00, 'Yes', 'Cyber Pro', 'SecureTech'),
(1021, 'Blockchain Basics', 'Technology', 40.00, 'Yes', 'Crypto Enthusiast', 'TechWorld'),
(1022, 'Digital Electronics', 'Engineering', 30.00, 'Yes', 'Electronics Team', 'EngiBooks'),
(1023, 'Robotics', 'Engineering', 60.00, 'Yes', 'Robotics Experts', 'AI World'),
(1024, 'Design Patterns', 'Programming', 50.00, 'Yes', 'Code Architect', 'DesignPress'),
(1025, 'Neural Networks Explained', 'AI', 65.00, 'No', 'DeepMind', 'AI Publishing');

alter table Books Change 
Retail_Price Rental_Price decimal(10, 2);
select * from Books;

# 4 Customer Table
INSERT INTO Customer (Customer_Id, Customer_name, Customer_address, Reg_date) 
VALUES
(1, 'Ravi Kumar', 'Delhi', '2021-12-15'),
(2, 'Megha Sharma', 'Mumbai', '2022-03-18'),
(3, 'Nikhil Gupta', 'Kolkata', '2021-11-05'),
(4, 'Sneha Iyer', 'Bangalore', '2023-01-20'),
(5, 'Vikas Roy', 'Lucknow', '2021-06-30'),
(6, 'Anil Khandelwal', 'Jaipur', '2022-05-12'),
(7, 'Pooja Gupta', 'Delhi', '2023-02-10'),
(8, 'Suresh Reddy', 'Hyderabad', '2021-10-22'),
(9, 'Neha Jain', 'Ahmedabad', '2022-01-14'),
(10, 'Kiran Mehta', 'Pune', '2022-06-11'),
(11, 'Amit Desai', 'Surat', '2021-09-09'),
(12, 'Nidhi Sharma', 'Chennai', '2023-03-15'),
(13, 'Ramesh Kumar', 'Bhopal', '2021-08-10'),
(14, 'Preeti Verma', 'Ranchi', '2021-12-31'),
(15, 'Rajesh Iyer', 'Coimbatore', '2023-04-20'),
(16, 'Seema Das', 'Bangalore', '2022-08-16'),
(17, 'Arun Malhotra', 'Delhi', '2022-07-21'),
(18, 'Deepa Nair', 'Kochi', '2022-04-18'),
(19, 'Vinod Gupta', 'Chandigarh', '2023-01-11'),
(20, 'Asha Bose', 'Mumbai', '2022-09-30'),
(21, 'Kavita Rao', 'Hyderabad', '2023-05-05'),
(22, 'Sanjay Patil', 'Nagpur', '2021-07-08'),
(23, 'Rekha Tiwari', 'Agra', '2022-10-25'),
(24, 'Vikram Singh', 'Jaipur', '2023-06-01'),
(25, 'Anjali Khanna', 'Delhi', '2023-06-12');

select * from customer;

# 5 in to IsuueStatus Table

INSERT INTO IssueStatus (Issue_Id, Issued_cust, Issued_book_name, Issue_date, Isbn_book) VALUES
(1, 1, 'Introduction to Python', '2023-06-05', 1001),
(2, 2, 'Artificial Intelligence', '2023-06-10', 1005),
(3, 3, 'History of India', '2023-06-15', 1004),
(4, 4, 'React for Beginners', '2023-07-01', 1007),
(5, 5, 'Machine Learning', '2023-06-25', 1009),
(6, 6, 'Big Data Analytics', '2023-07-05', 1015),
(7, 7, 'Modern JavaScript', '2023-05-10', 1011),
(8, 8, 'Cybersecurity Essentials', '2023-06-14', 1020),
(9, 9, 'Digital Electronics', '2023-06-18', 1022),
(10, 10, 'Robotics', '2023-06-20', 1023);


# 6 in to Return Staus

INSERT INTO ReturnStatus (Return_Id, Return_cust, Return_book_name, Return_date, Isbn_book2) 
VALUES  
(1, 1, 'Introduction to Python', '2023-06-20', 1001),  
(2, 2, 'Artificial Intelligence', '2023-06-25', 1005),  
(3, 3, 'History of India', '2023-07-01', 1004),  
(4, 4, 'React for Beginners', '2023-07-10', 1007),  
(5, 5, 'Machine Learning', '2023-07-15', 1009);  

-- 1  Retrieving the book title, category, and rental price of all available books
select Book_title, Category, Rental_Price 
from Books 
where Status = 'Yes';


-- 2 List the employee names and their respective salaries in descending order of salary
select Emp_name, Salary
from Employee order by Salary desc;

-- 3 Retrieving book titles and the corresponding customers who have issued those books

select B.Book_title, C.Customer_name
from Books B
Join IssueStatus I on B.ISBN
join Customer C on I.Issued_Cust = C.Customer_Id; 

-- 4 Display the total count of books in each category

select Category, count(*) as Book_Count
from Books
group by Category;

-- 5 Retrieve the employee names and their positions for the employees above Rs 50000

select Emp_name, Position
From Employee 
where Salary > 50000;

-- 6 customer names who registered before 2022-01-01 and have not issued any books yet

SELECT C.Customer_name 
FROM Customer C
LEFT JOIN IssueStatus I ON C.Customer_Id = I.Issued_cust
WHERE C.Reg_date < '2022-01-01' AND I.Issue_Id IS NULL;

-- 7  Branch numbers and the total count of employees in each branch

SELECT Branch_no, COUNT(*) AS Employee_Count 
FROM Employee
GROUP BY Branch_no;

-- 8 customers who have issued books in the month of June 2023

SELECT DISTINCT C.Customer_name 
FROM Customer C
JOIN IssueStatus I ON C.Customer_Id = I.Issued_cust
WHERE MONTH(I.Issue_date) = 6 AND YEAR(I.Issue_date) = 2023;

-- 9 Retrieve book_title from book table containing history

SELECT Book_title 
FROM Books 
WHERE Book_title LIKE '%history%';

-- 10 Retrieve the branch numbers along with the count of employees for branches having more than 5 employees

SELECT Branch_no, COUNT(*) AS Employee_Count
FROM Employee GROUP BY Branch_no
HAVING Employee_Count > 5;

-- 11  Retrieve the names of employees who manage branches and their respective branch addresses

SELECT E.Emp_name, B.Branch_address
FROM Employee E
JOIN Branch B ON E.Branch_no = B.Branch_no;

-- 12 Display the names of customers who have issued books with a rental price higher than Rs. 25

SELECT DISTINCT C.Customer_name FROM Customer C
JOIN IssueStatus I ON C.Customer_Id = I.Issued_cust
JOIN Books B ON I.Isbn_book = B.ISBN
WHERE B.Rental_Price > 25;