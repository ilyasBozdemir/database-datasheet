``` sql

-- SQL dilinde birçok konsept ve işlem bulunmaktadır. Aşağıda, SQL'de sıkça kullanılan birkaç önemli konsept ve ifadeyi içeren daha kapsamlı bir örnek bulunmaktadır:

-- Veritabanı oluşturma
CREATE DATABASE IF NOT EXISTS CompanyDB;
USE CompanyDB;

-- Tabloları oluşturma
CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50) NOT NULL
);

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    DepartmentID INT,
    Salary DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);

-- Veri ekleme (INSERT)
INSERT INTO Departments (DepartmentID, DepartmentName)
VALUES (1, 'IT'),
       (2, 'HR'),
       (3, 'Sales');

INSERT INTO Employees (EmployeeID, FirstName, LastName, DepartmentID, Salary)
VALUES (1, 'John', 'Doe', 1, 60000.00),
       (2, 'Jane', 'Smith', 2, 50000.00),
       (3, 'Bob', 'Johnson', 3, 70000.00);

-- Veri sorgulama (SELECT) ve JOIN
SELECT Employees.EmployeeID, Employees.FirstName, Employees.LastName, Employees.Salary, Departments.DepartmentName
FROM Employees
JOIN Departments ON Employees.DepartmentID = Departments.DepartmentID;

-- GROUP BY ve Agregasyon fonksiyonları: Departman bazında ortalama maaş
SELECT Departments.DepartmentName, AVG(Employees.Salary) AS AverageSalary
FROM Employees
JOIN Departments ON Employees.DepartmentID = Departments.DepartmentID
GROUP BY Departments.DepartmentName;

-- Veri güncelleme (UPDATE)
UPDATE Employees
SET Salary = 65000.00
WHERE EmployeeID = 1;

-- Veri silme (DELETE)
DELETE FROM Employees
WHERE EmployeeID = 3;

--CREATE DATABASE IF NOT EXISTS: Veritabanını oluşturur (varsa oluşturmaz).
--CREATE TABLE: Tabloları oluşturur.
--INSERT INTO: Veri ekler.
--SELECT ve JOIN: Veriyi sorgular ve tabloları birleştirir.
--GROUP BY ve Agregasyon fonksiyonları (AVG): Veriyi gruplar ve gruplar üzerinde hesaplamalar yapar.
--UPDATE: Varolan veriyi günceller.
--DELETE: Belirli koşulu sağlayan veriyi siler.

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

-- TRIGGER tetikleme
INSERT INTO Employees (EmployeeID, FirstName, LastName, DepartmentID, Salary)
VALUES (4, 'Alice', 'Johnson', 2, 48000.00); -- Yeni çalışanın maaşı 50000'den düşük olduğu için tetiklenecek

-- STORED PROCEDURE çağırma
CALL GetEmployeeByDepartment('HR'); -- HR departmanına ait çalışanları getir

-- TRIGGER kaldırma
DROP TRIGGER IF EXISTS BeforeEmployeeInsert;

-- STORED PROCEDURE kaldırma
DROP PROCEDURE IF EXISTS GetEmployeeByDepartment;


--TRIGGER: Belirli bir olay gerçekleştiğinde otomatik olarak çalışan bir SQL kod bloğu tanımlar. Örnekte, yeni bir çalışan eklenirken, çalışanın maaşı 50000'den düşükse, maaşı 50000 olarak ayarlayan bir BEFORE INSERT tetikleyicisi oluşturulmuştur.

--STORED PROCEDURE: SQL sorgularını adlandırılmış bir şekilde saklayan ve daha sonra çağrılabilen bir işlevdir. Örnekte, bir departmana ait çalışanları getiren bir saklı yordam (GetEmployeeByDepartment) oluşturulmuştur.

--DELIMITER: SQL sorgularını bloklara ayırmak için kullanılır.

--CALL: Saklı yordamı çağırmak için kullanılır. Örnekte, 'HR' departmanına ait çalışanları getirmek için GetEmployeeByDepartment saklı yordamı çağrılmıştır.

--DROP: Bir TRIGGER veya STORED PROCEDURE'ı kaldırmak için kullanılır.

--Bu örnekler, SQL'de TRIGGER ve STORED PROCEDURE kullanımını göstermektedir. Her biri, veritabanı yönetimi ve iş mantığı uygulamalarında faydalıdır.




```