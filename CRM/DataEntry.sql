MariaDB [OnlineShoppingCRM]> INSERT INTO Customer (name, email, phone, address)
    -> VALUES ('John Doe', 'john@gmail.com', '0700000000', 'Kampala');
Query OK, 1 row affected (0.011 sec)

MariaDB [OnlineShoppingCRM]> INSERT INTO Product (productName, description, price, stockQuantity)
    -> VALUES
    -> ('Laptop', 'HP Laptop 8GB RAM', 2500000, 5),
    -> ('Smart Watch', 'Bluetooth smart watch', 300000, 15),
    -> ('Headphones', 'Wireless headphones', 150000, 20),
    -> ('Keyboard', 'Mechanical keyboard', 120000, 10),
    -> ('Phone Charger', 'Fast charging adapter', 50000, 30);
Query OK, 5 rows affected (0.007 sec)
Records: 5  Duplicates: 0  Warnings: 0

MariaDB [OnlineShoppingCRM]> INSERT INTO Customer (name, email, phone, address)
    -> VALUES
    -> ('Mary Jane', 'mary@gmail.com', '0711111111', 'Entebbe'),
    -> ('Peter Okello', 'peter@gmail.com', '0722222222', 'Gulu'),
    -> ('Sarah Namusoke', 'sarah@gmail.com', '0733333333', 'Mbarara'),
    -> ('David Kato', 'david@gmail.com', '0744444444', 'Jinja'),
    -> ('Grace Achieng', 'grace@gmail.com', '0755555555', 'Kampala');
Query OK, 5 rows affected (0.004 sec)
Records: 5  Duplicates: 0  Warnings: 0

MariaDB [OnlineShoppingCRM]> INSERT INTO Product (productName, description, price, stockQuantity)
    -> VALUES
    -> ('Laptop', 'HP Laptop 8GB RAM', 2500000, 5),
    -> ('Smart Watch', 'Bluetooth smart watch', 300000, 15),
    -> ('Headphones', 'Wireless headphones', 150000, 20),
    -> ('Keyboard', 'Mechanical keyboard', 120000, 10),
    -> ('Phone Charger', 'Fast charging adapter', 50000, 30);
Query OK, 5 rows affected (0.004 sec)
Records: 5  Duplicates: 0  Warnings: 0

MariaDB [OnlineShoppingCRM]> INSERT INTO Orders (customerID, orderDate, totalAmount)
    -> VALUES
    -> (2, '2026-05-01', 300000),
    -> (3, '2026-05-02', 2650000),
    -> (4, '2026-05-03', 170000),
    -> (5, '2026-05-04', 50000),
    -> (1, '2026-05-05', 120000);
Query OK, 5 rows affected (0.008 sec)
Records: 5  Duplicates: 0  Warnings: 0

MariaDB [OnlineShoppingCRM]> INSERT INTO OrderItems (orderID, productID, quantity, unitPrice)
    -> VALUES
    -> (2, 2, 1, 300000),
    -> (3, 1, 1, 2500000),
    -> (3, 5, 3, 50000),
    -> (4, 3, 1, 150000),
    -> (4, 5, 1, 50000),
    -> (5, 4, 1, 120000);
Query OK, 6 rows affected (0.006 sec)
Records: 6  Duplicates: 0  Warnings: 0

MariaDB [OnlineShoppingCRM]> INSERT INTO Payment (orderID, paymentDate, amountPaid, paymentMethod, paymentStatus)
    -> VALUES
    -> (2, '2026-05-01', 300000, 'Mobile Money', 'Paid'),
    -> (3, '2026-05-02', 2650000, 'Bank Card', 'Paid'),
    -> (4, '2026-05-03', 170000, 'Cash on Delivery', 'Pending'),
    -> (5, '2026-05-04', 50000, 'Mobile Money', 'Paid'),
    -> (6, '2026-05-05', 120000, 'Bank Card', 'Paid');
ERROR 1452 (23000): Cannot add or update a child row: a foreign key constraint fails (`onlineshoppingcrm`.`payment`, CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`orderID`) REFERENCES `orders` (`orderID`))
