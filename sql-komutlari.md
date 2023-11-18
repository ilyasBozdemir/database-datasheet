SQL komutları genellikle üç kategoriye ayrılır:

## DML (Veri İşleme Dili) - Data Manipulation Language

- **INSERT:** Veritabanındaki tablolara veri eklemek için kullanılır.
- **SELECT:** Verileri belirli bir kriteri sağlayan koşullara göre çağırmayı sağlar. En sık kullanılan komut `SELECT`'tir.
- **UPDATE:** Var olan veri değerlerini güncellemek için kullanılır.
- **DELETE:** Veri silmek için kullanılır, aynı zamanda tablo özelliklerini de silebilir.

## DDL (Veri Tanımlama Dili) - Data Definition Language

- **CREATE TABLE:** Veritabanında verileri tutmak için yeni bir tablo oluşturur.
- **ALTER TABLE:** Tablonun yapısında yapılacak olan değişiklikler için kullanılır.
- **DROP TABLE:** Var olan bir tabloyu silmek için kullanılır.

## DCL (Veri Kontrol Dili) - Data Control Language

- `REVOKE`
- `GRANT`
- `DENY`

Bu komutlar, veri güvenliği ve erişim kontrolü için kullanılır.

## Bazı Önemli Anahtar Kelimeler

- `NotNull`: Boş geçilemez, kullanıcıdan alınan ya da atanmış bir değerle dolması gerekir.
- `Default`: Başlangıç değeri verilmiş.
- `Primary Key (Birincil Anahtar)`: Benzersiz ve boş geçilemez özelliklerini aynı anda bulundurur.
- `Foreign Key (Yabancı Anahtar)`: Başka bir tablonun benzer içerikleri tutan alanı ile ilişki kurmak için kullanılır.
- `AND (ve)`: İki duruma beraber bakar. İki durumdaki şartın da aynı anda sağlanıyor olması gerekir.
- `OR (veya)`: İki duruma bakar. İki şarttan birini sağlanması yeterlidir.
- `NOT`: Yapılan işlemin tersi anlamına gelir. Ve tersini gerektiren durumlar için kullanılır.

<br/>

![SQL-JOİNS](https://www.codeproject.com/KB/database/Visual_SQL_Joins/Visual_SQL_JOINS_orig.jpg)

## JOIN , LEFT JOIN , RIGHT JOIN ve FULL JOIN KULLANIMI

Evet, tablolar arasında ilişki kurmak ve bu ilişkileri kullanarak veri çekmek için SQL'de JOIN ifadesini kullanabilirsiniz. JOIN ifadesi, bir veya daha fazla tabloyu belirli bir koşula dayanarak birleştirmenizi sağlar. İşte yaygın olarak kullanılan JOIN türleri:

## INNER JOIN:

İki tablodan eşleşen kayıtları getirir. Eğer bir kayıt bir tabloda ve diğer tabloda eşleşen bir kayıt yoksa, o kayıt sonuçlarda yer almaz.

```sql
SELECT tablo1.sutun, tablo2.sutun
FROM tablo1
INNER JOIN tablo2 ON tablo1.iliskili_sutun = tablo2.iliskili_sutun;

```

## LEFT JOIN (veya LEFT OUTER JOIN):

Sol tablonun tüm kayıtlarını ve eşleşen sağ tablo kayıtlarını getirir. Eğer sağ tabloda eşleşen bir kayıt yoksa, NULL değerleri ile doldurulur.

```sql

SELECT tablo1.sutun, tablo2.sutun
FROM tablo1
LEFT JOIN tablo2 ON tablo1.iliskili_sutun = tablo2.iliskili_sutun;

```

## RIGHT JOIN (veya RIGHT OUTER JOIN):

Sağ tablonun tüm kayıtlarını ve eşleşen sol tablo kayıtlarını getirir. Eğer sol tabloda eşleşen bir kayıt yoksa, NULL değerleri ile doldurulur.

```sql

SELECT tablo1.sutun, tablo2.sutun
FROM tablo1
RIGHT JOIN tablo2 ON tablo1.iliskili_sutun = tablo2.iliskili_sutun;

```

## FULL JOIN (veya FULL OUTER JOIN):

İki tablodan tüm kayıtları getirir. Eşleşen kayıtlar birleştirilir, eşleşmeyen alanlar NULL değerleri ile doldurulur.

```sql

SELECT tablo1.sutun, tablo2.sutun
FROM tablo1
FULL JOIN tablo2 ON tablo1.iliskili_sutun = tablo2.iliskili_sutun;

```

### İşte örnek bir senaryo:

```sql

-- Örnek tablolar oluşturalım
CREATE TABLE Calisanlar (
    CalisanID INT PRIMARY KEY,
    Ad VARCHAR(50),
    DepartmanID INT
);

CREATE TABLE Departmanlar (
    DepartmanID INT PRIMARY KEY,
    DepartmanAdi VARCHAR(50)
);

-- Veri ekleyelim
INSERT INTO Calisanlar VALUES (1, 'Ahmet', 1);
INSERT INTO Calisanlar VALUES (2, 'Mehmet', 2);
INSERT INTO Calisanlar VALUES (3, 'Ayşe', 1);

INSERT INTO Departmanlar VALUES (1, 'Muhasebe');
INSERT INTO Departmanlar VALUES (2, 'İnsan Kaynakları');

-- INNER JOIN örneği
SELECT Calisanlar.CalisanID, Calisanlar.Ad, Departmanlar.DepartmanAdi
FROM Calisanlar
INNER JOIN Departmanlar ON Calisanlar.DepartmanID = Departmanlar.DepartmanID;

```
Bu örnekte, Calisanlar tablosu ile Departmanlar tablosunu DepartmanID alanı üzerinden INNER JOIN ile birleştiriyoruz. Bu, her iki tablodaki eşleşen kayıtları getirir. INNER JOIN yerine diğer JOIN türlerini kullanarak farklı sonuçlar elde edebilirsiniz.