# 🏨 Hotel Booking App – Proje Tanımı

Bu proje, kullanıcıların mobil cihazları üzerinden otel arayabildiği, filtreleyebildiği, detaylarını görüntüleyip rezervasyon yapabildiği modern bir rezervasyon uygulamasını kapsamaktadır.

Amaç; hazır bir UI kit üzerinden ilerleyerek, bir uygulamanın fikirden ürüne dönüşme sürecini gerçek bir proje gibi deneyimlemektir.

---

## 🎯 Proje Hedefleri

- Gerçekçi bir otel rezervasyon uygulaması geliştirmek
- Tasarıma sadık kalarak kullanıcı deneyimi yüksek bir ürün ortaya koymak
- Mobil ve backend tarafını paralel götürerek ekip çalışması örneği oluşturmak
- Yeni geliştiricilere proje yönetimi, görev takibi ve açık kaynak geliştirme alışkanlıkları kazandırmak

---

## 🧩 Proje Özeti

- Kullanıcı onboarding & giriş/kayıt
- Otel listeleme ve filtreleme
- Otel detay sayfası
- Rezervasyon oluşturma
- Ödeme akışı (test ortamı)
- Profil yönetimi ve geçmiş rezervasyonlar

## ⏱️ Süre ve İş Gücü Tahmini

Bu proje uçtan uca tamamlanmak istendiğinde, tasarımdan yayına kadar birçok süreci içerir:

### Dahil Olan Adımlar
- Tasarım analiz ve bileşen planlama
- Mobil uygulama kurulumu, MVVM yapı, sayfa geliştirmeleri
- Backend kurulumu (Node.js veya Firebase), API endpoint geliştirmeleri
- Ortam değişkenleri, localizasyon, auth sistemi
- Test altyapısı (unit/widget/postman/firebase emulator)
- CI/CD pipeline kurulumu
- Dokümantasyon ve deploy

---

### 📊 Geliştirici Profiline Göre Tahmini Süre (Adam/Gün)

| Geliştirici Profili        | Mobil (Flutter) | Backend (Node.js/Firebase) | Ortak İşler (test, ci, dokümantasyon) | Toplam |
|----------------------------|------------------|-----------------------------|----------------------------------------|--------|
| 👨‍🎓 Öğrenci / Yeni Başlayan   | 50–60 gün         | 20–25 gün                    | 10–15 gün                               | **85–100 gün** |
| 👨‍💻 Deneyimli Geliştirici     | 15–20 gün         | 9–12 gün                     | 5–7 gün                                 | **30–40 gün**  |

> Bütçelerinizi adam gün çarpı asgari ücret olarak hesaplayabilirsiniz başlangıçta.
> Süreler full-time çalışmaya göredir. Part-time ilerlemede 2 kat süre alabilir.
> Ortak işler; test yazma, CI/CD entegrasyonu, dokümantasyon, refactor, task yönetimi gibi görevleri içerir.

---

### 🔄 Geliştirme Akışı Önerisi

1. 🎯 Tasarım inceleme & bileşen çıkarımı  
2. 📱 Mobil sayfa & navigasyon yapısı  
3. 💻 Backend (auth, db, booking sistemi)  
4. 🧪 Test ve validasyon  
5. 📦 Paketleme & pipeline kurulumu  
6. 📖 Dokümantasyon & teslim

---

📌 **Notlar:**
- Gerçek dünyada bu tarz proje MVP olarak 1–1.5 ayda çıkarılabilir.
- Test ve CI/CD süreçleri ihmal edilmemelidir.
- Bu planlama, “öğrenerek geliştiren” kişiler için optimize edilmiştir.

---

## 🔧 Genel Yapılacaklar (Framework bağımsız)

- [ ] Tasarım ekranlarının analizi
- [ ] Navigasyon akışı ve ekran sıralaması
- [ ] Sayfa arayüzlerinin kodlanması
- [ ] Otel verisinin modellenmesi
- [ ] Filtreleme ve sıralama mantığının kurulması
- [ ] Rezervasyon oluşturma sistemi
- [ ] Kimlik doğrulama (Login / Register / Şifre sıfırlama)
- [ ] Ödeme ekranı (mock / sandbox)
- [ ] Profil yönetimi
- [ ] Backend API uç noktaları ve testler
- [ ] Dokümantasyonların hazırlanması

---
## 📋 Görev Yönetimi (GitHub Issues)

Tüm görevler GitHub’daki **Issues** sekmesinden takip edilir.  
Her görev bir “Issue” olarak açılır ve aşağıdaki gibi yazılır:

#### Örnek Issue:

**Başlık:** Otel Listeleme Kartı UI  
**Açıklama:**
- Ekran: Figma - Screen #14
- Yapılacaklar:
  - Otel adı, fiyat, puan, görsel ve konum bilgisi gösterilecek
  - Responsive olmalı
- Zorluk: Orta
- Süre: 1 gün

---

## 🧠 Görev Alma ve Katkı Süreci

1. **Bir görev almak istiyorsan:**
   - İlgili issue altına "Bu görevi alıyorum" yorumunu yap.
   - Görev sana atanacak (veya kendi çatalladığın repoda sen almış sayılırsın).

2. **Branch oluştur:**
git checkout -b feature/otel-karti-ui

3. **Kod geliştir:**
- Küçük commit’lerle ilerle
- Açıklayıcı commit mesajları yaz:
  ```
  feat: otel kartı UI tasarlandı
  fix: kart padding hatası giderildi
  ```

4. **Pull Request (PR) oluştur:**
- Ana dala değil, proje içindeki ilgili dala PR aç.
- Açıklama kısmına:
  - Hangi issue’yu kapattığını belirt (`Closes #23`)
  - Ne yaptığını özetle
  - Ekran görüntüsü ya da test senaryosu varsa ekle

5. **Gözden geçirme (review) sonrası birleşme (merge)**  
- PR incelendikten sonra `main` ya da `develop` dalına alınır.
- Merge işlemi sonrası ilgili issue kapatılır.

---

## ⏱️ Önerilen Takvim

Bu proje 1 hafta içinde tamamlanabilir şekilde planlanmıştır.  
Kendi zamanına göre uyarlayabilirsin.

| Aşama                      | Süre     |
|---------------------------|----------|
| Tasarım analizi           | 1 gün    |
| Sayfa yapılarının çıkarılması | 1 gün |
| UI geliştirme             | 2 gün    |
| Backend model & API       | 1 gün    |
| Entegrasyon & test        | 1 gün    |
| Son düzenleme             | 1 gün    |

---

## 🔗 Figma Tasarımı

UI Kit: **Hotel Booking App – Olive Green**  
Figma Link: [Figma UI Kit](https://www.figma.com/file/XXXXXX)

---

Hazırsan bir issue seç, dalını oluştur ve katkı sağlamaya başla.  
Bu proje seni sadece kod yazmaya değil, birlikte üretmeye de alıştıracak. 🙌
