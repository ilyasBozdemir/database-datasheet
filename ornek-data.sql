
--CREATE DATABASE  CompanyDB;
USE CompanyDB;

-- (--) ile yorum satırı yazılır

-- new query ile de database olusur diger türlü de

--komutu calıstırıp yotum satırına almak lazım tekrar aynı isimde veritabanı olusturmasın diye 

--CREATE TABLE Departments (
--    DepartmentID INT PRIMARY KEY,
--    DepartmentName VARCHAR(50) NOT NULL
--);

--CREATE TABLE Employees (
--    EmployeeID INT PRIMARY KEY,
--    FirstName VARCHAR(50) NOT NULL,
--    LastName VARCHAR(50) NOT NULL,
--    DepartmentID INT,
--    Salary DECIMAL(10, 2) NOT NULL,
--    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
--);

-- Veri ekleme (INSERT)

--INSERT INTO Departments (DepartmentID, DepartmentName)
--VALUES (1, 'IT'),
--       (2, 'HR'),
--       (3, 'Sales');

--INSERT INTO Employees (EmployeeID, FirstName, LastName, DepartmentID, Salary)
--VALUES (1, 'John', 'Doe', 1, 60000.00),
--       (2, 'Jane', 'Smith', 2, 50000.00),
--       (3, 'Bob', 'Johnson', 3, 70000.00);

--SELECT * FROM Departments WHERE DepartmentID = 1 -- DepartmentID'Sİ 1 OLANI GETİR DEMEK

-- Veri sorgulama (SELECT) ve JOIN

--SELECT Employees.EmployeeID, Employees.FirstName, Employees.LastName, Employees.Salary, Departments.DepartmentName
--FROM Employees
--JOIN Departments ON Employees.DepartmentID = Departments.DepartmentID;


-- GROUP BY ve Agregasyon fonksiyonları: Departman bazında ortalama maaş
--SELECT Departments.DepartmentName, AVG(Employees.Salary) AS AverageSalary
--FROM Employees
--JOIN Departments ON Employees.DepartmentID = Departments.DepartmentID
--GROUP BY Departments.DepartmentName;

---- Veri güncelleme (UPDATE)
--UPDATE Employees
--SET Salary = 65000.00
--WHERE EmployeeID = 1;

---- Veri silme (DELETE)
--DELETE FROM Employees
--WHERE EmployeeID = 3;

--CREATE DATABASE IF NOT EXISTS: Veritabanını oluşturur (varsa oluşturmaz).
--CREATE TABLE: Tabloları oluşturur.
--INSERT INTO: Veri ekler.
--SELECT ve JOIN: Veriyi sorgular ve tabloları birleştirir.
--GROUP BY ve Agregasyon fonksiyonları (AVG): Veriyi gruplar ve gruplar üzerinde hesaplamalar yapar.
--UPDATE: Varolan veriyi günceller.
--DELETE: Belirli koşulu sağlayan veriyi siler.