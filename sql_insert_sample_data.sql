-- Sample data for customers and orders
INSERT INTO public.customers (first_name, last_name, email) VALUES
  ('Alice', 'Smith', 'alice@example.com'),
  ('Bob', 'Johnson', 'bob@example.com'),
  ('Carol', 'Taylor', 'carol@example.com');

INSERT INTO public.orders (customer_id, order_total, order_date, status) VALUES
  (1, 120.50, CURRENT_DATE(), 'COMPLETED'),
  (1, 45.00, CURRENT_DATE(), 'COMPLETED'),
  (2, 250.00, CURRENT_DATE(), 'PENDING');