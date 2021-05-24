-- TODO: JOINING : 2 tables
-- SELECT orders.orderId , orders.orderDate , customers.customername
-- FROM orders
-- INNER JOIN customers ON customers.customerId = orders.customerId LIMIT 10;


-- TODO: JOINING : 3 tables

-- SELECT orders.orderid , customers.customername , shippers.shippername
-- FROM (( orders
-- INNER JOIN customers ON orders.Customerid = customers.customerid)
-- INNER JOIN shippers  ON orders.shipperid = shippers.shipperid
-- )LIMIT 5;

-- TODO: LEFT JOIN

-- SELECT customers.customerid , orders.orderid ,orders.orderdate
-- FROM customers 
-- LEFT JOIN orders ON orders.customerid = customers.customerid  LIMIT 15;

-- TODO: RIGHT JOIN

-- SELECT customers.customername , orders.orderid , orders.orderdate
-- FROM orders 
-- RIGHT JOIN customers ON orders.customerid = customers.customerid LIMIT 150;