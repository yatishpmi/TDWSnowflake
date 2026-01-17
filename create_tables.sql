-- create_tables.sql
-- This script creates a sample database and table

-- Create database if not exists
CREATE DATABASE IF NOT EXISTS company_db;

-- Use the database
USE company_db;

-- Create employees table
CREATE TABLE IF NOT EXISTS employees (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    position VARCHAR(50),
    salary DECIMAL(10, 2),
    hire_date DATE
);

-- Insert sample data
INSERT INTO employees (name, position, salary, hire_date)
VALUES
('Alice Johnson', 'Developer', 75000.00, '2022-05-10'),
('Bob Smith', 'Manager', 90000.00, '2021-03-15');