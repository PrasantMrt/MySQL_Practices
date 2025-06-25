-- Sample Tables
CREATE TABLE teachers (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    subject VARCHAR(50)
);

CREATE TABLE classes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT,
    teacher_id INT,
    FOREIGN KEY (student_id) REFERENCES students(id),
    FOREIGN KEY (teacher_id) REFERENCES teachers(id)
);

-- INNER JOIN
SELECT s.name, t.name AS teacher
FROM students s
JOIN classes c ON s.id = c.student_id
JOIN teachers t ON c.teacher_id = t.id;

-- LEFT JOIN
SELECT s.name, t.name AS teacher
FROM students s
LEFT JOIN classes c ON s.id = c.student_id
LEFT JOIN teachers t ON c.teacher_id = t.id;
