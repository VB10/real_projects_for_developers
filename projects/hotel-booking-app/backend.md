# 🖥️ Backend Geliştirme – Hotel Booking App

Bu proje için backend tarafı, aşağıdaki temel işlevleri yerine getirecek şekilde yapılandırılacaktır.  
Herhangi bir backend teknolojisi kullanılabilir (Node.js, Django, Supabase, vb.)  
Burada önemli olan: **veri modelini anlamak**, **API yapısını kurmak**, ve **frontend ile entegrasyonu netleştirmektir.**

---

## 🎯 Backend Görevleri (Framework Bağımsız)

- [ ] Kullanıcı kimlik doğrulama (kayıt, giriş, şifre sıfırlama)
- [ ] Otel verisinin listelenmesi ve filtrelenmesi
- [ ] Otel detay verisinin sunulması
- [ ] Rezervasyon oluşturma işlemi
- [ ] Rezervasyon geçmişi ve kullanıcı profili
- [ ] Ödeme (mock/sandbox entegrasyonu)
- [ ] Admin yetkisi ile yeni otel ekleme (opsiyonel)
- [ ] API güvenliği, rate limit, veri doğrulama

---

## 🗂️ Veri Modelleri (Entity'ler)

Aşağıdaki veri yapıları backend tarafında mutlaka tanımlanmalı:

### 👤 `User`
| Alan            | Tip       | Açıklama                |
|-----------------|-----------|-------------------------|
| id              | string    | UUID                    |
| name            | string    |                         |
| email           | string    | unique                  |
| password_hash   | string    | şifrelenmiş             |
| role            | string    | "user" / "admin"        |

---

### 🏨 `Hotel`
| Alan            | Tip       | Açıklama                |
|-----------------|-----------|-------------------------|
| id              | string    | UUID                    |
| name            | string    |                         |
| description     | string    |                         |
| location        | string    |                         |
| image_url       | string    |                         |
| price_per_night | number    |                         |
| rating          | float     | 1–5 arası               |
| features        | string[]  | Havuz, Wi-Fi, Park vb.  |

---

### 📅 `Reservation`
| Alan            | Tip       | Açıklama                |
|-----------------|-----------|-------------------------|
| id              | string    | UUID                    |
| user_id         | string    | foreign key (User)      |
| hotel_id        | string    | foreign key (Hotel)     |
| check_in_date   | date      |                         |
| check_out_date  | date      |                         |
| guest_count     | number    |                         |
| total_price     | number    |                         |
| status          | string    | "pending", "paid"       |

---

## 📡 Önerilen API Endpoint'leri

| Method | Endpoint                  | Açıklama                          |
|--------|---------------------------|-----------------------------------|
| POST   | `/auth/register`          | Kayıt                             |
| POST   | `/auth/login`             | Giriş                             |
| GET    | `/hotels`                 | Tüm otelleri getir                |
| GET    | `/hotels/:id`             | Belirli oteli getir               |
| GET    | `/hotels?location=...`    | Konuma göre filtreleme            |
| POST   | `/reservations`           | Yeni rezervasyon oluştur          |
| GET    | `/reservations/me`        | Kullanıcının rezervasyon geçmişi  |
| POST   | `/payments/mock`          | (Mock ödeme entegrasyonu)         |

> ⚠️ Auth işlemleri için JWT önerilir. API'lere erişim kontrolü `middleware` ile yapılmalıdır.

---

## 🧱 Altyapıyı Kurmak İçin Gerekli Adımlar

Aşağıdaki görevler backend tarafının ilk kurulumunu yapabilmek için gereklidir. Bu görevler teknoloji bağımsızdır (Node.js, Django, Supabase vb. tüm stack’lere uyarlanabilir).

### 📁 Proje Yapısı ve Organizasyon
- [ ] `backend/` altında kendi framework klasörünü oluştur (örn: `nodejs`, `django`, `supabase`)
- [ ] API dokümantasyonunu yazacağın `README.md` dosyasını bu klasöre ekle
- [ ] Ortak kullanılabilecek mock verileri, seed dosyalarını `mock/` klasörüne ekle
- [ ] Ortam değişkenleri için `.env.example` dosyası oluştur (şifreleme, DB, API key vs.)

### 🔐 Kimlik Doğrulama
- [ ] `register`, `login`, `logout` endpoint’lerini oluştur
- [ ] JWT veya oturum (session) yönetimiyle authentication sistemini kur
- [ ] Şifre sıfırlama endpoint’i ekle (email / sms opsiyonel)
- [ ] Parola saklama için hashing yöntemi kullan (örn: bcrypt, argon2)

### 🏨 Otel Yönetimi API'si
- [ ] Otel CRUD (admin için) endpoint’lerini oluştur
- [ ] Otelleri listeleyen genel `GET /hotels` endpoint’ini yaz
- [ ] Otel filtreleme (konum, fiyat, tarih aralığı) için query parametre desteği ekle
- [ ] Otel detayını getiren `GET /hotels/:id` endpoint’ini yaz

### 📅 Rezervasyon Yönetimi
- [ ] `POST /reservations` endpoint’i ile rezervasyon oluştur
- [ ] `GET /reservations/me` endpoint’i ile kullanıcı geçmiş rezervasyonları getir
- [ ] Tarih çakışmalarına karşı kontrol ekle (check-in / check-out aralığı)

### 💳 Ödeme (Mock)
- [ ] `POST /payments/mock` endpoint’i oluştur
- [ ] Gerçek ödeme API’sine geçmeden önce mock ödeme işlemi simüle et
- [ ] Rezervasyonun ödeme durumunu güncelle (örn: "pending" → "paid")

### 🧪 Test ve Geliştirici Araçları
- [ ] Postman Collection hazırla ve repo ile birlikte paylaş
- [ ] Mock veri üretmek için `faker`, `seed script` gibi bir yapı kur
- [ ] Swagger / Redoc gibi araçlarla otomatik API dokümantasyonu oluştur (isteğe bağlı)

### 🛡️ Güvenlik ve Erişim Kontrolü
- [ ] JWT doğrulama middleware’i oluştur
- [ ] Role-based access (örneğin "admin" rolü) kontrolü ekle
- [ ] Tüm girişler için input validation kur (örnek: `Joi`, `Zod`, `Pydantic`)
- [ ] Rate limiting ve CORS yapılandırmasını ekle

### 📦 Dağıtım (devops.md ile bağlantılı)
- [ ] `.env` dosyasındaki değişkenleri `devops.md` içinde açıklamak üzere hazırla
- [ ] Dockerfile ya da basit deploy yönergeleri ekle (isteğe bağlı)
- [ ] `dev` ve `production` ortamlarını ayırt eden yapı kur

---

Bu görevler tamamlandığında backend sistemin temel olarak ayağa kalkmış olacaktır.  
İlerleyen aşamalarda loglama, hata yönetimi, CI/CD ve metrik toplama gibi ek görevler `devops.md` içerisinde detaylandırılabilir.

---

## 🔐 Güvenlik & Doğrulama

- [ ] JWT tabanlı authentication
- [ ] Role-based authorization (`user` vs `admin`)
- [ ] Rate limiting (örneğin 100 istek/saat)
- [ ] Input validation (örneğin `Joi`, `Zod`, `Pydantic` gibi yapılarla)

---

## 🧪 Test & Mock Data

- [ ] Oteller için mock veri üret (`faker` kullanabilirsin)
- [ ] Postman Collection hazırlanmalı
- [ ] API testleri yapılmalı (unit & integration)

---

## 📋 Katılım Rehberi (Backend Geliştiriciler İçin)

1. `backend/` klasöründe kendi stack'ine göre bir alt klasör oluştur. Örneğin:
backend/ 
└── nodejs/ 

2. Issue üzerinden görev al.
3. Geliştirme yaparken:
- Kodun içine `README` veya `docs/` klasöründe açıklayıcı dökümantasyon yaz.
- Swagger / Postman ile API'yi test edilebilir bırak.
4. PR açarken, yaptığın işi ve test yöntemini açıkla.
5. Gerekiyorsa deploy süreci için `devops.md`'e not ekle.

---

## 🧠 Bonus Öneriler

- Otel arama özelliği için MongoDB’de `text index`, PostgreSQL’de `ILIKE` gibi yapılar kullanılabilir.
- Fiyat filtreleri için min-max sorgulara dikkat et.
- Her yeni otel/rezervasyon eklemesinde zaman damgası eklenmeli (`created_at`, `updated_at`).

---

## ✅ Sonuç

Backend tarafı, projenin veri yönetimi ve iş mantığı kısmını üstlenir.  
Güçlü bir API sistemi, mobil geliştiricinin işini kolaylaştırır.  
Bu nedenle:

- CRUD’dan fazlasını düşün  
- Temiz ve test edilebilir kod yaz  
- Güvenlik, esneklik ve performans konularına özen göster

Hazırsan bir görev seç, alt klasörünü oluştur ve kodlamaya başla. 🚀
