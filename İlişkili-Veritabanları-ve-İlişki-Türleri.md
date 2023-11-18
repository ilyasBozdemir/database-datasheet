# İlişkili Veritabanları ve İlişki Türleri

Veritabanlarında, tablolar arasında kurulan ilişkiler, veri bütünlüğünü sağlamak ve veriyi daha organize etmek için kullanılır. İlişki türleri genellikle "1-1" (one-to-one) ve "1-n" (one-to-many) olarak adlandırılır.



## 1-1 İlişki (Bir-Bir İlişkisi)
Bir kişinin bir pasaportu vardır, başka kimse bu pasaportu kullanamaz. İşte bu kadar basit! Şimdi, bu ilişkiyi SQL koduyla görelim:


```sql
-- Kişi tablosu
CREATE TABLE Person (
    PersonID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    BirthDate DATE
);

-- Pasaport tablosu
CREATE TABLE Passport (
    PassportID INT PRIMARY KEY,
    PassportNumber VARCHAR(20),
    ExpiryDate DATE,
    PersonID INT UNIQUE,
    FOREIGN KEY (PersonID) REFERENCES Person(PersonID)
);

```
Person tablosundaki her kişiye, Passport tablosundaki her pasaport yalnızca bir kişiye aittir (PersonID INT UNIQUE). Yani, her kişinin yalnızca bir pasaportu vardır.

## 1-n İlişki (Bir-Çok İlişkisi)
Bir bölümde birçok çalışan olabilir, ancak her çalışan yalnızca bir bölüme aittir. Yani, bir bölümün bir sürü çalışanı vardır ama her çalışan yalnızca bir bölüme bağlıdır. İşte bu kadar basit! Şimdi, bu ilişkiyi SQL koduyla görelim:

```sql

-- Departman tablosu
CREATE TABLE Department (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50)
);

-- Çalışan tablosu
CREATE TABLE Employee (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    DepartmentID INT,
    FOREIGN KEY (DepartmentID) REFERENCES Department(DepartmentID)
);

```

Her çalışanın bir bölümü vardır (DepartmentID INT). Bu sayede, bir bölümdeki bir çalışana ulaşabilirsiniz.