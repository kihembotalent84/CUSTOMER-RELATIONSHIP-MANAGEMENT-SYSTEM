MariaDB [(none)]> CREATE DATABASE OnlineShoppingCRM;
Query OK, 1 row affected (0.002 sec)

MariaDB [(none)]> USE OnlineShoppingCRM;
Database changed
MariaDB [OnlineShoppingCRM]> CREATE TABLE Customer (
    ->     customerID INT PRIMARY KEY AUTO_INCREMENT,
    ->     name VARCHAR(100),
    ->     email VARCHAR(100),
    ->     phone VARCHAR(20),
    ->     address VARCHAR(255)
    -> );
Query OK, 0 rows affected (0.016 sec)

MariaDB [OnlineShoppingCRM]> CREATE TABLE Product (
    ->     productID INT PRIMARY KEY AUTO_INCREMENT,
    ->     productName VARCHAR(100),
    ->     description TEXT,
    ->     price DECIMAL(10,2),
    ->     stockQuantity INT
    -> );
Query OK, 0 rows affected (0.019 sec)

MariaDB [OnlineShoppingCRM]> CREATE TABLE Orders (
    ->     orderID INT PRIMARY KEY AUTO_INCREMENT,
    ->     customerID INT,
    ->     orderDate DATE,
    ->     totalAmount DECIMAL(10,2),
    ->     FOREIGN KEY (customerID) REFERENCES Customer(customerID)
    -> );
Query OK, 0 rows affected (0.112 sec)

MariaDB [OnlineShoppingCRM]> CREATE TABLE OrderItems (
    ->     orderID INT,
    ->     productID INT,
    ->     quantity INT,
    ->     unitPrice DECIMAL(10,2),
    ->     PRIMARY KEY (orderID, productID),
    ->     FOREIGN KEY (orderID) REFERENCES Orders(orderID),
    ->     FOREIGN KEY (productID) REFERENCES Product(productID)
    -> );
Query OK, 0 rows affected (0.257 sec)

MariaDB [OnlineShoppingCRM]> CREATE TABLE Payment (
    ->     paymentID INT PRIMARY KEY AUTO_INCREMENT,
    ->     orderID INT,
    ->     paymentDate DATE,
    ->     amountPaid DECIMAL(10,2),
    ->     paymentMethod VARCHAR(50),
    ->     paymentStatus VARCHAR(50),
    ->     FOREIGN KEY (orderID) REFERENCES Orders(orderID)
    -> );
Query OK, 0 rows affected (0.055 sec)

MariaDB [OnlineShoppingCRM]>