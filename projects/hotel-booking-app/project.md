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

---

## 📁 Klasör Yapısı

hotel-app/ 
├── project.md → Bu dosya – proje tanımı ve kapsam 
├── mobile/ → Mobil geliştirme (flutter, swift, vs.)
├── backend/ → Backend geliştirme (node, supabase, vs.) 
├── devops.md → CI/CD, ortam yönetimi
├── design.md → Renk paleti, yazı stilleri, komponent notları

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
