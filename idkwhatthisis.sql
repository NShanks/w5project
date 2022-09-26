CREATE OR REPLACE FUNCTION add_customer(_customer_id INTEGER, _first_name VARCHAR, _last_name VARCHAR, _billing_info VARCHAR)
RETURNS void
LANGUAGE plpgsql
AS $MAIN$
BEGIN
		INSERT INTO "Customer"
		VALUES(customer_id, first_name, last_name, billing_info);
		
END;
$MAIN$


SELECT add_customer(100, 'Nick', 'Shanks', 'cash');

SELECT * from "Customer"