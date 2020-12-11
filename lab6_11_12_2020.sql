-- create a table
CREATE TABLE store (
  no INT,
  code varchar[10],
  item varchar[50],
  quantity INT,
  price float,
  discount float,
  mrp float
  
);
-- insert some values
INSERT INTO store VALUES (1, '1it', 'floar',1,35,1,36);
INSERT INTO store VALUES (2, '2it', 'ghee',1,170,25,195);
INSERT INTO store VALUES (2, '2it', 'mathbox',4,4,.50,1.50);
INSERT INTO store VALUES (2, '2it', 'cake',1,100,5,105);
INSERT INTO store VALUES (2, '2it', 'oil',1,110,10,120);
INSERT INTO store VALUES (2, '2it', 'salt',1,9,1,10);
-- fetch some values
SELECT * FROM store;

CREATE VIEW DetailsView AS  
SELECT item,quantity 
FROM store;
SELECT * FROM DetailsView;

update store set quantity='2' where item="floar";
SELECT * FROM store;
SELECT * FROM DetailsView;
DROP VIEW DetailsView;





