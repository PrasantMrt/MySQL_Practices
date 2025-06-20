-- Insert Records
INSERT INTO students (name, age, grade) VALUES ('Prasant', 15, '10');
INSERT INTO students (name, age, grade) VALUES ('Pratik', 16, '11');

-- Select All
SELECT * FROM students;

-- Select Specific Columns
SELECT name, grade FROM students;

-- Where Clause
SELECT * FROM students WHERE age > 15;

-- Update Record
UPDATE students SET grade = '12' WHERE name = 'Pratik';

-- Delete Record
DELETE FROM students WHERE name = 'Pratik';
