-- Create roles
CREATE ROLE 'admin';
CREATE ROLE 'staff';
CREATE ROLE 'customer';

-- Admin: Full access
GRANT ALL PRIVILEGES ON bookstore_db.* TO 'admin';

-- Sales: Can read/write to order-related tables
GRANT SELECT, INSERT, UPDATE ON bookstore_db.cust_order TO 'staff';
GRANT SELECT, INSERT, UPDATE ON bookstore_db.order_line TO 'staff';

-- Viewer: Read-only access to all tables
GRANT SELECT ON bookstore_db.* TO 'customer';

-- Create users
CREATE USER 'nomthi'@'localhost' IDENTIFIED BY 'password123';
CREATE USER 'jen'@'localhost' IDENTIFIED BY 'password456';
CREATE USER 'philip'@'localhost' IDENTIFIED BY 'password789';

-- Assign roles to users
GRANT 'admin' TO 'nomthi'@'localhost';
GRANT 'staff' TO 'jen'@'localhost';
GRANT 'customer' TO 'philip'@'localhost';
