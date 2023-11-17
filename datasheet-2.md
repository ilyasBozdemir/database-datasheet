``` sql
-- SQL dilinde bir dizi farklı konsept ve işlem bulunmaktadır. Aşağıda, SQL'de sıkça kullanılan bazı konseptleri ve işlemleri içeren genişletilmiş bir örnek bulunmaktadır:

-- yorum satırı (--) ile yapılır sqlde

-- Veritabanı oluşturma
CREATE DATABASE IF NOT EXISTS UniversityDB;
USE UniversityDB;

-- Tabloları oluşturma
CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    BirthDate DATE
);

CREATE TABLE Courses (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(100),
    Credits INT
);

CREATE TABLE Enrollments (
    EnrollmentID INT PRIMARY KEY,
    StudentID INT,
    CourseID INT,
    Grade DECIMAL(3, 2),
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
    FOREIGN KEY (CourseID) REFERENCES Courses(CourseID)
);

-- Veri ekleme (INSERT)
INSERT INTO Students (StudentID, FirstName, LastName, BirthDate)
VALUES (1, 'John', 'Doe', '2000-01-15'),
       (2, 'Jane', 'Smith', '1999-05-20');

INSERT INTO Courses (CourseID, CourseName, Credits)
VALUES (101, 'Mathematics', 3),
       (102, 'Computer Science', 4);

INSERT INTO Enrollments (EnrollmentID, StudentID, CourseID, Grade)
VALUES (1001, 1, 101, 85.5),
       (1002, 1, 102, 90.0),
       (1003, 2, 101, 78.2);

-- INNER JOIN kullanarak öğrenci ve kurs bilgilerini birleştirme
SELECT Students.StudentID, Students.FirstName, Students.LastName, Courses.CourseName, Enrollments.Grade
FROM Students
JOIN Enrollments ON Students.StudentID = Enrollments.StudentID
JOIN Courses ON Enrollments.CourseID = Courses.CourseID;

-- CASE WHEN ve ORDER BY kullanarak notları kategorilere göre sıralama
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

-- TOP kullanarak en yüksek not alan öğrenciyi bulma
SELECT TOP 1 WITH TIES StudentID, MAX(Grade) AS HighestGrade
FROM Enrollments
GROUP BY StudentID
ORDER BY HighestGrade DESC;

-- CROSS JOIN kullanarak tüm öğrenci ve kurs kombinasyonlarını getirme
SELECT Students.StudentID, Students.FirstName, Students.LastName, Courses.CourseID, Courses.CourseName
FROM Students
CROSS JOIN Courses;

-- EXISTS kullanarak belirli bir koşulu sağlayan kayıtları getirme
SELECT StudentID, FirstName, LastName
FROM Students
WHERE EXISTS (
    SELECT 1
    FROM Enrollments
    WHERE Students.StudentID = Enrollments.StudentID AND Grade >= 80
);

-- UPDATE ve INNER JOIN kullanarak belirli bir koşulu sağlayan kayıtları güncelleme
UPDATE Students
SET FirstName = 'Updated'
WHERE EXISTS (
    SELECT 1
    FROM Enrollments
    WHERE Students.StudentID = Enrollments.StudentID AND Grade >= 80
);

-- DELETE ve OUTER JOIN kullanarak belirli bir koşulu sağlayan kayıtları silme
DELETE FROM Students
WHERE StudentID IN (
    SELECT Students.StudentID
    FROM Students
    LEFT JOIN Enrollments ON Students.StudentID = Enrollments.StudentID
    WHERE Enrollments.StudentID IS NULL
);

-- IN ve BETWEEN kullanarak belirli bir aralıktaki kayıtları getirme
SELECT StudentID, FirstName, LastName, BirthDate
FROM Students
WHERE BirthDate BETWEEN '1990-01-01' AND '2000-12-31';

-- LIKE kullanarak belirli bir deseni içeren kayıtları getirme
SELECT StudentID, FirstName, LastName
FROM Students
WHERE FirstName LIKE 'J%';

--'J%' demek j ile baslayan demek

-- DISTINCT kullanarak benzersiz kayıtları getirme
SELECT DISTINCT CourseID
FROM Enrollments;


--CASE WHEN: Koşullu ifade oluşturmak için kullanılır.
--ORDER BY: Sonuçları belirli bir sırayla göstermek için kullanılır.
--TOP: Belirli bir sayıda ilk kaydı getirmek için kullanılır.
--CROSS JOIN: Tüm kombinasyonları getirmek için kullanılır.
--EXISTS: Belirli bir koşulu sağlayan kayıtları getirmek için kullanılır.
--UPDATE: Varolan veriyi güncellemek için kullanılır.
--DELETE: Belirli koşulu sağlayan kayıtları silmek için kullanılır.
--OUTER JOIN: INNER JOIN gibi çalışır, ancak eşleşmeyen kayıtları da getirir.
--IN: Belirli bir liste içindeki değerlere göre filtreleme yapmak için kullanılır.
--BETWEEN: Belirli bir aralıktaki değerlere göre filtreleme yapmak için kullanılır.
--LIKE: Belirli bir deseni içeren değerlere göre filtreleme yapmak için kullanılır.
--DISTINCT: Tekrarlanan değerleri ortadan kaldırmak için kullanılır.
--Bu örnekte, SQL dilinde yaygın olarak kullanılan birçok konsept ve komutun örneklerini bulabilirsiniz. Bu komutları anlamak ve kullanmak, veritabanı işlemlerini daha etkili bir şekilde gerçekleştirmenize yardımcı olacaktır.


```