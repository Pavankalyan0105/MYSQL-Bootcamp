-- TODO: FETCH DETAILS OF THE CUSTOMERS WHO CANCELLED ORDERS

-- SELECT customers.customer_id , customers.customer_name , customers.phone , customers.city FROM lco_motors.customers
-- JOIN lco_motors.orders ON customers.customer_id = orders.customer_id WHERE orders.status = "Cancelled";