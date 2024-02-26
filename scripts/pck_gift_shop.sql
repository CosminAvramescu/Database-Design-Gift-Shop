CREATE OR REPLACE package pck_gift_shop
AS
    PROCEDURE users_with_reviews_for_other_products_proc(reviews OUT sys_refcursor);
    PROCEDURE orders_with_delay_greater_than_7_days(orders OUT sys_refcursor);
    PROCEDURE favorite_product_categories(categories OUT sys_refcursor);
END pck_gift_shop;

-- ------------------------------------------------------------------------------------

CREATE OR REPLACE package body pck_gift_shop
AS 
    PROCEDURE users_with_reviews_for_other_products_proc(reviews OUT sys_refcursor)
    IS
    BEGIN
        OPEN reviews FOR 
        SELECT 
            r.productID,
            p.name AS ProductName,
            u.userID AS BuyingUser,
            r.userID AS CommentingUser,
            r.reviewID,
            r.rating AS ReviewRating,
            r.text AS ReviewText
        FROM Orders o 
            INNER JOIN Users u on o.userID = u.userID 
            INNER JOIN OrderItems i on i.orderID=o.orderID 
            INNER JOIN Reviews r on o.userID != r.userID 
            INNER JOIN Products p on p.productID = r.productID and r.productID = i.productID;
    END users_with_reviews_for_other_products_proc;


    PROCEDURE orders_with_delay_greater_than_7_days(orders OUT sys_refcursor)
    IS
    BEGIN
        OPEN orders FOR 
        SELECT
            o.orderID,
            u.userID,
            o.totalAmount,
            p.timestampCompleted AS PaymentCompleted,
            EXTRACT(DAY FROM (CURRENT_TIMESTAMP - p.timestampCompleted)) AS days_difference,
            pr.productID,
            pr.name AS ProductName,
            SUM(i.quantity) AS TotalQuantity,
            s.supplierID, 
            s.name AS SupplierName, 
            s.country AS SupplierCountry,
            s.email,
            s.phone
        FROM
            Orders o
            INNER JOIN Users u ON o.userID = u.userID
            INNER JOIN Payments p ON o.paymentID = p.paymentID
            INNER JOIN OrderItems i ON o.orderID = i.orderID
            INNER JOIN Products pr ON i.productID = pr.productID
            INNER JOIN Suppliers s ON s.supplierID = pr.supplierID
        WHERE
            p.status = 'Completed'
            AND o.status = 'Processing'
        GROUP BY
            u.userID, o.orderID, o.totalAmount, o.timestampPlaced, p.timestampCompleted, 
            pr.productID, pr.name, pr.stock, s.supplierID, s.name, s.country, s.email, s.phone
        HAVING
            CURRENT_TIMESTAMP - p.timestampCompleted > INTERVAL '7' DAY
        ORDER BY 1;
    END orders_with_delay_greater_than_7_days;


    PROCEDURE favorite_product_categories(categories OUT sys_refcursor)
    IS
    BEGIN
        OPEN categories FOR 
        SELECT
            u.userID,
            p.category,
            COUNT(DISTINCT p.productID) AS num_products_ordered,
            u.country,
            u.city
        FROM
            Users u
            INNER JOIN Orders o ON u.userID = o.userID
            INNER JOIN OrderItems i ON i.orderID = o.orderID
            INNER JOIN Products p ON p.productID = i.productID
        GROUP BY
            u.userID, p.category, u.country, u.city
        HAVING
            COUNT(DISTINCT p.productID) = (
                SELECT MAX(product_count)
                FROM (
                    SELECT COUNT(DISTINCT p_inner.productID) AS product_count
                    FROM Users u_inner
                    INNER JOIN Orders o_inner ON u_inner.userID = o_inner.userID
                    INNER JOIN OrderItems i_inner ON i_inner.orderID = o_inner.orderID
                    INNER JOIN Products p_inner ON p_inner.productID = i_inner.productID
                    WHERE u_inner.userID = u.userID
                    GROUP BY p_inner.category
                )
            )
        ORDER BY 1;
    END favorite_product_categories;
END pck_gift_shop;