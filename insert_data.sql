-- Inserting data into the table "stores"
INSERT INTO stores(store_id, city)
	VALUES (1, 'San Francisco');

INSERT ALL 
	INTO stores (store_id, city) VALUES (2, 'New York');
	INTO stores (store_id, city) VALUES (3, 'Chicago');
	INTO stores (store_id, city) VALUES (4, 'Philadelphia');
	INTO stores (store_id, city) VALUES (5, 'Boston');
	INTO stores (store_id, city) VALUES (6, 'Seattle');
SELECT * FROM DUAL;

INSERT ALL 
-- VALUES CAN BE REENTERED AND REPEATED
	INTO stores (store_id, city) VALUES (4, 'Philadelphia');
	INTO stores (store_id, city) VALUES (5, 'Boston');
	INTO stores (store_id, city) VALUES (6, 'Seattle');
SELECT * FROM DUAL;

