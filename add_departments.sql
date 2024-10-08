-- Full Name: Junyan Zhang
-- Student ID: 8903870
-- Class Number: PROG8850

CREATE TABLE IF NOT EXISTS departments (
    department_id INT AUTO_INCREMENT PRIMARY KEY,
    department_name VARCHAR(255) NOT NULL,
    location VARCHAR(255)
);

-- Insert some sample data
INSERT INTO departments (department_name, location) VALUES
('HR', 'New York'),
('IT', 'San Francisco'),
('Finance', 'Chicago');

-- Create employees table
CREATE TABLE IF NOT EXISTS employees (
    employee_id INT AUTO_INCREMENT PRIMARY KEY,
    employee_name VARCHAR(255) NOT NULL,
    department_id INT,
    hire_date DATE,
    FOREIGN KEY (department_id) REFERENCES departments(department_id)
);

-- Update the location column in departments
ALTER TABLE departments MODIFY COLUMN location VARCHAR(512);

-- Delete a specific row
DELETE FROM departments WHERE department_id = 1;
