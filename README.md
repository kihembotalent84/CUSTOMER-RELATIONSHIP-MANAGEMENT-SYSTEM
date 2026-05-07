# Online Shopping CRM Database System

## Project Description
This project is a Customer Relationship Management (CRM) database system developed as part of a Database Systems course project. The CRM system is integrated into an Online Shopping System and is designed to manage customer information, products, orders, payments, and order transactions efficiently using a relational database approach.

The system demonstrates the use of database design principles, entity relationships, normalization, and SQL implementation in solving real-world business problems within an e-commerce environment.

---

## Objectives
The main objectives of this project are:

- To design and implement a relational database for an online shopping CRM system
- To manage customer records and purchase history
- To track products and inventory
- To process customer orders and payments
- To demonstrate database relationships using ER diagrams
- To perform SQL queries for data retrieval and reporting

---

## Technologies Used
The following technologies and tools were used in the development of this project:

- MySQL
- XAMPP
- MySQL Shell
- MySQL Workbench
- SQL

---

## Database Entities
The database consists of the following entities:

### Customer
Stores customer information such as:
- Customer ID
- Name
- Email
- Phone number
- Address

### Product
Stores product details including:
- Product ID
- Product name
- Description
- Price
- Stock quantity

### Orders
Stores customer order information:
- Order ID
- Customer ID
- Order date
- Total amount

### Payment
Stores payment transaction details:
- Payment ID
- Order ID
- Payment date
- Payment method
- Payment status

### OrderItems
Resolves the many-to-many relationship between Orders and Product:
- Order ID
- Product ID
- Quantity
- Unit price

---

## Relationships
The system uses relational database relationships including:

- One customer can place many orders
- One order can contain many order items
- One product can appear in many order items
- Each order has one payment

---

## Features
The CRM system supports the following functionalities:

- Customer management
- Product management
- Order processing
- Payment tracking
- Inventory tracking
- Querying and reporting

---

## Sample SQL Operations
The project includes:
- CREATE TABLE commands
- INSERT INTO commands
- SELECT queries
- JOIN operations
- Aggregate functions

---

## How to Run the Project
1. Install XAMPP
2. Start Apache and MySQL services
3. Open MySQL Shell or phpMyAdmin
4. Create the database
5. Run the SQL commands provided
6. Execute sample queries to test the system

---

## Educational Purpose
This project was developed strictly for academic purposes to demonstrate understanding of:
- Database design
- Entity relationships
- SQL implementation
- Database normalization
- Data management concepts

---

## Author
Database Systems Course Project  
Online Shopping CRM System# CUSTOMER-RELATIONSHIP-MANAGEMENT-SYSTEM
