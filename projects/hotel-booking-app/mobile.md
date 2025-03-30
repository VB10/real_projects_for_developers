# 📱 Mobil Geliştirme Rehberi – Hotel Booking App

Bu doküman, Hotel Booking App projesinin mobil tarafını geliştirecek geliştiriciler için hazırlanmıştır.  
Amaç; ekran bazlı düşünmeyen, sistemsel yaklaşan, yeniden kullanılabilir ve ölçeklenebilir bir mobil uygulama geliştirmektir.

---

## 🎯 Geliştirme Amaçları

- Gerçek bir UI tasarımını kodla uyumlu hale getirmek
- Component bazlı yapı kurmak
- Navigasyon, state management, veri yönetimini kontrollü ilerletmek
- Backend API ile senkron çalışan bir mobil yapı geliştirmek

---

## 📱 Ekran ve Modül Yapısı

### 🛫 Onboarding & Auth
- Splash
- Onboarding slider
- Login / Register / Forgot password

### 🏨 Hotel Discovery
- Hotel listesi (arama + filtreleme dahil)
- Hotel detayları
- Galeri görünümü (slider)

### 📅 Booking Akışı
- Tarih & kişi seçimi
- Ödeme bilgileri (mock)
- Rezervasyon özeti

### 👤 Kullanıcı Modülü
- Profil bilgileri
- Şifre değiştir
- Rezervasyon geçmişi
- Logout

---

## 🧩 Komponentleşme Stratejisi

Tüm UI bileşenleri aşağıdaki mantıkla bölünmeli:

| Seviye      | Örnek                            | Açıklama                             |
|-------------|-----------------------------------|--------------------------------------|
| Atom        | Button, Icon, Text, Input         | En küçük bağımsız birimler           |
| Molecule    | SearchBar, PriceFilter, HotelTag  | 2+ atom birleşimi                    |
| Organism    | HotelCard, ReservationBox         | Tam bloklar (liste elemanı vs.)      |
| Template    | FilterScreenLayout, ProfileLayout | Sayfa yapısı (iç layout)             |
| Page        | HotelListPage, ProfilePage        | Gerçek ekran                          |

> UI parçalanırken **design.md** içindeki sistemden referans al.

---

## 🧭 Navigasyon Sistemi

- Sayfa yönlendirmeleri merkezi olarak tanımlanmalı (örnek: route config)
- `push` / `replace` / `popUntil` gibi davranışlar net ayrılmalı
- Deep link desteği opsiyonel ama önerilir
- Route isimlendirmeleri:
  - `auth/login`
  - `hotel/:id`
  - `booking/summary`

---

## ⚙️ State Management (Framework’e göre değişebilir)

- Sayfa içi state: local
- Ekranlar arası global state: centralized (Provider, Redux, Bloc, vb.)
- Network state: ayrı yapı (örn: repository + service katmanı)
- Reservation gibi kritik akışlarda adım adım state kontrolü önerilir

---

## 🧰 Geliştirme Kuralları

- [ ] Tüm sabitler (`colors`, `fonts`, `spacing`) merkezi dosyada
- [ ] Component isimleri net ve anlamlı (örn: `PrimaryButton`, `HotelInfoCard`)
- [ ] Responsive yapı kurulmalı (MediaQuery, LayoutBuilder, GeometryReader vs.)
- [ ] Tüm UI'ler boş/başarısız/loading durumlarını göstermeli
- [ ] Kodda yorumlar minimumda, ama açıklayıcı dosya yapısı şart

---

## 🌐 API Bağlantısı

- [ ] `services/` altında API erişimleri yapılandırılmalı
- [ ] HTTP katmanı ayrıştırılmalı (örn: `apiClient.get()`)
- [ ] Token kontrolü otomatik yapılmalı (header interceptor vs.)
- [ ] Tüm veri modelleri `models/` klasöründe tutulmalı

---

## 🧪 Test Süreci

- Mock data üzerinden UI testleri (örn: `MockHotelList`)
- Navigasyon testleri (bir ekrandan diğerine geçiş)
- API entegrasyonu varsa test endpoint’leriyle deneme
- Minimum:  
  - Her component için ekran görüntüsü  
  - Navigasyon dizisi  
  - State geçiş kontrolü

---

## 🛠️ Katılım ve PR Süreci

1. `mobile/` altında kendi stack’ine özel klasörde çalış (örn: `flutter/`, `swiftui/`)
2. Görev almak için issue seç → altına yorum bırak
3. Branch oluştur: `feature/login-page`
4. Kodla → test et → ekran görüntüsü al → PR aç
5. Açıklayıcı commit mesajı + açıklama yaz (örn: "Login ekranı tasarlandı, auth servisi bağlandı")

---

## 📌 Ek Notlar

- Tüm UI’ler tasarımla karşılaştırılmalı. %100 pixel-perfect değilse bile oranlar ve genel yapı uyumlu olmalı.
- Tüm component'ler başka ekranda tekrar kullanılabilir şekilde yazılmalı.
- Linter kuralları uygulanmalı. Kod okunabilirliği korunmalı.

---

## ✅ Sonuç

Mobil geliştirme yalnızca ekran yapmak değildir.  
Bu projede:

- Kullanıcı akışı düşünülerek yapı kurulur  
- Reusable component mantığı benimsenir  
- UI tasarımı sistemsel okunur  
- Backend ile entegre ve test edilebilir bir yapı kurulur

> Kalıcı kod yaz, ekran üretme.  
> Sistem kur, tekrar kullan. 🔁
