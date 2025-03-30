# 🏨 Hotel Booking Uygulaması – Backend (Node.js)

Bu belge, hotel booking uygulamasının backend tarafını Node.js kullanarak geliştirmek isteyen geliştiriciler için hazırlanmıştır. Amacımız; modüler, güvenli, genişletilebilir ve test edilebilir bir yapı kurmaktır.

---

## 📁 Dosya Yapısı

hotel-backend/
├── src/
│   ├── config/             → ortam ve db ayarları
│   ├── controllers/        → endpoint fonksiyonları
│   ├── models/             → MongoDB şemaları
│   ├── routes/             → endpoint tanımlamaları
│   ├── services/           → business logic
│   ├── middlewares/        → auth, error handler, validation
│   └── utils/              → yardımcı fonksiyonlar
├── tests/                  → birim ve entegrasyon testleri
├── .gitignore
├── server.js
└── package.json

---

## 📦 Kullanılacak Paketler

npm install express mongoose dotenv cors bcryptjs jsonwebtoken joi  
npm install --save-dev nodemon jest supertest

---

## 🧠 Modüller ve Görevleri

| Modül      | Açıklama                            |
|------------|-------------------------------------|
| User       | Kayıt, giriş, kullanıcı bilgileri   |
| Hotel      | Otel bilgileri, açıklamalar, konum  |
| Booking    | Rezervasyon işlemleri               |
| Auth       | Giriş / yetkilendirme               |
| Payment    | (Mock) ödeme süreci                 |

---

## ✅ Geliştirme Adımları

1. Proje klasörü oluştur:
mkdir hotel-backend && cd hotel-backend  
npm init -y

2. Express ve MongoDB setup:
- server.js içine Express başlangıç kodunu yaz
- src/config/db.js dosyasında mongoose bağlantısını tanımla

3. User ve Hotel modellerini oluştur (src/models/)
4. RESTful route'ları src/routes/ içinde tanımla
5. JWT tabanlı auth yapısını kur (middleware + login route)
6. Validation için joi kullan (örnek: kullanıcı girişi)
7. Test için jest ve supertest yapılandır

---

## 🧾 Örnek Model: User (MongoDB)

const mongoose = require('mongoose');

const UserSchema = new mongoose.Schema({
  name: String,
  email: { type: String, unique: true },
  password: String,
  role: { type: String, default: 'user' }
}, { timestamps: true });

module.exports = mongoose.model('User', UserSchema);

---

## 📌 API Yapısı (Örnek)

| Endpoint             | Method | Açıklama                        |
|----------------------|--------|---------------------------------|
| /api/auth/register   | POST   | Kullanıcı kaydı                 |
| /api/auth/login      | POST   | Giriş yap                       |
| /api/hotels          | GET    | Tüm otelleri getir              |
| /api/hotels/:id      | GET    | Belirli bir otelin detayını getir |
| /api/bookings        | POST   | Yeni rezervasyon oluştur        |
| /api/bookings/me     | GET    | Kullanıcının rezervasyonlarını getir |

---

## 🚀 Projeyi Çalıştırma

1. .env dosyası oluştur, gerekli ortam değişkenlerini gir (PORT, MONGO_URI, JWT_SECRET)  
2. Geliştirme ortamı için:
npm run dev

3. Test için:
npm run test

---

## 🧪 Test Senaryoları

- Kullanıcı kayıt oluyor mu?
- Giriş sonrası JWT dönüyor mu?
- Rezervasyon yapmadan giriş gerekiyor mu?
- Otel detayları dönüyor mu?
- Aynı tarihe çift rezervasyon engelleniyor mu?

---

## 🛡️ Güvenlik Notları

- Şifreler bcrypt ile hashlenmeli
- JWT süresi ve doğrulama kontrol edilmeli
- CORS ve Rate Limit uygulanmalı
- Mongo Injection önlenmeli
- Hassas veriler loglara düşmemeli

---

## ✅ Sonuç

- Gerçek projeye uygun, modüler ve güvenli yapı sağlanır.
- Mobil veya web frontend kolayca entegre edilebilir.
- Test, auth, validation, route ve model yapısı hazırdır.

> Backend sadece kod değil, sürdürülebilir bir sistemdir.