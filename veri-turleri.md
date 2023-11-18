# SQL Server Tablo Oluşturma Kılavuzu

Bu kılavuzda, SQL Server'da bir tablo oluşturmak için kullanılan temel veri tiplerini ve bu veri tiplerini kullanarak bir tablo nasıl oluşturulacağını adım adım öğreneceksiniz.

## Veri Tipleri

### 1. INT (Integer)

Bu veri tipi, tam sayıları temsil eder.

### 2. VARCHAR(n) (Variable Character)

Metin verilerini temsil eder. 'n' maksimum karakter uzunluğunu belirtir.

### 3. DATE

Tarih verilerini temsil eder.

### 4. DECIMAL(p, s) (Decimal)

Kesirli sayıları temsil eder. 'p', toplam basamak sayısını ve 's', ondalık basamak sayısını belirtir.

### 5. BIT

Bu veri tipi, 0 veya 1 değerini temsil eder, genellikle boolean veriler için kullanılır.

## Tablo Oluşturma Adımları

1. **CREATE TABLE İle Tablo Oluşturma:**

    ```sql
    CREATE TABLE Ogrenciler (
        OgrenciID INT PRIMARY KEY,
        Adi VARCHAR(50) NOT NULL,
        Soyadi VARCHAR(50) NOT NULL,
        DogumTarihi DATE,
        NotOrtalamasi DECIMAL(3, 2),
        Aktif BIT DEFAULT 1
    );
    ```

    Bu sorgu, "Ogrenciler" adında bir tablo oluşturur. Tablo, öğrenci bilgilerini içerir: öğrenci ID, adı, soyadı, doğum tarihi, not ortalaması ve aktif durumu.

2. **Veri Tiplerinin Açıklamaları:**

    - `INT`: Tam sayıları temsil eder.
    - `VARCHAR(50)`: Metin verilerini içerir ve maksimum uzunluğu 50 karakterdir.
    - `DATE`: Tarih verilerini temsil eder.
    - `DECIMAL(3, 2)`: Kesirli sayıları temsil eder, toplam 3 basamak ve 2 ondalık basamağa sahiptir.
    - `BIT`: Boolean veriyi temsil eder, genellikle 0 veya 1 değeri alır.

Bu basit kılavuz, SQL Server'da tablo oluşturmak için kullanılan temel veri tiplerini ve sorgu yapısını anlamanıza yardımcı olmalıdır. Başka sorularınız varsa sormaktan çekinmeyin!
