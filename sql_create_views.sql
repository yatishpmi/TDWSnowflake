-- View: customer order summary
CREATE OR REPLACE VIEW public.customer_order_summary AS
SELECT
  c.customer_id,
  c.first_name,
  c.last_name,
  COUNT(o.order_id) AS orders_count,
  COALESCE(SUM(o.order_total), 0) AS total_spent
FROM public.customers c
LEFT JOIN public.orders o
  ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name;
