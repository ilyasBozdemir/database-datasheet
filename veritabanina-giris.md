# Veri Tabanına Giriş

![veritabanına giriş](https://cdn.corporatefinanceinstitute.com/assets/database-1024x703.jpeg)


## Veri Nedir?

**Veri**, bir veya birden fazla bilgiden oluşan bir kümedir. İsim, yaş, telefon numarası, bir toplama işleminin sonucu ya da bir sınıfın yaş ortalaması birer veridir. Bir veritabanı yapısı içerisinde tutulan bilgilere veri denilmektedir.

## Veri Neden Saklanır?

Veri saklamaktaki ana amaç, daha ileri bir tarihte saklanan verilere yeniden ulaşabilmek ve kullanabilmektir. Kullanma süreci sadece verinin listelenmesi gibi basit bir işlem olabileceği gibi, veriler üzerinden hesaplamalar yapılarak raporlar hazırlanması gibi daha karmaşık bir işlem de olabilir.

## Veri Saklama Yöntemleri

Verileri saklamak için çeşitli ortamları tercih etmek mümkündür. Verilerin klasik yöntem ile kalem kullanarak bir dosya kağıdına satır satır yazılması da bir veri saklama yöntemidir, bilgisayar üzerinde notepad kullanarak metin tabanlı basit bir dosyada depolanması da bir veri saklama yöntemidir. Daha düzenli ve detaylı bir şekilde veri saklamamızı sağlayacak yöntemler arasında, tablo yapısında veri saklamamızı sağlayan Excel ve Access gösterilebilir.

## Veritabanı Nedir?

**Veritabanı (Database)** temel olarak farklı tiplerdeki verileri düzenli bir şekilde saklamamızı ve kullanmamızı sağlayan depolama ortamıdır. Bu ortam içerisinde verileri saklayabilir, onlara kolay bir şekilde ulaşabilir ve gerektiğinde bu verilerin üzerinde değişiklikler yapabiliriz. Veri tabanı, veriler arasında bütünlük ve düzen sağlarken, veriye hızlı erişim ve bakım kolaylığı da sunar. Bu sistemin kullanılması sonucu veriyi hatasız ve sağlıklı bir biçimde işlemek de kolaylaşır.

## SQL (Yapısal Sorgulama Dili)

**SQL (Structured Query Language)**, yani **Yapısal Sorgulama Dili**, tüm ilişkisel veritabanlarında standart olarak kullanılan bir dildir. SQL veritabanı ile kullanıcı arasındaki iletişimi sağlar. Bu dil aracılığıyla hazırladığınız sorguları kullanarak veritabanında depolanan veriler üzerinde bütün işlemleri yapabilirsiniz. SQL dilinin standartları ANSI (American National Standart Institute) ve ISO (International Standarts Organization) tarafından sağlanmakla birlikte, günümüzde en yaygın olarak ANSI standartları kullanılmaktadır.


# İlişkili Veritabanları Neden Kullanmalıyız?

Veritabanlarında, tablolar arasında ilişkiler kurmak, veri bütünlüğünü sağlamak ve verileri daha düzenli bir şekilde depolamak için önemlidir.

## Veri Bütünlüğü

İlişkili veritabanları kullanmak, veri bütünlüğünü korumaya yardımcı olur. Örneğin, bir "Departments" (Bölümler) tablosu ve bir "Employees" (Çalışanlar) tablosu varsa, "Employees" tablosundaki her bir çalışanın bir "DepartmentID" (Bölüm Kimliği) ile ilişkilendirilmesi, her çalışanın bir bölüme ait olduğunu garantiler. Bu, veritabanındaki verilerin tutarlı ve doğru olmasını sağlar.

## Veri Organizasyonu

İlişkiler, verileri daha düzenli bir şekilde organize etmeye yardımcı olur. İlgili veriler bir araya getirilebilir ve sorgulama işlemleri daha etkili bir şekilde gerçekleştirilebilir. Örneğin, "Employees" ve "Departments" tabloları arasındaki ilişki, bir çalışanın hangi bölüme ait olduğunu hızlıca bulmayı sağlar.

## Veritabanı Tasarımı

İlişkiler, veritabanı tasarımını daha modüler ve esnek hale getirir. Veritabanı şeması değiştirilmek istendiğinde, ilişkiler sayesinde bu değişiklikleri yapmak daha kolaydır. Yeni veri gereksinimleri eklendiğinde veya mevcut veri yapısı değiştirildiğinde, ilişkilerin doğru bir şekilde tanımlanmış olması, bu değişiklikleri yönetmeyi kolaylaştırır.

---

Bu nedenlerden dolayı, veritabanları arasında ilişkiler kurmak, veri bütünlüğünü korumak, veri organizasyonunu artırmak ve veritabanı tasarımını daha etkili hale getirmek için önemlidir.

## 1-1 İlişki (One-to-One)

1-1 ilişkide, bir tablo ile diğer tablo arasında birbirine karşılık gelen yalnızca bir kayıt bulunur. Bu, birinci tablodaki herhangi bir kayıda yalnızca bir tane ikinci tablo kaydının eşlik ettiği anlamına gelir. Örneğin, bir "Person" (Kişi) tablosu ile bir "Passport" (Pasaport) tablosu arasında 1-1 ilişki olabilir. Her kişinin yalnızca bir pasaportu vardır ve her pasaport yalnızca bir kişiye aittir.

Örnek:
