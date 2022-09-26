

CREATE OR REPLACE FUNCTION add_customer(_customer_id INTEGER, _first_name VARCHAR, _last_name VARCHAR, _billing_info VARCHAR)
RETURNS void 
AS $MAIN$
BEGIN
	INSERT INTO "Customer"(customer_id,first_name,last_name,billing_info)
	VALUES(_customer_id, _first_name, _last_name, _billing_info);
END;
$MAIN$
LANGUAGE plpgsql;


-- Good Call of Function
SELECT add_customer(501, 'Nick', 'Shanks','Cash');
SELECT add_customer(500, 'Kevin', 'Hart','Cash');

-- Verify that new actor has been added
SELECT *
FROM "Customer"
WHERE customer_id = 500;