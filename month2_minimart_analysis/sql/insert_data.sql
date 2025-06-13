-INSERT INTO customers (name, email, join_date) VALUES
('Akinyemi Oduwole', 'akinyemi.o@example.com', '2023-01-15'),
('Grace Wambui', 'grace.w@example.com', '2023-03-22'),
('Tobechukwu Nnaji', 'tobechukwu.n@example.com', '2023-04-10'),
('Kelvin Otieno', 'kelvin.o@example.com', '2023-05-05'),
('Fatima Abdullahi', 'fatima.a@example.com', '2023-06-01');

-- Insert sample data into products table
INSERT INTO products (product_name, category, price) VALUES
Eseroghene Oghojafor
17:39
('Tablet', 'Electronics', 499.99),
('Hoodie', 'Clothing', 29.99),
('Science Fiction Novel', 'Books', 18.50),
('Bluetooth Speaker', 'Electronics', 64.99),
('Sneakers', 'Footwear', 89.50);

-- Insert sample data into orders table
INSERT INTO orders (customer_id, product_id, quantity, order_date) VALUES
(1, 1, 1, '2025-06-01'),
(2, 3, 2, '2025-06-03'),
(3, 2, 3, '2025-06-05'),
(4, 4, 1, '2025-06-07'),
(5, 5, 2, '2025-06-09');
