# ⚙️ DevOps Rehberi – Hotel Booking App

Bu doküman, Hotel Booking App gibi tüm projelerde sürdürülebilir, güvenli ve hızlı geliştirilebilir bir sistem altyapısı oluşturmak için rehber olarak hazırlanmıştır. Amacımız; tüm geliştiricilerin kurulumdan dağıtıma kadar aynı yapıda ilerlemesini sağlamak ve CI/CD süreçlerini standartlaştırmaktır.

---

## 🚀 CI/CD Süreci (En Önemli Katman)

### Neden Önemli?

- Ortam farklarını ortadan kaldırır  
- Otomatik test, build ve dağıtım sağlar  
- Zaman kazandırır, hata oranını azaltır  
- Herkes için aynı kurulum ve dağıtım tecrübesini sunar  

---

### 📦 Backend için CI/CD

#### Kullanılabilecek Araçlar
- **GitHub Actions:** Otomatik test, build, deploy süreci için
- **Render / Railway / Fly.io / Heroku:** Otomatik deploy ortamları
- **Docker:** Ortamları izole etmek ve taşıması kolay hale getirmek için

#### Önerilen Akış

1. Pull Request açıldığında otomatik testler çalışır
2. Merge sonrası:
   - Build alınır
   - Staging ortamına deploy edilir
   - Tag veya release sonrası production ortamına otomatik geçiş yapılır

#### Build Çıktısı
- `dist/`, `build/`, `out/` klasörlerine veya Docker image olarak hazırlanır
- Deploy çıktısı Render, Railway gibi ortamlara aktarılır

---

### 📱 Mobile için CI/CD

#### Kullanılabilecek Araçlar
- **GitHub Actions** (her platform için destek sağlar)
- **Fastlane:** Android (.apk) & iOS (.ipa) build alma ve dağıtım işlemleri
- **Firebase App Distribution / TestFlight:** Test kullanıcılarına dağıtım için

#### Önerilen Akış

1. PR merge edilince:
   - Versiyon güncellenir (örn: Fastlane `bump`)
   - Android/iOS için release build alınır
   - TestFlight (iOS) veya Firebase (Android) üzerinden dağıtım yapılır

#### Build Çıktısı
- Android: `build/app/outputs/flutter-apk/app-release.apk`
- iOS: `build/ios/ipa/app-release.ipa`

---

## 📦 Ortak İlkeler

- Ortamlar ayrılmış olmalı: development / staging / production
- CI/CD pipeline dosyaları `.github/workflows/` klasöründe tanımlanmalı
- Her değişiklikte otomatik test ve build akışı çalışmalı
- Build’ler versiyonlanmalı ve otomatik olarak dağıtılmalı

---

## 🔐 Güvenlik Kuralları

- API anahtarları, şifreler, token’lar **asla kodda tutulmamalıdır**
- Ortam yapılandırmaları gizli kalmalıdır
- Loglar anonimleştirilmeli, hassas veri içermemeli
- Mobil tarafta güvenli depolama (Keychain, EncryptedStorage) kullanılmalı
- Backend tarafında rate limit, CORS ve input validation kuralları aktif olmalıdır

---


## 📂 Dosya Yapısı Önerisi

hotel-app/  
├── backend/  
│   ├── .env.example  
│   ├── docker-compose.yml  
│   └── ...  
├── mobile/  
│   ├── .env.example  
│   ├── flutter/  
│   └── ...  
└── .github/  
    └── workflows/  
        └── ci.yml

---

## ✅ Sonuç

- Projeye dahil olan herkes kolayca geliştirmeye başlayabilir
- CI/CD sayesinde üretim süreci otomatikleşir
- Güvenlik ve ortam tutarlılığı sağlanır
- Build, test ve dağıtım hataları en aza iner

> Gerçek bir proje, sadece çalışan kod değil; aynı zamanda herkesin kurup dağıtabildiği bir sistemdir.
