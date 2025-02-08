CREATE TABLE "sales" (
	"id"	INTEGER,
	"product"	VARCHAR(255) NOT NULL,
	"price"	INTEGER NOT NULL,
	"quantity"	INTEGER NOT NULL UNIQUE,
	PRIMARY KEY("id" AUTOINCREMENT)
);

INSERT INTO sales (product, price, quantity) VALUES ('Laptop',1000,5);
INSERT INTO sales (product, price, quantity) VALUES ('Phone',700,3);
INSERT INTO sales (product, price, quantity) VALUES ('Tablet',500,2);
INSERT INTO sales (product, price, quantity) VALUES ('Printer',300,4);

SELECT * FROM sales;

SELECT * FROM sales LIMIT 2;

SELECT SUM(price) FROM sales;

SELECT 
    product, 
    SUM(quantity) AS total_quantity, 
    AVG(price) AS average_price
FROM sales
GROUP BY product;
