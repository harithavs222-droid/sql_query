-- ==========================================
-- ONLINE SHOPPING SQL ASSESSMENT
-- ==========================================

CREATE DATABASE IF NOT EXISTS shopping_db;
USE shopping_db;

DROP TABLE IF EXISTS product;

CREATE TABLE product (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    category VARCHAR(50),
    brand VARCHAR(50),
    price DECIMAL(10,2),
    stock INT,
    rating DECIMAL(2,1),
    created_date DATE
);

INSERT INTO product
(product_name, category, brand, price, stock, rating, created_date)
VALUES
('iPhone 15', 'Mobile', 'Apple', 79999, 20, 4.8, '2024-01-10'),
('Galaxy S24', 'Mobile', 'Samsung', 74999, 25, 4.7, '2024-01-15'),
('Redmi Note 13', 'Mobile', 'Xiaomi', 18999, 50, 4.5, '2024-02-01'),
('OnePlus 12', 'Mobile', 'OnePlus', 64999, 15, 4.6, '2024-02-10'),
('MacBook Air M3', 'Laptop', 'Apple', 124999, 10, 4.9, '2024-03-01'),
('Dell Inspiron', 'Laptop', 'Dell', 58999, 18, 4.4, '2024-03-05'),
('HP Pavilion', 'Laptop', 'HP', 62999, 12, 4.3, '2024-03-12'),
('Lenovo ThinkPad', 'Laptop', 'Lenovo', 72999, 8, 4.7, '2024-03-20'),
('Boat Rockerz 550', 'Headphone', 'Boat', 1999, 100, 4.2, '2024-04-01'),
('Sony WH-CH520', 'Headphone', 'Sony', 4999, 45, 4.5, '2024-04-05'),
('Noise Smartwatch', 'Wearable', 'Noise', 3499, 70, 4.1, '2024-04-10'),
('Apple Watch SE', 'Wearable', 'Apple', 29999, 15, 4.8, '2024-04-15'),
('Samsung Watch 6', 'Wearable', 'Samsung', 24999, 20, 4.6, '2024-04-20'),
('Canon EOS 1500D', 'Camera', 'Canon', 45999, 7, 4.5, '2024-05-01'),
('Nikon D5600', 'Camera', 'Nikon', 55999, 6, 4.6, '2024-05-05'),
('LG Smart TV', 'Television', 'LG', 47999, 10, 4.4, '2024-05-10'),
('Samsung Smart TV', 'Television', 'Samsung', 52999, 8, 4.5, '2024-05-15'),
('Mi Smart TV', 'Television', 'Xiaomi', 34999, 14, 4.3, '2024-05-20'),
('JBL Flip 6', 'Speaker', 'JBL', 8999, 30, 4.6, '2024-06-01'),
('Sony Sound Bar', 'Speaker', 'Sony', 14999, 12, 4.7, '2024-06-05');

SELECT * FROM product;

-- Q1. Display all product details.
select * from product;
-- Q2. Display product name and price.
select product_name,price from product;
-- Q3. Display product name, brand and category.
select product_name,brand,category from product;
-- Q4. Display all unique categories.
select distinct category from product;
-- Q5. Display all unique brands.
select distinct brand from product;
-- Q6. Display products whose price is greater than 50000.
select * from product where  price > 50000;
-- Q7. Display products whose stock is less than 15.
select * from product where stock <15;
-- Q8. Display all Apple products.
select * from product where brand = "Apple";
-- Q9. Display all products belonging to Mobile category.
select * from product where category = "mobile";
-- Q10. Display products with rating greater than 4.5.
select * from product where rating > 4.5;
-- Q11. Display Apple products whose price is greater than 50000.
select * from product where  price > 50000;
-- Q12. Display Samsung products with rating above 4.5.
select * from product where brand = "samsung";
-- Q13. Display products belonging to Mobile OR Laptop category.
select * from product where category = "Mobile" or category = "laptop";
-- Q14. Display products from Apple OR Samsung.
select * from product where brand = "Apple" or brand="samsung";
-- Q15. Display products whose brand is NOT Apple.
select * from product where brand != "apple";
-- Q16. Display products whose price is between 20000 and 80000.
select * from product where price between 20000 and 80000;
-- Q17. Display products whose stock is between 10 and 30.
select *from  product where stock between 10 and 30;
-- Q18. Display products added between '2024-03-01' and '2024-05-31'.
select * from product where created_date >= "2024-05-31" and created_date<="2024-03-01";
-- Q19. Display products whose rating is between 4.5 and 4.9.
select * from  product where rating  between 4.5 and 4.9;
-- Q20. Display products whose price is NOT between 20000 and 80000.
select * from product where price <20000 or price >80000;
-- Q21. Display products whose name starts with 'S'.
select * from product where product_name like "s%";
-- Q22. Display products whose brand starts with 'S'.
select * from product where brand like "s%";
-- Q23. Display products whose product name contains 'Smart'.
select * from product where product_name like "%smart%";
-- Q24. Display products whose name ends with 'TV'.
select product_name from product where product_name like "%tv";
-- Q25. Display products whose brand contains 'o'.
select brand from product where brand like "%o%";
-- Q26. Sort products by price ascending.
select * from product order by price;
-- Q27. Sort products by price descending.
select* from product order by price desc;
-- Q28. Sort products by rating descending.
select * from product order by rating desc;
-- Q29. Sort products by product name alphabetically.
select product_name from product order by product_name asc;
-- Q30. Sort products by category and then price descending.
select category,price from product order by price desc;
-- Q31. Display the most expensive product.
select product_name,price from product order by price desc limit 1;
-- Q32. Display the second most expensive product.
select distinct product_name,price from product order by price desc limit 1  offset 1;
-- Q33. Display the third most expensive product.
select distinct product_name , price from product order by price desc limit 1 offset 2;
-- Q34. Display the cheapest product.
select product_name,price from product order by price asc limit 1;
-- Q35. Display the top 5 highest-priced products.
select distinct product_name,price from product order by price desc limit 5;
-- Q36. Count total number of products.
select count(*) as count from product;
-- Q37. Find total stock available.
select sum(stock) as stock_count from product;
-- Q38. Find average product price.
select avg(price) as product_price from product;
-- Q39. Find highest product price.
select max(price) as highest_product_price from product;
-- Q40. Find lowest product price.
select min(price) as lowest_product_price from product;
-- Q41. Find total inventory value (price * stock).
select sum(price*stock) as total_inventory_value from product;
-- Q42. Count products in each category.
select count(category)as product_cateogary_count from product;
-- Q43. Count products in each brand.
select brand,count(*) as product_count from product group by brand;
-- Q44. Find average price by category.
select  category ,avg(price) as average_price from  product group by category;
-- Q45. Find highest-priced product in each category.
select category ,max(price) as highest_price_product from  product group by category;
-- Q46. Find total stock available in each category.
select category , sum(stock) as total_stock from product group by category;
-- Q47. Display categories having more than 2 products.
select category from product group by category having count(*)>2;
-- Q48. Display brands having more than 1 product.
select brand from product group by brand having count(*)>1;
-- Q49. Display categories whose average price is greater than 30000.
select category from product group by category having avg(price)>30000;
-- Q50. Display brands whose total stock exceeds 20.
select brand,sum(stock) as total_stock from product group by brand having sum(stock)>20;
-- Q51. Which category has the highest average price?
select category ,avg(price) as avg_price from product group by category order by avg_price desc limit 1;
-- Q52. Which brand has the most products?
select brand, count(stock) as total_products  from product group by brand order by total_products desc limit 1;
-- Q53. Which category has the least products?
select category, count(stock) as total_products from product group by category order by total_products asc limit 1;
-- Q54. Display top 3 highest-rated products.
select product_name,rating from product order by rating desc limit 3;
-- Q55. Display products whose price is above average price.
select * from product where price >(select avg(price)from product); 
-- Q56. Count products added in each month.

-- Q57. Find the category with maximum stock.
select category, max(stock) as max_stock from product group by category;
-- Q58. Find the brand with highest average rating.
select brand, avg(rating) as  avg_rating from product group by brand order by avg_rating desc limit 1;
-- Q59. Display products with the second highest price without using LIMIT.

-- Q60. Find the percentage contribution of each category to total products.

-- product with highest price
select * from product where price=(select max(price) from product);

-- product with lowest price 
select * from product where price=(select min(price) from product);

-- product with highest rating
select * from product where rating =(select max(rating)from product);

-- product with lowest rating
select * from product  where rating =(select min(rating)from product);
