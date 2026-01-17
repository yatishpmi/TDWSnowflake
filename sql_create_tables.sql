-- Snowflake SQL: create sample customers and orders tables
CREATE OR REPLACE TABLE public.customers (
  customer_id INTEGER AUTOINCREMENT,
  first_name VARCHAR,
  last_name VARCHAR,
  email VARCHAR,
  created_at TIMESTAMP_NTZ DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (customer_id)
);

CREATE OR REPLACE TABLE public.orders (
  order_id INTEGER AUTOINCREMENT,
  customer_id INTEGER,
  order_total NUMBER(10,2),
  order_date DATE,
  status VARCHAR,
  PRIMARY KEY (order_id)
  -- Note: Snowflake does not enforce foreign key constraints by default
);

-- Optional: adjust schema/database names to match your environment
