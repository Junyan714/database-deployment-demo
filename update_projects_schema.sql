-- Full Name: Junyan Zhang
-- Student ID: 8903870
-- Class Number: PROG8850

CREATE TABLE IF NOT EXISTS projects (
    project_id INT AUTO_INCREMENT PRIMARY KEY,
    project_name VARCHAR(255) NOT NULL,
    start_date DATE,
    end_date DATE
);

-- Adding a new column 'budget' to the 'projects' table
ALTER TABLE projects
ADD COLUMN budget DECIMAL(10, 2);
