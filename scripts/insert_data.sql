-- USERS

INSERT INTO Users (userID, email, pass, firstName, lastName, birthdate, phone, country, city, street, nr) VALUES 
  (NULL, 'user1@example.com', 'password1', 'John', 'Doe', DATE '1990-05-15', 1234567890, 'USA', 'New York', 'Broadway', 123);
INSERT INTO Users (userID, email, pass, firstName, lastName, birthdate, phone, country, city, street, nr) VALUES 
  (NULL, 'user2@example.com', 'password2', 'Jane', 'Smith', DATE '1985-08-22', 9876543210, 'USA', 'Los Angeles', 'Main St', 456);
INSERT INTO Users (userID, email, pass, firstName, lastName, birthdate, phone, country, city, street, nr) VALUES 
  (NULL, 'user3@example.com', 'password3', 'Alice', 'Johnson', DATE '1992-03-10', 5551237890, 'Canada', 'Toronto', 'King St', 789);
INSERT INTO Users (userID, email, pass, firstName, lastName, birthdate, phone, country, city, street, nr) VALUES 
  (NULL, 'user4@example.com', 'password4', 'Bob', 'Williams', DATE '1988-11-27', 9998887777, 'UK', 'London', 'Oxford St', 101);
INSERT INTO Users (userID, email, pass, firstName, lastName, birthdate, phone, country, city, street, nr) VALUES 
  (NULL, 'user5@example.com', 'password5', 'Eva', 'Brown', DATE '1995-07-03', 3335557777, 'Australia', 'Sydney', 'George St', 222);
INSERT INTO Users (userID, email, pass, firstName, lastName, birthdate, phone, country, city, street, nr) VALUES 
  (NULL, 'user6@example.com', 'password6', 'Michael', 'Davis', DATE '1980-01-20', 4442228888, 'Germany', 'Berlin', 'Alexanderplatz', 333);
INSERT INTO Users (userID, email, pass, firstName, lastName, birthdate, phone, country, city, street, nr) VALUES 
  (NULL, 'user7@example.com', 'password7', 'Sophie', 'Miller', DATE '1998-09-14', 6661113333, 'France', 'Paris', 'Champs-Élysées', 444);
INSERT INTO Users (userID, email, pass, firstName, lastName, birthdate, phone, country, city, street, nr) VALUES 
  (NULL, 'user8@example.com', 'password8', 'Chris', 'Lee', DATE '1982-06-08', 1112223333, 'Japan', 'Tokyo', 'Shibuya', 555);
INSERT INTO Users (userID, email, pass, firstName, lastName, birthdate, phone, country, city, street, nr) VALUES 
  (NULL, 'user9@example.com', 'password9', 'Olivia', 'Moore', DATE '1993-12-18', 7774441111, 'Brazil', 'Rio de Janeiro', 'Copacabana', 666);
INSERT INTO Users (userID, email, pass, firstName, lastName, birthdate, phone, country, city, street, nr) VALUES 
  (NULL, 'user10@example.com', 'password10', 'Daniel', 'Taylor', DATE '1987-04-25', 2223334444, 'India', 'Mumbai', 'Colaba', 777);


--- SESSIONS
INSERT INTO Sessions (sessionID, userID, token)
VALUES (NULL, 1, 'abc123xyz456');
INSERT INTO Sessions (sessionID, userID, token)
VALUES (NULL, 2, 'def456uvw789');
INSERT INTO Sessions (sessionID, userID, token)
VALUES (NULL, 3, 'ghi789lmn012');
INSERT INTO Sessions (sessionID, userID, token)
VALUES (NULL, 4, 'jkl012opq345');
INSERT INTO Sessions (sessionID, userID, token)
VALUES (NULL, 5, 'mno345rst678');
INSERT INTO Sessions (sessionID, userID, token)
VALUES (NULL, 6, 'pqr678uvw901');
INSERT INTO Sessions (sessionID, userID, token)
VALUES (NULL, 7, 'stu901vwx234');
INSERT INTO Sessions (sessionID, userID, token)
VALUES (NULL, 8, 'vwx234yza567');
INSERT INTO Sessions (sessionID, userID, token)
VALUES (NULL, 9, 'yza567bcd890');
INSERT INTO Sessions (sessionID, userID, token)
VALUES (NULL, 10, 'bcd890def123');

--- PAYMENTS
INSERT INTO Payments (paymentID, totalAmount, status, timestampCompleted, cardNumber)
VALUES (NULL, 1000.25, 'Completed', DATE '2024-01-01', '**** 1234');

INSERT INTO Payments (paymentID, totalAmount, status, timestampCompleted, cardNumber)
VALUES (NULL, 75.99, 'Completed', DATE '2024-01-01', '**** 1234');

INSERT INTO Payments (paymentID, totalAmount, status, timestampCompleted, cardNumber)
VALUES (NULL, 396.50, 'Completed', DATE '2024-01-01', '**** 9012');

INSERT INTO Payments (paymentID, totalAmount, status, timestampCompleted, cardNumber)
VALUES (NULL, 42.75, 'Completed', DATE '2023-12-27', '**** 4567');

INSERT INTO Payments (paymentID, totalAmount, status, timestampCompleted, cardNumber)
VALUES (NULL, 600.00, 'Completed', DATE '2023-12-28', '**** 3456');

INSERT INTO Payments (paymentID, totalAmount, status, timestampCompleted, cardNumber)
VALUES (NULL, 25.99, 'Completed', DATE '2023-12-22', '**** 3456');

INSERT INTO Payments (paymentID, totalAmount, status, timestampCompleted, cardNumber)
VALUES (NULL, 35.75, 'Completed', DATE '2023-12-28', '**** 3456');

INSERT INTO Payments (paymentID, totalAmount, status, timestampCompleted, cardNumber)
VALUES (NULL, 124.50, 'Completed', DATE '2023-12-25', '**** 8803');

INSERT INTO Payments (paymentID, totalAmount, status, timestampCompleted, cardNumber)
VALUES (NULL, 45.99, 'Completed', DATE '2023-12-25', '**** 8901');

INSERT INTO Payments (paymentID, totalAmount, status, timestampCompleted, cardNumber)
VALUES (NULL, 205.25, 'Completed', DATE '2023-12-25', '**** 8901');

INSERT INTO Payments (paymentID, totalAmount, status, timestampCompleted, cardNumber)
VALUES (NULL, 55.99, 'Completed', DATE '2023-12-22', '**** 4567');

INSERT INTO Payments (paymentID, totalAmount, status, timestampCompleted, cardNumber)
VALUES (NULL, 80.50, 'Completed', DATE '2023-12-21', '**** 9012');

INSERT INTO Payments (paymentID, totalAmount, status, timestampCompleted, cardNumber)
VALUES (NULL, 400.75, 'Completed', DATE '2023-12-23', '**** 0123');

INSERT INTO Payments (paymentID, totalAmount, status, timestampCompleted, cardNumber)
VALUES (NULL, 65.00, 'Completed', DATE '2023-12-20', '**** 8901');

INSERT INTO Payments (paymentID, totalAmount, status, timestampCompleted, cardNumber)
VALUES (NULL, 30.99, 'Completed', DATE '2023-12-19', '**** 8901');

INSERT INTO Payments (paymentID, totalAmount, status, timestampCompleted, cardNumber)
VALUES (NULL, 50.25, 'Completed', DATE '2023-12-16', '**** 2345');

INSERT INTO Payments (paymentID, totalAmount, status, timestampCompleted, cardNumber)
VALUES (NULL, 750.99, 'Completed', DATE '2023-12-17', '**** 1234');

INSERT INTO Payments (paymentID, totalAmount, status, timestampCompleted, cardNumber)
VALUES (NULL, 30.50, 'Completed', DATE '2023-12-16', '**** 3456');

INSERT INTO Payments (paymentID, totalAmount, status, timestampCompleted, cardNumber)
VALUES (NULL, 420.75, 'Completed', DATE '2023-12-17', '**** 4567');

INSERT INTO Payments (paymentID, totalAmount, status, timestampCompleted, cardNumber)
VALUES (NULL, 60.00, 'Completed', DATE '2023-12-15', '**** 8803');


-- ORDERS
INSERT INTO Orders (orderID, userID, paymentID, totalAmount, timestampPlaced, status)
VALUES (NULL, 1, 1, 1000.25, DATE '2024-01-01', 'Processing');

INSERT INTO Orders (orderID, userID, paymentID, totalAmount, timestampPlaced, status)
VALUES (NULL, 1, 2, 75.99, DATE '2024-01-02', 'Shipped');

INSERT INTO Orders (orderID, userID, paymentID, totalAmount, timestampPlaced, status)
VALUES (NULL, 2, 3, 396.50, DATE '2024-01-01', 'Delivered');

INSERT INTO Orders (orderID, userID, paymentID, totalAmount, timestampPlaced, status)
VALUES (NULL, 3, 4, 42.75, DATE '2023-12-31', 'Delivered');

INSERT INTO Orders (orderID, userID, paymentID, totalAmount, timestampPlaced, status)
VALUES (NULL, 4, 5, 600.00, DATE '2023-12-30', 'Shipped');

INSERT INTO Orders (orderID, userID, paymentID, totalAmount, timestampPlaced, status)
VALUES (NULL, 4, 6, 25.99, DATE '2023-12-29', 'Delivered');

INSERT INTO Orders (orderID, userID, paymentID, totalAmount, timestampPlaced, status)
VALUES (NULL, 4, 7, 35.75, DATE '2023-12-28', 'Processing');

INSERT INTO Orders (orderID, userID, paymentID, totalAmount, timestampPlaced, status)
VALUES (NULL, 5, 8, 124.50, DATE '2023-12-27', 'Shipped');

INSERT INTO Orders (orderID, userID, paymentID, totalAmount, timestampPlaced, status)
VALUES (NULL, 9, 9, 45.99, DATE '2023-12-26', 'Delivered');

INSERT INTO Orders (orderID, userID, paymentID, totalAmount, timestampPlaced, status)
VALUES (NULL, 9, 10, 205.25, DATE '2023-12-25', 'Processing');

INSERT INTO Orders (orderID, userID, paymentID, totalAmount, timestampPlaced, status)
VALUES (NULL, 4, 11, 55.99, DATE '2023-12-24', 'Shipped');

INSERT INTO Orders (orderID, userID, paymentID, totalAmount, timestampPlaced, status)
VALUES (NULL, 2, 12, 80.50, DATE '2023-12-23', 'Delivered');

INSERT INTO Orders (orderID, userID, paymentID, totalAmount, timestampPlaced, status)
VALUES (NULL, 3, 13, 400.75, DATE '2023-12-22', 'Processing');

INSERT INTO Orders (orderID, userID, paymentID, totalAmount, timestampPlaced, status)
VALUES (NULL, 9, 14, 65.00, DATE '2023-12-21', 'Shipped');

INSERT INTO Orders (orderID, userID, paymentID, totalAmount, timestampPlaced, status)
VALUES (NULL, 9, 15, 30.99, DATE '2023-12-20', 'Delivered');

INSERT INTO Orders (orderID, userID, paymentID, totalAmount, timestampPlaced, status)
VALUES (NULL, 8, 16, 50.25, DATE '2023-12-19', 'Delivered');

INSERT INTO Orders (orderID, userID, paymentID, totalAmount, timestampPlaced, status)
VALUES (NULL, 1, 17, 750.99, DATE '2023-12-18', 'Shipped');

INSERT INTO Orders (orderID, userID, paymentID, totalAmount, timestampPlaced, status)
VALUES (NULL, 4, 18, 30.50, DATE '2023-12-17', 'Delivered');

INSERT INTO Orders (orderID, userID, paymentID, totalAmount, timestampPlaced, status)
VALUES (NULL, 3, 19, 420.75, DATE '2023-12-16', 'Processing');

INSERT INTO Orders (orderID, userID, paymentID, totalAmount, timestampPlaced, status)
VALUES (NULL, 5, 20, 60.00, DATE '2023-12-15', 'Shipped');


-- SUPPLIERS
INSERT INTO Suppliers (supplierID, name, email, phone, country, city, street, nr)
VALUES (NULL, 'Gifts Galore Supplier', 'gifts@galore.com', '123456789', 'USA', 'New York', 'Broadway St', 123);

INSERT INTO Suppliers (supplierID, name, email, phone, country, city, street, nr)
VALUES (NULL, 'Creative Expressions Supplier', 'creative@expressions.com', '987654321', 'UK', 'London', 'Art Street', 456);

INSERT INTO Suppliers (supplierID, name, email, phone, country, city, street, nr)
VALUES (NULL, 'Joyful Moments Supplier', 'joyful@moments.com', '+1122334455', 'China', 'Shanghai', 'Cheerful Ave', 789);

INSERT INTO Suppliers (supplierID, name, email, phone, country, city, street, nr)
VALUES (NULL, 'Timeless Treasures Supplier', 'timeless@treasures.com', '3344556677', 'France', 'Paris', 'Elegance Blvd', 101);

INSERT INTO Suppliers (supplierID, name, email, phone, country, city, street, nr)
VALUES (NULL, 'Global Gifts Supplier', 'global@gifts.com', '5566778899', 'Australia', 'Sydney', 'Harbor Drive', 222);


--- PRODUCTS
INSERT INTO Products (productID, supplierID, name, price, stock, description, category)
VALUES (NULL, 1, 'Eternal Roses Bouquet', 25.00, 50, 'Beautiful bouquet of eternal roses', 'Flowers');

INSERT INTO Products (productID, supplierID, name, price, stock, description, category)
VALUES (NULL, 1, 'Assorted Chocolates Box', 25.33, 100, 'Delicious assortment of premium chocolates', 'Chocolates');

INSERT INTO Products (productID, supplierID, name, price, stock, description, category)
VALUES (NULL, 4, 'Personalized Embroidered Shirt', 950.25, 30, 'Customized shirt with embroidered design', 'Personalized');

INSERT INTO Products (productID, supplierID, name, price, stock, description, category)
VALUES (NULL, 4, 'Scented Candle Set', 79.30, 80, 'Set of scented candles for relaxation', 'Home');

INSERT INTO Products (productID, supplierID, name, price, stock, description, category)
VALUES (NULL, 5, 'Adventure Journal', 42.75, 120, 'Journal for documenting travel adventures', 'Books');

INSERT INTO Products (productID, supplierID, name, price, stock, description, category)
VALUES (NULL, 1, 'Gourmet Coffee Sampler', 139.31, 60, 'Sampler pack of exotic gourmet coffee', 'Food and Beverage');

INSERT INTO Products (productID, supplierID, name, price, stock, description, category)
VALUES (NULL, 5, 'Cozy Throw Blanket', 42.75, 40, 'Soft and cozy blanket for chilly evenings', 'Home');

INSERT INTO Products (productID, supplierID, name, price, stock, description, category)
VALUES (NULL, 4, 'Personalized Engraved Necklace', 25.99, 25, 'Elegant necklace with personalized engraving', 'Jewelry');

INSERT INTO Products (productID, supplierID, name, price, stock, description, category)
VALUES (NULL, 1, 'Handcrafted Wooden Coasters', 35.75, 90, 'Set of artisanal wooden coasters', 'Home');

INSERT INTO Products (productID, supplierID, name, price, stock, description, category)
VALUES (NULL, 1, 'Aromatherapy Essential Oils Set', 24.90, 50, 'Set of essential oils for relaxation', 'Wellness');

INSERT INTO Products (productID, supplierID, name, price, stock, description, category)
VALUES (NULL, 5, 'Customized Photo Album', 45.99, 30, 'Album for preserving precious memories', 'Personalized');

INSERT INTO Products (productID, supplierID, name, price, stock, description, category)
VALUES (NULL, 2, 'Gourmet Popcorn Sampler', 51.31, 70, 'Sampler pack of gourmet popcorn flavors', 'Food and Beverage');

INSERT INTO Products (productID, supplierID, name, price, stock, description, category)
VALUES (NULL, 1, 'Digital Sketch Portrait', 55.99, 20, 'Personalized digital sketch portrait', 'Art and Collectibles');

INSERT INTO Products (productID, supplierID, name, price, stock, description, category)
VALUES (NULL, 1, 'Handwritten Letter Kit', 20.12, 40, 'Kit for creating heartfelt handwritten letters', 'Home');

INSERT INTO Products (productID, supplierID, name, price, stock, description, category)
VALUES (NULL, 3, 'Vintage Style Pocket Watch', 275.15, 15, 'Antique-style pocket watch with chain', 'Fashion and Accessories');

INSERT INTO Products (productID, supplierID, name, price, stock, description, category)
VALUES (NULL, 2, 'Indoor Herb Garden Kit', 62.80, 25, 'Kit for growing herbs indoors', 'Home');

INSERT INTO Products (productID, supplierID, name, price, stock, description, category)
VALUES (NULL, 1, 'Soothing Lavender Bath Bombs', 65.00, 60, 'Bath bombs with calming lavender scent', 'Wellness');

INSERT INTO Products (productID, supplierID, name, price, stock, description, category)
VALUES (NULL, 4, 'Personalized Caricature Art', 30.99, 10, 'Custom caricature art of the recipient', 'Art and Collectibles');

INSERT INTO Products (productID, supplierID, name, price, stock, description, category)
VALUES (NULL, 1, 'Stainless Steel Insulated Travel Mug', 50.25, 45, 'Insulated mug for hot and cold beverages', 'Travel and Outdoors');

INSERT INTO Products (productID, supplierID, name, price, stock, description, category)
VALUES (NULL, 1, 'Bluetooth Wireless Earbuds', 150.19, 55, 'High-quality wireless earbuds for music and calls', 'Electronics');

INSERT INTO Products (productID, supplierID, name, price, stock, description, category)
VALUES (NULL, 1, 'Organic Tea Sampler', 15.07, 30, 'Sampler pack of organic tea varieties', 'Food and Beverage');

INSERT INTO Products (productID, supplierID, name, price, stock, description, category)
VALUES (NULL, 2, 'Artisanal Chocolate Truffles Box', 20.11, 40, 'Exquisite box of handmade chocolate truffles', 'Chocolates');

INSERT INTO Products (productID, supplierID, name, price, stock, description, category)
VALUES (NULL, 3, 'Smart Home LED Light Bulbs', 30.80, 20, 'Set of smart LED bulbs for home automation', 'Electronics');

INSERT INTO Products (productID, supplierID, name, price, stock, description, category)
VALUES (NULL, 2, 'Handmade Pottery Vase', 84.42, 15, 'Artisanal pottery vase for elegant home decor', 'Art and Collectibles');

INSERT INTO Products (productID, supplierID, name, price, stock, description, category)
VALUES (NULL, 3, 'Fitness Tracker Watch', 200.99, 15, 'Track fitness and health with this stylish smartwatch', 'Fitness');

INSERT INTO Products (productID, supplierID, name, price, stock, description, category)
VALUES (NULL, 4, 'Handwoven Cotton Throw Pillow', 60.00, 25, 'Decorative throw pillow with handwoven design', 'Home');

INSERT INTO Products (productID, supplierID, name, price, stock, description, category)
VALUES (NULL, 1, 'Portable Bluetooth Speaker', 38.50, 35, 'Compact and powerful Bluetooth speaker', 'Electronics');

INSERT INTO Products (productID, supplierID, name, price, stock, description, category)
VALUES (NULL, 1, 'Customized Leather Passport Holder', 34.25, 30, 'Personalized leather passport cover for travel', 'Fashion and Accessories');

INSERT INTO Products (productID, supplierID, name, price, stock, description, category)
VALUES (NULL, 5, 'Gourmet Olive Oil Sampler Set', 42.00, 20, 'Sampler set of premium extra virgin olive oils', 'Food and Beverage');

INSERT INTO Products (productID, supplierID, name, price, stock, description, category)
VALUES (NULL, 5, 'Customizable Name Necklace', 29.50, 25, 'Necklace with personalized name pendant', 'Jewelry');


--- ORDER ITEMS
-- Order 1
INSERT INTO OrderItems (orderItemID, orderID, productID, quantity, price)
VALUES (NULL, 1, 1, 2, 50.00);

INSERT INTO OrderItems (orderItemID, orderID, productID, quantity, price)
VALUES (NULL, 1, 3, 1, 950.25);

-- Order 2
INSERT INTO OrderItems (orderItemID, orderID, productID, quantity, price)
VALUES (NULL, 2, 2, 3, 75.99);

-- Order 3
INSERT INTO OrderItems (orderItemID, orderID, productID, quantity, price)
VALUES (NULL, 3, 4, 5, 396.50);

-- Order 4
INSERT INTO OrderItems (orderItemID, orderID, productID, quantity, price)
VALUES (NULL, 4, 5, 1, 42.75);

--- Order 5
INSERT INTO OrderItems (orderItemID, orderID, productID, quantity, price)
VALUES (NULL, 5, 6, 4, 557.25);

INSERT INTO OrderItems (orderItemID, orderID, productID, quantity, price)
VALUES (NULL, 5, 7, 1, 42.75);

-- Order 6
INSERT INTO OrderItems (orderItemID, orderID, productID, quantity, price)
VALUES (NULL, 6, 8, 1, 25.99);

-- Order 7
INSERT INTO OrderItems (orderItemID, orderID, productID, quantity, price)
VALUES (NULL, 6, 9, 1, 35.75);

-- Order 8
INSERT INTO OrderItems (orderItemID, orderID, productID, quantity, price)
VALUES (NULL, 8, 10, 5, 124.50);

-- Order 9
INSERT INTO OrderItems (orderItemID, orderID, productID, quantity, price)
VALUES (NULL, 9, 11, 1, 45.99);

-- Order 10
INSERT INTO OrderItems (orderItemID, orderID, productID, quantity, price)
VALUES (NULL, 10, 12, 4, 205.25);

-- Order 11
INSERT INTO OrderItems (orderItemID, orderID, productID, quantity, price)
VALUES (NULL, 11, 13, 1, 55.99);

-- Order 12
INSERT INTO OrderItems (orderItemID, orderID, productID, quantity, price)
VALUES (NULL, 12, 14, 4, 80.50);

-- Order 13
INSERT INTO OrderItems (orderItemID, orderID, productID, quantity, price)
VALUES (NULL, 13, 15, 1, 275.15);

INSERT INTO OrderItems (orderItemID, orderID, productID, quantity, price)
VALUES (NULL, 13, 16, 2, 125.60);

-- Order 14
INSERT INTO OrderItems (orderItemID, orderID, productID, quantity, price)
VALUES (NULL, 14, 17, 1, 65.00);

-- Order 15
INSERT INTO OrderItems (orderItemID, orderID, productID, quantity, price)
VALUES (NULL, 15, 18, 1, 30.99);

-- Order 16
INSERT INTO OrderItems (orderItemID, orderID, productID, quantity, price)
VALUES (NULL, 16, 19, 1, 50.25);

-- Order 17
INSERT INTO OrderItems (orderItemID, orderID, productID, quantity, price)
VALUES (NULL, 17, 20, 5, 750.99);

-- Order 18
INSERT INTO OrderItems (orderItemID, orderID, productID, quantity, price)
VALUES (NULL, 18, 21, 2, 30.50);

-- Order 19
INSERT INTO OrderItems (orderItemID, orderID, productID, quantity, price)
VALUES (NULL, 19, 22, 1, 20.11);

INSERT INTO OrderItems (orderItemID, orderID, productID, quantity, price)
VALUES (NULL, 19, 23, 1, 30.80);

INSERT INTO OrderItems (orderItemID, orderID, productID, quantity, price)
VALUES (NULL, 19, 24, 5, 168.85);

INSERT INTO OrderItems (orderItemID, orderID, productID, quantity, price)
VALUES (NULL, 19, 25, 1, 200.99);

-- Order 20
INSERT INTO OrderItems (orderItemID, orderID, productID, quantity, price)
VALUES (NULL, 20, 26, 1, 60.00);


--- REVIEWS
-- Insert values into Reviews table
INSERT INTO Reviews (reviewID, productID, userID, rating, text)
VALUES (NULL, 1, 1, 4, 'Lovely eternal roses, but a bit pricey.');

INSERT INTO Reviews (reviewID, productID, userID, rating, text)
VALUES (NULL, 1, 2, 5, 'My girlfriend loves them!!');

INSERT INTO Reviews (reviewID, productID, userID, rating, text)
VALUES (NULL, 2, 1, 5, 'Delicious chocolates! Great variety.');

INSERT INTO Reviews (reviewID, productID, userID, rating, text)
VALUES (NULL, 2, 3, 5, 'Very good!');

INSERT INTO Reviews (reviewID, productID, userID, rating, text)
VALUES (NULL, 3, 1, 3, 'Nice shirt, but embroidery was not as expected.');

INSERT INTO Reviews (reviewID, productID, userID, rating, text)
VALUES (NULL, 4, 3, 2, 'The candles are not scented at all...');

INSERT INTO Reviews (reviewID, productID, userID, rating, text)
VALUES (NULL, 5, 3, 5, 'Awesome adventure journal, highly recommend!');

INSERT INTO Reviews (reviewID, productID, userID, rating, text)
VALUES (NULL, 6, 4, 4, 'Exotic coffee sampler, enjoyed the variety.');

INSERT INTO Reviews (reviewID, productID, userID, rating, text)
VALUES (NULL, 7, 4, 5, 'Cozy blanket, perfect for cold nights.');

INSERT INTO Reviews (reviewID, productID, userID, rating, text)
VALUES (NULL, 7, 6, 5, 'I like it very much!');
---
INSERT INTO Reviews (reviewID, productID, userID, rating, text)
VALUES (NULL, 8, 4, 5, 'Elegant necklace, engraving is beautiful.');

INSERT INTO Reviews (reviewID, productID, userID, rating, text)
VALUES (NULL, 9, 4, 4, 'Artisanal coasters add a nice touch to the table.');

INSERT INTO Reviews (reviewID, productID, userID, rating, text)
VALUES (NULL, 10, 5, 4, 'Aromatherapy oils set is calming.');

INSERT INTO Reviews (reviewID, productID, userID, rating, text)
VALUES (NULL, 11, 9, 5, 'Perfectly captured memories in the album.');

INSERT INTO Reviews (reviewID, productID, userID, rating, text)
VALUES (NULL, 12, 9, 3, 'Gourmet popcorn sampler was average.');

INSERT INTO Reviews (reviewID, productID, userID, rating, text)
VALUES (NULL, 12, 4, 2, 'It does not taste as expected...');

INSERT INTO Reviews (reviewID, productID, userID, rating, text)
VALUES (NULL, 13, 4, 5, 'Digital sketch portrait is amazing!');

INSERT INTO Reviews (reviewID, productID, userID, rating, text)
VALUES (NULL, 14, 2, 4, 'Handwritten letter kit is a thoughtful gift.');

INSERT INTO Reviews (reviewID, productID, userID, rating, text)
VALUES (NULL, 15, 3, 2, 'Vintage pocket watch is overpriced.');

INSERT INTO Reviews (reviewID, productID, userID, rating, text)
VALUES (NULL, 16, 3, 4, 'Indoor herb garden kit is a great idea.');

INSERT INTO Reviews (reviewID, productID, userID, rating, text)
VALUES (NULL, 17, 9, 5, 'Lavender bath bombs are soothing.');

INSERT INTO Reviews (reviewID, productID, userID, rating, text)
VALUES (NULL, 18, 9, 5, 'Personalized caricature art is fantastic!');

INSERT INTO Reviews (reviewID, productID, userID, rating, text)
VALUES (NULL, 18, 7, 5, 'Our kid is very happy with this!');

INSERT INTO Reviews (reviewID, productID, userID, rating, text)
VALUES (NULL, 19, 8, 4, 'Insulated travel mug keeps drinks hot.');

INSERT INTO Reviews (reviewID, productID, userID, rating, text)
VALUES (NULL, 19, 1, 5, 'I needed so much something like this!');

INSERT INTO Reviews (reviewID, productID, userID, rating, text)
VALUES (NULL, 20, 4, 5, 'Bluetooth earbuds have great sound quality.');

INSERT INTO Reviews (reviewID, productID, userID, rating, text)
VALUES (NULL, 21, 4, 3, 'Organic tea sampler was average.');

INSERT INTO Reviews (reviewID, productID, userID, rating, text)
VALUES (NULL, 22, 3, 5, 'Artisanal chocolates truffles are divine.');

INSERT INTO Reviews (reviewID, productID, userID, rating, text)
VALUES (NULL, 23, 3, 4, 'Smart LED bulbs work well for automation.');

INSERT INTO Reviews (reviewID, productID, userID, rating, text)
VALUES (NULL, 23, 4, 5, 'My dad was happy with this gift.');

INSERT INTO Reviews (reviewID, productID, userID, rating, text)
VALUES (NULL, 24, 3, 5, 'Handmade pottery vase is a beautiful addition.');

INSERT INTO Reviews (reviewID, productID, userID, rating, text)
VALUES (NULL, 25, 3, 4, 'Fitness tracker watch is stylish and functional.');

INSERT INTO Reviews (reviewID, productID, userID, rating, text)
VALUES (NULL, 26, 5, 5, 'Cotton throw pillow adds a nice touch.');

