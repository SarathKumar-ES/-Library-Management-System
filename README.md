# 📚 Library Management System (MySQL)

A robust database solution for tracking library operations, including book inventory, customer transactions, and employee management.

## 🛠️ Technologies Used
- **Database**: MySQL
- **Key Features**:
  - 6 normalized tables with relationships (Branch, Employee, Books, Customer, IssueStatus, ReturnStatus)
  - 15+ optimized SQL queries for business insights
  - Data validation through constraints (Primary/Foreign Keys, CHECK)
  - Transaction tracking (book issues/returns)

## 📋 Table Structure
| Table          | Key Columns                          | Purpose                     |
|----------------|--------------------------------------|-----------------------------|
| `Branch`       | `Branch_no`, `Manager_Id`            | Library locations           |
| `Employee`     | `Emp_Id`, `Position`, `Salary`       | Staff management            |
| `Books`        | `ISBN`, `Category`, `Rental_Price`   | Inventory tracking          |
| `Customer`     | `Customer_Id`, `Reg_Date`            | Patron records              |
| `IssueStatus`  | `Issue_ID`, `Issued_Cust`            | Book checkout tracking      |
| `ReturnStatus` | `Return_Id`, `Return_date`           | Book return tracking        |
