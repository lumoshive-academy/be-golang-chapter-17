-- fitur explain
EXPLAIN ANALYZE SELECT * FROM customer WHERE store_id = 5;
EXPLAIN VERBOSE SELECT * FROM customer WHERE store_id = 5;
EXPLAIN (COSTS TRUE) SELECT * FROM customer WHERE store_id = 5;
EXPLAIN (ANALYZE, BUFFERS) SELECT * FROM customer WHERE store_id = 5;
EXPLAIN (FORMAT JSON) SELECT * FROM customer WHERE store_id = 5;
EXPLAIN (ANALYZE, TIMING) SELECT * FROM customer WHERE store_id = 5;