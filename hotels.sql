-- Create the temployee table
CREATE TABLE temployee (
    employee_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100) UNIQUE,
    phone VARCHAR(20),
    hotel_id INT,
    FOREIGN KEY (hotel_id) REFERENCES thotel(hotel_id)
);

-- Create the tcustomer table
CREATE TABLE tcustomer (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100) UNIQUE,
    phone VARCHAR(20)
);

-- Create the thotel table
CREATE TABLE thotel (
    hotel_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    address VARCHAR(200),
    city VARCHAR(50),
    state VARCHAR(50),
    zip_code VARCHAR(10)
);

-- Create the troom table
CREATE TABLE troom (
    room_id INT PRIMARY KEY AUTO_INCREMENT,
    hotel_id INT,
    room_number VARCHAR(10),
    type VARCHAR(50),
    price DECIMAL(10, 2),
    FOREIGN KEY (hotel_id) REFERENCES thotel(hotel_id)
);

-- Insert sample data into thotel table
INSERT INTO thotel (name, address, city, state, zip_code) VALUES
('Hotel Sunshine', '123 Sunshine Blvd', 'Miami', 'FL', '33101'),
('Ocean View Hotel', '456 Ocean Dr', 'Los Angeles', 'CA', '90001');

-- Insert sample data into temployee table
INSERT INTO temployee (first_name, last_name, email, phone, hotel_id) VALUES
('John', 'Doe', 'john.doe@example.com', '555-1234', 1),
('Jane', 'Smith', 'jane.smith@example.com', '555-5678', 2);

-- Insert sample data into tcustomer table
INSERT INTO tcustomer (first_name, last_name, email, phone) VALUES
('Alice', 'Johnson', 'alice.johnson@example.com', '555-8765'),
('Bob', 'Brown', 'bob.brown@example.com', '555-4321');

-- Insert sample data into troom table
INSERT INTO troom (hotel_id, room_number, type, price) VALUES
(1, '101', 'Single', 100.00),
(1, '102', 'Double', 150.00),
(2, '201', 'Suite', 200.00);

-- Create a view to show all employees with their hotel details
CREATE VIEW v_employee_hotel AS
SELECT e.employee_id, e.first_name, e.last_name, e.email, e.phone, h.name AS hotel_name, h.city, h.state
FROM temployee e
JOIN thotel h ON e.hotel_id = h.hotel_id;

-- Create a view to show all rooms with their hotel details
CREATE VIEW v_room_hotel AS
SELECT r.room_id, r.room_number, r.type, r.price, h.name AS hotel_name, h.city, h.state
FROM troom r
JOIN thotel h ON r.hotel_id = h.hotel_id;

-- Aggregate: Count the number of rooms per hotel
SELECT hotel_id, COUNT(*) AS room_count
FROM troom
GROUP BY hotel_id;

-- Aggregate: Calculate the average room price per hotel
SELECT hotel_id, AVG(price) AS average_price
FROM troom
GROUP BY hotel_id;

-- Join: List all employees and the hotel they work at
SELECT e.first_name, e.last_name, h.name AS hotel_name
FROM temployee e
JOIN thotel h ON e.hotel_id = h.hotel_id;

-- Group By and Having: Count the number of rooms per hotel and only show hotels with more than 1 room
SELECT hotel_id, COUNT(*) AS room_count
FROM troom
GROUP BY hotel_id
HAVING COUNT(*) > 1;

-- Foreign Keys are already defined in table creation
