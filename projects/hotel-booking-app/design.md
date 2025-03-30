# 🎨 Tasarım Rehberi – Hotel Booking App

Bu doküman, UI Kit'in nasıl kullanılacağı, tasarımı nasıl doğru okuyup yazılıma aktaracağınız ve Figma üzerindeki önemli kuralları içerir.

---

## 🔗 Figma Tasarımı

- **Figma URL:**  
  [Hotel Booking App – Olive Green UI Kit](https://www.figma.com/community/file/1275146473633828854)

---

## 🖌️ Design System'deki Yapılar

### 🎨 Renk Paleti

- **Primary:** Ana renk grubu (butonlar, öne çıkan alanlar)
- **Secondary:** Yardımcı renk grubu (border, ikon, accent)
- **Tertiary:** Daha yumuşak tonlar (arka planlar, etiketler)
- **Greys / Black / White:** Arayüz dengesi için ideal zemin ve yazı tonları

> Renklerin hex değerlerini Figma’dan alırken `Inspect` sekmesini kullan.  
> UI içinde aynı tonun %10–90 varyantları tercih edilmiş → **opacity ile değil, ayrı renk olarak kodla.**

---

### 🔡 Tipografi Sistemi

- Header 1 → Ekran başlığı
- Header 2 → Sekme başlığı, detay sayfası başlığı
- Body 1 → Paragraflar
- Caption → Yardımcı bilgiler (örnek: “giriş yapmak üzeresiniz”)

> Font stilleri arasında line-height, font-weight farkları var. Bunları mutlaka stil dosyasına yansıt.

---

### 🧿 Icon Kullanımı

- **Kategorilere ayrılmış:** Money, Media, UI, Crypto, Navigation vs.
- **Tavsiye edilen format:** `SVG` (vector olarak ölçeklenebilir)

#### 📤 Export Etme:

1. İkona tıkla → Sağ panelde `Export` alanını aç.
2. Format olarak **SVG** seç → “Export [icon name]”
3. Uygulamanın `assets/icons/` klasörüne yerleştir.
4. Kod tarafında asset yönlendirmesi yapılmalı.  
   > Örnek: `Image.asset('assets/icons/search.svg')`

---

### 🔲 Butonlar & Inputlar

- 4 tip buton: düz, ikonlu, sadece ikon, disabled
- Textbox ve dropdown bileşenleri hazır durumda
- Yazı boyutları, padding ve corner-radius değerleriyle birlikte tanımlanmış

> UI geliştirirken bu komponentleri parçala:
- `Button` → atom
- `TextInputWithLabel` → molecule
- `SearchBar` → organism

---

## ⚙️ iOS System Default Rehberi

UI Kit içerisinde yer alan bazı ekranlar **iOS native davranışları** için örneklenmiştir.  
Bunları incelerken:

- Navigation yapısına dikkat et (sol/orta/sağ bölge)
- Segment, checkbox, radio, switch bileşenlerini iOS’a uygun stillerle kodla
- iOS keyboard ve emoji UI’leri referans amaçlıdır

---

## 🧠 Tasarımı Kodlarken Dikkat Etmen Gerekenler

✅ **Pixel-perfect takıntısına gerek yok** – önemli olan uyumlu görünüm  
✅ Auto layout → padding/margin değerlerini öğrenmek için  
✅ Font büyüklüğü ve ağırlığı → responsive stil sistemi kurarken belirleyici  
✅ Komponentlerin tek tek değil, gruplar halinde yazılması (design-to-code disiplini)  
✅ Renk, ikon, yazı stilleri `constants.dart` veya `theme.ts` gibi tek merkezden tanımlanmalı  
✅ Görseller `2x`, `3x` gibi retina destekli boyutlarla eklenmeli

---

## 🔨 Geliştirici Notları

- Her bileşen için “reusable” düşün: `HotelCard`, `RatingStars`, `FilterTag` gibi
- Layout kurarken spacing değerlerine dikkat et (Figma'daki spacing’ler önemli!)
- SVG ikonları component gibi çağır → PNG kullanma
- UI ekranları test edilirken tasarımla görsel karşılaştırma yapılmalı

---

## ✅ Özet

Figma sadece tasarım dosyası değil, **geliştirme sözleşmesidir.**

- Anlamadan kopyalama
- Parçala ve gruplandır
- Kod tarafında sistemli bir yapı kur
- Her şeyin kaynağı Figma'dır → iyi okuyarak geliştir

