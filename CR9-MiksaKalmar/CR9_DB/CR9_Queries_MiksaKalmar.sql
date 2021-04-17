CREATE DATABASE IF NOT EXISTS FAMAZON

CREATE TABLE `customers` 
(`customer_ID` INT(6) NOT NULL,
`first_name` VARCHAR(20) NOT NULL,
`last_name` VARCHAR(20) NOT NULL,
`username` VARCHAR(50) NOT NULL,
`address` VARCHAR(100) NOT NULL);
ALTER TABLE `customers` ADD PRIMARY KEY(`customer_ID`);

CREATE TABLE `companies` (`company_ID` INT(6) NOT NULL, `company name` VARCHAR(50) NOT NULL)
ALTER TABLE `companies` ADD PRIMARY KEY(`company_ID`);
ALTER TABLE `companies` CHANGE `company name` `company_name` VARCHAR(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL;

CREATE TABLE `products` (`product_ID` INT(6) NOT NULL, `fk_company_ID` INT(6), `product_name` VARCHAR(120), `product_price` FLOAT(8) NOT NULL)
ALTER TABLE `products` ADD PRIMARY KEY(`product_ID`);
ALTER TABLE `products` ADD INDEX(`fk_company_ID`);

CREATE TABLE `Payment_method` (`payment_ID` INT(6) NOT NULL, `fk_product_ID` INT(6) NOT NULL, `fk_customer_ID` INT(6) NOT NULL, `payment_type` VARCHAR (20) NOT NULL)
ALTER TABLE `payment_method` ADD PRIMARY KEY(`payment_ID`);
ALTER TABLE `payment_method` ADD INDEX(`fk_product_ID`, `fk_customer_ID`);

1. How many customers purchased cookies?
SELECT COUNT(*) FROM `payment`
WHERE `fk_product_ID` = 23;

2. What items did Draco Malfoy purchase?
SELECT products.product_name, products.product_ID
FROM products
INNER JOIN payment
ON payment.fk_product_ID = products.product_ID
INNER JOIN customers
ON customers.customer_ID = payment.fk_customer_ID
WHERE customers.customer_ID = 10;

3. How many items were purchased with gift cards?
SELECT COUNT(*) FROM payment
WHERE payment.payment_type = 'Gift_card';

4. Which company provides the most expensive item and which item is that?

SELECT MAX(product_price) as 'most expensive item'
FROM products;

SELECT product_name,product_price
FROM products
WHERE product_price = 15000;

5.Which company sells sparkling snakes and which payment method was used to purchased them?

SELECT DISTINCT companies.company_name, companies.company_ID, payment.payment_type
FROM companies
INNER JOIN products
ON products.fk_company_ID = companies.company_ID
INNER JOIN payment
ON payment.fk_product_ID = products.product_ID
WHERE product_ID = 41;

6. How many items were purchased with Credit card and which items are these?

SELECT COUNT(payment_type)
FROM payment
WHERE payment_type = 'Credit_card';

SELECT products.product_ID,products.product_name
FROM products
INNER JOIN payment
ON payment.fk_product_ID =products.product_ID
INNER JOIN customers
On customers.customer_ID =payment.fk_customer_ID
Where payment.payment_type = 'Credit_card';