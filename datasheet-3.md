``` sql

# SQL Örnekleri ve Açıklamaları

## Veritabanı ve Tablo Oluşturma

```sql
-- Veritabanı oluşturma
CREATE DATABASE IF NOT EXISTS ExampleDB;
USE ExampleDB;

-- Tablo oluşturma

CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    BirthDate DATE
);

-- Veri ekleme
INSERT INTO Students (StudentID, FirstName, LastName, BirthDate)
VALUES (1, 'John', 'Doe', '2000-01-15'),
       (2, 'Jane', 'Smith', '1999-05-20');


-- Koşullu sorgulama ve sıralama
SELECT StudentID, FirstName, LastName
FROM Students
WHERE BirthDate BETWEEN '1990-01-01' AND '2000-12-31'
ORDER BY LastName DESC;


-- Tekrarlanan değerleri kaldırma
SELECT DISTINCT LastName
FROM Students;

-- Birleştirme (JOIN)
SELECT Students.StudentID, Students.FirstName, Students.LastName, Enrollments.CourseID, Enrollments.Grade
FROM Students
JOIN Enrollments ON Students.StudentID = Enrollments.StudentID;


-- Koşullu İfadeler (CASE WHEN)
SELECT StudentID, Grade,
    CASE
        WHEN Grade >= 90 THEN 'A'
        WHEN Grade >= 80 THEN 'B'
        WHEN Grade >= 70 THEN 'C'
        WHEN Grade >= 60 THEN 'D'
        ELSE 'F'
    END AS GradeCategory
FROM Enrollments
ORDER BY Grade DESC;


-- Agregasyon Fonksiyonları ve Gruplama (GROUP BY)
SELECT Departments.DepartmentName, AVG(Employees.Salary) AS AverageSalary
FROM Employees
JOIN Departments ON Employees.DepartmentID = Departments.DepartmentID
GROUP BY Departments.DepartmentName;


-- TRIGGER oluşturma
DELIMITER //
CREATE TRIGGER BeforeEmployeeInsert
BEFORE INSERT ON Employees
FOR EACH ROW
BEGIN
    -- Yeni eklenen çalışanın maaşı 50000'den düşükse, 50000 olarak ayarla
    IF NEW.Salary < 50000 THEN
        SET NEW.Salary = 50000;
    END IF;
END //
DELIMITER ;

-- STORED PROCEDURE oluşturma
DELIMITER //
CREATE PROCEDURE GetEmployeeByDepartment(IN departmentName VARCHAR(50))
BEGIN
    -- Belirli bir departmana ait çalışanları getir
    SELECT EmployeeID, FirstName, LastName, Salary
    FROM Employees
    WHERE DepartmentID = (SELECT DepartmentID FROM Departments WHERE DepartmentName = departmentName);
END //
DELIMITER ;


-- DELIMITER kullanımı
DELIMITER //

CREATE PROCEDURE ExampleProcedure()
BEGIN
    -- Saklı yordam içeriği
    SELECT * FROM Employees;
END //

DELIMITER ;



```