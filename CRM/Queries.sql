MariaDB [OnlineShoppingCRM]> SELECT o.orderID, p.productName, oi.quantity
    -> FROM OrderItems oi
    -> JOIN Orders o ON oi.orderID = o.orderID
    -> JOIN Product p ON oi.productID = p.productID;
+---------+---------------+----------+
| orderID | productName   | quantity |
+---------+---------------+----------+
|       5 | Keyboard      |        1 |
|       2 | Smart Watch   |        1 |
|       3 | Laptop        |        1 |
|       3 | Phone Charger |        3 |
|       4 | Headphones    |        1 |
|       4 | Phone Charger |        1 |
+---------+---------------+----------+
6 rows in set (0.003 sec)

MariaDB [OnlineShoppingCRM]> SELECT paymentMethod, paymentStatus, amountPaid
    -> FROM Payment;
Empty set (0.001 sec)

MariaDB [OnlineShoppingCRM]> SELECT SUM(amountPaid) AS TotalSales
    -> FROM Payment;
+------------+
| TotalSales |
+------------+
|       NULL |
+------------+
1 row in set (0.005 sec)

MariaDB [OnlineShoppingCRM]> SELECT * FROM Product
    -> ORDER BY price DESC
    -> LIMIT 1;
+-----------+-------------+-------------------+------------+---------------+
| productID | productName | description       | price      | stockQuantity |
+-----------+-------------+-------------------+------------+---------------+
|         1 | Laptop      | HP Laptop 8GB RAM | 2500000.00 |             5 |
+-----------+-------------+-------------------+------------+---------------+
1 row in set (0.004 sec)
