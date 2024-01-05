CREATE TABLE Users (
    userID NUMBER(6),
    email VARCHAR(30)	 	CONSTRAINT user_email_nn NOT NULL,
    pass VARCHAR(30)		CONSTRAINT user_password_nn NOT NULL,
    firstName VARCHAR(30) 	CONSTRAINT user_first_name_nn NOT NULL,
    lastName VARCHAR(30)	CONSTRAINT user_last_name_nn NOT NULL,
    birthdate DATE		    CONSTRAINT user_birthdate_nn NOT NULL,
    phone NUMBER(15)		CONSTRAINT user_phone_nn NOT NULL,
    country VARCHAR(15),
    city VARCHAR(15),
    street VARCHAR(20),
    nr NUMBER(4),
    CONSTRAINT pk_User PRIMARY KEY (
        userID
     ),
    CONSTRAINT uk_User_email UNIQUE (
        email
    ),
    CONSTRAINT uk_User_phone UNIQUE (
        phone
    )
);

CREATE TABLE Orders (
    orderID NUMBER(6),
    userID NUMBER(6),
    paymentID NUMBER(6),
    totalAmount NUMBER(6,2)	CONSTRAINT order_total_amount_nn NOT NULL,
    timestampPlaced DATE	CONSTRAINT order_timestamp_placed_nn NOT NULL,
    status VARCHAR(15),
    CONSTRAINT pk_Order PRIMARY KEY (
        orderID
     )
);

CREATE TABLE OrderItems (
    orderItemID NUMBER(6)   CONSTRAINT order_item_id_nn NOT NULL,
    orderID NUMBER(6),
    productID NUMBER(6),
    quantity NUMBER(1)		CONSTRAINT order_item_quantity_nn NOT NULL,
    price NUMBER(6,2)		CONSTRAINT order_item_price_nn NOT NULL,
    CONSTRAINT pk_OrderItem PRIMARY KEY (
        orderItemID
     )
);

CREATE TABLE Products (
    productID NUMBER(6),
    supplierID NUMBER(6),
    name VARCHAR(45)      CONSTRAINT product_name_nn NOT NULL,
    price NUMBER(6,2)		  CONSTRAINT product_price_nn NOT NULL,
    stock NUMBER(4),
    description VARCHAR(90),
    category VARCHAR(30)    CONSTRAINT product_category_nn NOT NULL,
    CONSTRAINT pk_Product PRIMARY KEY (
        productID
     ),
    CONSTRAINT uk_Product_name UNIQUE (
        name
    )
);

CREATE TABLE Reviews (
    reviewID NUMBER(6),
    productID NUMBER(6),
    userID NUMBER(6),
    rating NUMBER(1)	CONSTRAINT review_rating_nn NOT NULL,
    text VARCHAR(90)	CONSTRAINT review_text_nn NOT NULL,
    CONSTRAINT pk_Review PRIMARY KEY (
        reviewID
     )
);

CREATE TABLE Payments (
    paymentID NUMBER(6),
    totalAmount NUMBER(6,2)	CONSTRAINT payment_total_amount_nn NOT NULL,
    status VARCHAR(15),
    timestampCompleted DATE,
    cardNumber VARCHAR(15)	CONSTRAINT payment_card_number_nn NOT NULL,
    CONSTRAINT pk_Payment PRIMARY KEY (
        paymentID
     )
);

CREATE TABLE Sessions (
    sessionID NUMBER(6),
    userID NUMBER(6),
    token VARCHAR(30)	CONSTRAINT session_token_nn NOT NULL,
    CONSTRAINT pk_Session PRIMARY KEY (
        sessionID
     ),
    CONSTRAINT uc_Session_token UNIQUE (
        token
    )
);

CREATE TABLE Suppliers (
    supplierID NUMBER(6),
    name VARCHAR(30)	 	  CONSTRAINT supplier_name_nn NOT NULL,
    email VARCHAR(30)	 	  CONSTRAINT supplier_email_nn NOT NULL,
    phone NUMBER(15)		  CONSTRAINT supplier_phone_nn NOT NULL,
    country VARCHAR(15)       CONSTRAINT supplier_country_nn NOT NULL,
    city VARCHAR(15),
    street VARCHAR(20),
    nr NUMBER(4),
    CONSTRAINT pk_Supplier PRIMARY KEY (
        supplierID
     ),
    CONSTRAINT uk_Supplier_email UNIQUE (
        email
    ),
    CONSTRAINT uk_Supplier_phone UNIQUE (
        phone
    )
);

ALTER TABLE Orders ADD CONSTRAINT fk_Order_userID FOREIGN KEY(userID)
REFERENCES Users (userID);

ALTER TABLE Orders ADD CONSTRAINT fk_Order_paymentID FOREIGN KEY(paymentID)
REFERENCES Payments (paymentID);

ALTER TABLE OrderItems ADD CONSTRAINT fk_OrderItem_orderID FOREIGN KEY(orderID)
REFERENCES Orders (orderID);

ALTER TABLE OrderItems ADD CONSTRAINT fk_OrderItem_productID FOREIGN KEY(productID)
REFERENCES Products (productID);

ALTER TABLE Reviews ADD CONSTRAINT fk_Review_productID FOREIGN KEY(productID)
REFERENCES Products (productID);

ALTER TABLE Reviews ADD CONSTRAINT fk_Review_userID FOREIGN KEY(userID)
REFERENCES Users (userID);

ALTER TABLE Sessions ADD CONSTRAINT fk_Session_userID FOREIGN KEY(userID)
REFERENCES Users (userID);

ALTER TABLE Products ADD CONSTRAINT fk_Product_supplierID FOREIGN KEY(supplierID)
REFERENCES Suppliers (supplierID);


CREATE SEQUENCE user_id_sequence
  START WITH 1
  INCREMENT BY 1
  CACHE 20
  NOCYCLE;

CREATE SEQUENCE order_id_sequence
  START WITH 1
  INCREMENT BY 1
  CACHE 20
  NOCYCLE;

CREATE SEQUENCE orderItem_id_sequence
  START WITH 1
  INCREMENT BY 1
  CACHE 20
  NOCYCLE;

CREATE SEQUENCE product_id_sequence
  START WITH 1
  INCREMENT BY 1
  CACHE 20
  NOCYCLE;

CREATE SEQUENCE review_id_sequence
  START WITH 1
  INCREMENT BY 1
  CACHE 20
  NOCYCLE;

CREATE SEQUENCE payment_id_sequence
  START WITH 1
  INCREMENT BY 1
  CACHE 20
  NOCYCLE;

CREATE SEQUENCE session_id_sequence
  START WITH 1
  INCREMENT BY 1
  CACHE 20
  NOCYCLE;

CREATE SEQUENCE supplier_id_sequence
  START WITH 1
  INCREMENT BY 1
  CACHE 20
  NOCYCLE;

BEGIN
    EXECUTE IMMEDIATE 'CREATE OR REPLACE TRIGGER user_id_trigger BEFORE INSERT ON Users FOR EACH ROW BEGIN SELECT user_id_sequence.NEXTVAL INTO :NEW.userID FROM dual; END;';
    EXECUTE IMMEDIATE 'CREATE OR REPLACE TRIGGER order_id_trigger BEFORE INSERT ON Orders FOR EACH ROW BEGIN SELECT order_id_sequence.NEXTVAL INTO :NEW.orderID FROM dual; END;';
    EXECUTE IMMEDIATE 'CREATE OR REPLACE TRIGGER product_id_trigger BEFORE INSERT ON Products FOR EACH ROW BEGIN SELECT product_id_sequence.NEXTVAL INTO :NEW.productID FROM dual; END;';
    EXECUTE IMMEDIATE 'CREATE OR REPLACE TRIGGER orderItem_id_trigger BEFORE INSERT ON OrderItems FOR EACH ROW BEGIN SELECT orderItem_id_sequence.NEXTVAL INTO :NEW.orderItemID FROM dual; END;';
    EXECUTE IMMEDIATE 'CREATE OR REPLACE TRIGGER payment_id_trigger BEFORE INSERT ON Payments FOR EACH ROW BEGIN SELECT payment_id_sequence.NEXTVAL INTO :NEW.paymentID FROM dual; END;';
    EXECUTE IMMEDIATE 'CREATE OR REPLACE TRIGGER review_id_trigger BEFORE INSERT ON Reviews FOR EACH ROW BEGIN SELECT review_id_sequence.NEXTVAL INTO :NEW.reviewID FROM dual; END;';
    EXECUTE IMMEDIATE 'CREATE OR REPLACE TRIGGER session_id_trigger BEFORE INSERT ON Sessions FOR EACH ROW BEGIN SELECT session_id_sequence.NEXTVAL INTO :NEW.sessionID FROM dual; END;';
    EXECUTE IMMEDIATE 'CREATE OR REPLACE TRIGGER supplier_id_trigger BEFORE INSERT ON Suppliers FOR EACH ROW BEGIN SELECT supplier_id_sequence.NEXTVAL INTO :NEW.supplierID FROM dual; END;';
END;