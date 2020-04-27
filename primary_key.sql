CREATE TABLE products 
(
 product_id number not null, 
 name varchar(50), 
 product_cost number(5,2),
 product_retail number(5,2),
 product_type varchar(10),
 store_id number not null,

 CONSTRAINT product_pk PRIMARY KEY (product_id)
)

