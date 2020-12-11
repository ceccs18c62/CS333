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

-- output-
-- 1|1it|floar|1|35.0|1.0|36.0
-- 2|2it|ghee|1|170.0|25.0|195.0
-- 2|2it|mathbox|4|4.0|0.5|1.5
-- 2|2it|cake|1|100.0|5.0|105.0
-- 2|2it|oil|1|110.0|10.0|120.0
-- 2|2it|salt|1|9.0|1.0|10.0


CREATE VIEW DetailsView AS  
SELECT item,quantity 
FROM store;
SELECT * FROM DetailsView;

-- output-
-- floar|1
-- ghee|1
-- mathbox|4
-- cake|1
-- oil|1
-- salt|1


update store set quantity='2' where item="floar";
SELECT * FROM store;

-- output-
-- 1|1it|floar|2|35.0|1.0|36.0
-- 2|2it|ghee|1|170.0|25.0|195.0
-- 2|2it|mathbox|4|4.0|0.5|1.5
-- 2|2it|cake|1|100.0|5.0|105.0
-- 2|2it|oil|1|110.0|10.0|120.0
-- 2|2it|salt|1|9.0|1.0|10.0


SELECT * FROM DetailsView;

-- output-
-- floar|2
-- ghee|1
-- mathbox|4
-- cake|1
-- oil|1
-- salt|1

--delete view
DROP VIEW DetailsView;







