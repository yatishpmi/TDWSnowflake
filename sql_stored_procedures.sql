-- Example Snowflake SQL procedure to add an order
CREATE OR REPLACE PROCEDURE public.add_order(cust_id INTEGER, amount NUMBER)
RETURNS STRING
LANGUAGE SQL
AS
$$
  INSERT INTO public.orders (customer_id, order_total, order_date, status)
  VALUES (cust_id, amount, CURRENT_DATE(), 'NEW');
  RETURN 'ORDER_ADDED';
$$;