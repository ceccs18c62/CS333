CREATE TABLE store(
	    order_no int primary key,
	    code varchar(10) not null,
	    item varchar(30) not null,
	    quantity int default 0,
	    price float,
	    discount int default 0,
	    mrp float not null
);

INSERT INTO store(order_no,code,item,quantity,price,discount,mrp)
VALUES 
(1, "Lt","LG TV", 1, 25999.99, 2000, 27999),
(2, "ss","samsung", 2, 25000, 1000, 26000),
(3, "Son","sony", 1, 31400, 500,31500);

SELECT * FROM store; 


SELECT MOD(price, 9) FROM store;


SELECT price,POWER(price,2) FROM store;


SELECT ROUND(mrp DIV 7) FROM store;