# MyLibrary

Java Swing tabanlı bir **Kütüphane Yönetim Sistemi**. Kitap ekleme, silme, güncelleme, arama; kullanıcı türlerine göre yetkilendirme (Admin / User) ve MySQL entegrasyonu içerir.

## Özellikler
- 📚 Kitap CRUD işlemleri (Add / Display / Remove / Update / Search)
- 👤 Kullanıcı rolleri: Type-1 (Admin, tüm fonksiyonlar) ve Type-2 (kısıtlı erişim)
- 🗓️ Yayın tarihi (`releaseDate`) `Date` tipi uyumlu
- 🔔 Girişten sonra istek listesindeki kitapların **1 hafta içinde çıkacak** olanları için bildirim
- 🔗 Yazar eklerken **website = website-{authorId}** otomatik set etme (insert + update)
- 🖼️ Swing arayüzleri: `GUI.java` (admin), `UserFrame.java` (Type-2), `EditBook_Page.java` (güncelleme ekranı)
- 🗄️ MySQL veritabanı şeması ve trigger/procedure fonksiyonları (PortShipSecure projesinden ayrı)

## Mimarî (OOP)
- `Book`, `Author`, `User` gibi domain sınıfları
- Encapsulation / Inheritance / Polymorphism prensipleri
- Katmanlar: UI (Swing) → Service/DAO → DB

## Teknolojiler
- Java (JDK 8+)
- Swing (NetBeans GUI Builder uyumlu)
- MySQL (Connector/J)
- (İsteğe bağlı) Maven/Gradle

## Çalıştırma
1. `src/` klasörünü IDE'ye (IntelliJ IDEA / NetBeans) import edin.
2. `application.properties` veya `DBConfig.java` benzeri yerde MySQL bağlantı ayarlarını yapın.
3. Ana giriş noktası olarak `LoginFrame` veya `Main` sınıfını çalıştırın.
4. Admin kullanıcı ile giriş yaparak tüm menüleri test edin.

## Proje Yapısı (özet)
```
MyLibrary_extracted/
└── MyLibrary     JAVA ve Interface/
    ├── aga bunlar ne bilmiyorum ya bakmaya üşendim/
    │   ├── SOFtwareSystemAnalyse/
    │   │   ├── Library/
    │   │   ├── Ekran Kaydı 2025-06-25 132254.mp4
    │   │   ├── Report.docx
    │   │   ├── SE2232Project.vpp
    │   │   ├── SE2232Project.vpp.bak_000f
    │   │   └── SQLMYLibrary.sql
    │   ├── System Analyse Final Project/
    │   │   ├── Library/
    │   │   ├── library.sql
    │   │   └── Library.zip
    │   └── MyLibrary Sunum Videosu.zip
    └── SoftwareSystemAnalyse Project.zip
```

## Ekran Görüntüleri
> `screenshots/` klasörüne ekran görüntüleri ekleyin ve bu bölümü güncelleyin.

## Katkı
- Issue açabilir, PR gönderebilirsiniz.

## Lisans
MIT veya uygun gördüğünüz bir lisans ile güncelleyebilirsiniz.
