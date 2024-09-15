-- add index in field
CREATE INDEX idx_email 
ON customers (email);

-- query optimize and efesien
SELECT email, phone FROM customer;

SELECT * FROM customer WHERE last_name LIKE '%Mar%';
