# SQL – Veritabanı Dersleri

## Insert Komutu (Tabloya Veri Eklemek)

Veritabanımızdaki tabloya veri eklemek için `INSERT INTO` komutu kullanılır. Kullanımı aşağıdaki gibidir. Eğer sadece belirli alanlara veri ekleyip diğer kısımları boş bırakmak istiyorsak, bunun için kullanmamız gereken `INSERT INTO` kalıbıdır. 

Veri elle eklenilebileceği gibi, SQL komutuyla da eklemek mümkündür.

```sql
-- Tabloya tüm değerleri eklemek
INSERT INTO tablo_adi VALUES (deger_1, deger_2, …)

-- Tablonun belirli alanlarına veri eklemek
INSERT INTO tablo_adi (alan_1, alan_2, alan_3, …) VALUES (deger_1, deger_2, deger_3, …)

```

## Select Komutu (Tüm Tabloyu Görüntülemek)

Bu komutla, veritabanımızda bulunan herhangi bir tablonun içeriğini görmek için kullanırız. Çoğu zaman veritabanında onlarca tablo bulunur. Tabloların bulunduğu kısımdan istediğimiz tabloyu açmak yerine, bunu tek satırlık komut ile yapabiliriz.

```sql

SELECT * FROM tablo_adi

```
## Update Komutu (Güncelleme)

UPDATE komutu, var olan kayıt üzerinde değişiklik yapmamızı sağlar. Bu komut sayesinde bilgileri güncellemek mümkündür.

```sql

UPDATE tablo_adi SET yeni_degerler WHERE sart


```
## Delete  Komutu (Güncelleme)

DELETE komutu, kayıt silmek için kullanılır. Silme işlemleri geri alınamaz, bu nedenle dikkatli kullanılmalıdır.

```sql

DELETE FROM tablo_adi WHERE sart


```

## Veri Tekrarını Kaldırmak (Distinct)
Verilerin tekrarlarının olması olası bir durumdur. Tekrarları gözardı etmek için kullanılan komut DISTINCT 'tir.

```sql

SELECT DISTINCT * FROM tablo_adi


```

## Belirli Aralıktaki Kayıtları Getirmek (Between)

Belirtilen iki değer arasındaki kayıtları getirmek için BETWEEN kullanılır.

```sql

SELECT * FROM tablo_adi WHERE sutun BETWEEN deger_1 AND deger_2


```
## Sıralama Yapmak İçin (Order By)

Sorgu sonucunu sıralamak için kullanılır. Sayıları ve kelimeleri sıralar. Artandan azalana ve az olandan artana olmak üzere iki şekilde sıralama yapılabilir.

```sql

SELECT * FROM tablo_adi ORDER BY alan_adi


```
## Artan Sıralama (Asc)

ASC ile yalnız kullanılan ORDER BY aynı görevi yapmaktadır ve az olandan artana olacak şekilde sıralama yapar.

```sql

SELECT * FROM tablo_adi ORDER BY alan_adi ASC


```
## Azalan Sıralama (Desc)

DESC ise ASC 'nin tam tersi şeklinde çalışmaktadır. Azalan şeklinde sıralama yapar.

```sql

SELECT * FROM tablo_adi ORDER BY alan_adi DESC


```

# Diğer Komutlar

## Ortalama Almak (Avg)
Anlamı "average" (ortalama) 'dan gelen komut, ilgili sütundaki sayısal verilerin ortalamasını verir.

```sql

SELECT AVG(sutun_adi) FROM tablo_adi


```
## Verilerin Toplamını Almak (Sum)
İlgili sütunda bulunan sayısal verilerin toplamını verir.

```sql

SELECT SUM(sutun_adi) FROM tablo_adi


```
## En Büyük Değer (Max)
Veritabanında bulunan sayısal veri bulunan sütunda kayıtlar arasında en büyüğünü gösteren komuttur.

```sql

SELECT MAX(sutun_adi) FROM tablo_adi

```

## En Küçük Değer (Min)
Veritabanında bulunan sayısal veri bulunan sütunda kayıtlar arasında en küçüğünü gösteren komuttur.

```sql

SELECT MIN(sutun_adi) FROM tablo_adi

```
## Kayıt Sayısı (Count)

Tabloda kaç satır (kayıt) olduğunu görmek için kullanılan komuttur.
```sql

SELECT COUNT(*) FROM tablo_adi


```
## İki Koşulu Sağlayanlar (And)

AND komutu, WHERE komutu ile birlikte kullanılır. İki veya daha fazla alanın belirli değere eşit olması durumunda "true (doğru)" olur ve kayıtlar listelenir.

```sql

SELECT * FROM tablo_adi WHERE sorgu_1 AND sorgu_2

```
## İki Değeri Sağlayanlar (Or)

OR komutu, AND komutundan farklı olarak, iki sorgudan birinin sağlanması durumunda sorguyu çalıştırır.

```sql

SELECT * FROM tablo_adi WHERE sorgu_1 OR sorgu_2


```
## Belirtilen İfadeyi İçeren (Like)

LIKE komutu, belirli bir alanda girilen ifadenin geçtiği kayıtları görüntülemenizi sağlar.

```sql

SELECT * FROM tablo_adi WHERE alan_adi LIKE "%ifade%"


```

