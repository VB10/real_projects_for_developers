# ✅ Test Stratejisi – Hotel Booking App

Bu doküman, Hotel Booking App projesi için uygulanan test stratejilerini, kullanılacak test araçlarını ve test süreçlerinde dikkat edilmesi gereken noktaları kapsamaktadır. Amaç, hata oranını azaltmak, kullanıcı deneyimini artırmak ve sürüm güvenliğini sağlamaktır.

---

## 🧪 1. Genel Test Türleri

| Test Türü     | Açıklama |
|---------------|----------|
| Smoke Test    | Sistem genelinin ayakta olduğunu kontrol eder. Temel senaryolar test edilir. |
| A/B Testi     | Kullanıcıların farklı varyantlarla karşılaştırılması ve geri bildirim alınması. |
| Unit Test     | Bireysel fonksiyonların doğru çalışıp çalışmadığını test eder. |
| Integration Test | Servislerin birbiriyle uyumlu çalışıp çalışmadığını kontrol eder. |
| End-to-End (E2E) Test | Kullanıcının tüm yolculuğu simüle edilir. |
| Regression Test | Yeni geliştirmeler sonrası eski işlevlerin bozulmadığı test edilir. |
| UAT (User Acceptance Test) | Son kullanıcıların onayına sunulan test süreci. |

---

## 🧭 2. Test Sürecinde Dikkat Edilmesi Gerekenler

- Gerçek kullanıcı senaryoları üzerinden test senaryoları hazırlanmalı
- Otomasyon + manuel testler bir arada düşünülmeli
- Her modül kendi içinde test edilebilir olmalı (modüler yapı)
- Çıkan bug'lar issue olarak açılmalı, detaylı açıklanmalı
- Test edilen endpointler ve varyantlar dökümante edilmeli
- Test isimleri anlamlı olmalı, testler izlenebilir ve tekrar edilebilir olmalı

---

## 🖥️ 3. Backend Testleri

### Amaç:
- API uçlarının doğru çalıştığını garanti etmek
- Input / output validasyonlarını test etmek
- Hatalı isteklerde doğru error mesajı ve statü kodu dönmesini sağlamak

### Araçlar:
- Jest
- Supertest
- Postman (Manual testler için)
- Swagger (API dokümantasyonu test senaryoları için)

### Örnekler:
- `/api/auth/login` → yanlış şifre girildiğinde 401 dönmeli
- `/api/bookings` → login olmayan kullanıcı POST yapamamalı
- `/api/hotels` → veritabanındaki tüm oteller dönmeli

---

## 📱 4. Mobile Testleri

### Amaç:
- Kullanıcı arayüzü ve deneyiminin kusursuz olmasını sağlamak
- Form validasyonları, hata senaryoları, yönlendirmeler test edilmeli

### Araçlar:
- Flutter için: `flutter_test`, `integration_test`
- Android Studio: Emulator testleri
- Firebase Test Lab: Gerçek cihaz testleri
- Manual testler: Farklı ekran çözünürlükleri ve cihazlarla yapılmalı

### Örnekler:
- Giriş ekranında boş email → hata gösterilmeli
- Rezervasyon sonrası "başarılı" mesajı gösterilmeli
- Geri butonu kullanıcıyı ana ekrana yönlendirmeli

---

## 🛠️ 5. Test Araçları ve Çerçeveleri

| Araç / Çerçeve        | Kullanım Alanı              |
|------------------------|-----------------------------|
| Jest                  | Backend unit ve integration test |
| Supertest             | Express API endpoint testi  |
| Postman               | Manuel backend testi        |
| Flutter integration_test | Mobil cihaz UI testi       |
| Firebase Test Lab     | Cihazlar arası test         |
| GitHub Actions        | CI test otomasyonu          |

---

## 📌 6. Ek Notlar

- Testler sürekli entegrasyon sistemine (CI) bağlı olmalı
- Pull Request’ler otomatik testle onaylanmalı
- Coverage raporu alınmalı (örnek: `jest --coverage`)
- Her yeni özellik için en az 1 test yazılmalı

---

## ✅ Sonuç

Doğru test sistemi, sürüm kalitesini belirler.  
Hatalar erken bulunur, kullanıcı memnuniyeti artar.  
Testler sadece yazılımı değil, kullanıcıyı da güvenceye alır.

> Yazılım geliştirmenin en kritik adımı: Test etmektir.