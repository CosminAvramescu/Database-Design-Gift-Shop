DROP TRIGGER user_id_trigger;
DROP TRIGGER order_id_trigger;
DROP TRIGGER product_id_trigger;
DROP TRIGGER review_id_trigger;
DROP TRIGGER orderItem_id_trigger;
DROP TRIGGER payment_id_trigger;
DROP TRIGGER session_id_trigger;
DROP TRIGGER supplier_id_trigger;

DROP TABLE Reviews;
DROP TABLE Sessions;
DROP TABLE OrderItems;
DROP TABLE Orders;
DROP TABLE Users;
DROP TABLE Payments;
DROP TABLE Products;
DROP TABLE Suppliers;


DROP SEQUENCE user_id_sequence;
DROP SEQUENCE order_id_sequence;
DROP SEQUENCE product_id_sequence;
DROP SEQUENCE review_id_sequence;
DROP SEQUENCE orderItem_id_sequence;
DROP SEQUENCE payment_id_sequence;
DROP SEQUENCE session_id_sequence;
DROP SEQUENCE supplier_id_sequence;

DROP PACKAGE pck_gift_shop;
