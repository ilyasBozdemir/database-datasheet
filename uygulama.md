## Adım 1: database olusturma 

veritabanı bu şekilde de olusturulur
![database_create](/assests/database_create.png)

veritabanı adı girme
![database_create](/assests/database_create-2.png)


olusan veritabanı görsel :

![database olusturuldu](/assests/database olusturuldu.png)

## Adım 2: tablo  olusturma 

![database olusturuldu](/assests/table_create.png)


### New Query ile (diğer yöntem) 

![database olusturuldu](/assests/new-query.png)

butona basılıp bos bir sayfa acılır

bu komutla db olusur

![database olusturuldu](/assests/createdbwithscript.png)

use ile hangi veritabanında işlem yapılcaksa onu kullan denilir use kullan demek


tablo olsuturmak için bunu yazıp F% tusuna basılır veya gorselde ki gibi execute butonuna basılır. yani kodu derle demek.

![database olusturuldu](/assests/tabloolusturmadanonce.png)


solda iki görselin olusturuldugu görüntülencektir.
 ama yukarda ki yenile tusuna basılması lazım öncegörsel aşagıdadır.

![database olusturuldu](/assests/tabloolusturmadansonra.png)



sekilde ki gibi o butona basılır
![database olusturuldu](/assests/tablodasutunlarıgostermek.png)

veya asagıda kikomut yazılır  where kısmından sonra ki sart koşar
şart kosulmazsa hepsini hedef alır


![database olusturuldu](/assests/sartlıverigetir.png)

SElect tablodan sütun seçmek içindir 
* hepsini seç demek ama sütun adları da verilebilir.

AŞAGIDA Kİ KOMUT `Departments` TABLOSUNDAN  `DepartmentID` sütununu seç demek

```sql 
 
 SELECT DepartmentID FROM Departments

```

tablodan veri silmek için,
burda dikkat edilmesi gerekn husus where ile kosul vermek
ve de veri türlerine dikkat etmek

![database olusturuldu](/assests/delete.png)

tablodan veri güncellemek için,
burda dikkat edilmesi gerekn husus where ile kosul vermek
ve de veri türlerine dikkat etmek veri türlerine göz atmak için
[tıklayınız](veri-turleri.md)   


![database olusturuldu](assests/update.png)



