-- Country  
INSERT INTO country (country_id, country_name)
VALUES (45, 'Kenya'),
       (46, 'South Africa'),
       (47, 'Ghana');

-- Address Status
INSERT INTO address_status (status_id, status_name)
VALUES (23, 'current'),
(2, 'old');

-- Book Language
INSERT INTO book_language (language_id, language_name)
VALUES (3, 'English'),
(4, 'Zulu'),
(6, 'Tswana');

-- Publisher
INSERT INTO publisher (publisher_id, publisher_name)
VALUES (5, 'Penguin Books'),
(6, 'Motau Books'),
(7, 'Mokoenyema Books');

-- Author
INSERT INTO author (author_id, author_name)
VALUES (5, 'Philip'),
(4, 'Nomthandazo'),
(3, 'Jennifer');

-- Book
INSERT INTO book (book_id, title, publication_year, price, language_id, publisher_id)
VALUES (50, 'The River Between', 1965, 850.00, 3, 5),
(51, 'Stolen Moments', 1980, 1000.00, 4, 6),
(52, 'Uthando Nesthembu', 2000, 500.00, 6, 7);

-- Book Author
INSERT INTO book_author (book_id, author_id)
VALUES (50, 5),
(51, 4),
(52, 3);

-- Address
INSERT INTO address (address_id, street, city, postal_code, country_id)
VALUES (20, 'Moi Avenue', 'Nairobi', '00100', 46),
(21, 'Imbali Street', 'Mpumalanga', '1053', 47),
(22, 'Lotus Gradens', 'Pretoria', '1570', 48);

-- Customer
INSERT INTO customer (customer_id, full_name, email, phone)
VALUES (11, 'Alice Wambui', 'alice@webmail.com', '0712345678'),
(12, 'Tshiamo Mabhena', 'tshiamo@gmail.com', '0725981023'),
(13, 'Mbali Qoka', 'mbali@outlook.com', '0812549621');

-- Customer Address
INSERT INTO customer_address (customer_id, address_id, status_id)
VALUES (90, 10, 23),
(91, 11, 25),
(92, 12, 25);

-- Shipping Method
INSERT INTO shipping_method (shipping_method_id, method_name, cost)
VALUES (1, 'Standard Shipping', 100.00),
(3, 'International Ship', 500.00),
(4, 'Overnight Shipping', 300.00);

-- Order Status
INSERT INTO order_status (status_id, status_name)
VALUES (1, 'Pending'),
(2, 'Shipped'),
(3, 'Delivered');

-- Customer Order
INSERT INTO cust_order (order_id, customer_id, order_date, shipping_method_id, status_id, total_amount)
VALUES (30, 10, '2025-04-11', 1, 25, 1700.00),
(31, 11, '2025-04-08', 2, 26, 3000.00),
(32, 12, '2025-04-01', 3, 27, 500.00);

-- Order Line
INSERT INTO order_line (order_id, book_id, quantity, price_at_order_time)
VALUES (23, 3, 2, 850.00),
(24, 4, 9, 1500.00),
(25, 5, 10, 250.00);

-- Order History
INSERT INTO order_history (history_id, order_id, status_id, change_date)
VALUES (4, 3, 1, '2025-04-11 10:00:00'),
(5, 4, 2, '2025-04-10 15:00:00'),
(6, 5, 3, '2025-04-01 10:00:00');
