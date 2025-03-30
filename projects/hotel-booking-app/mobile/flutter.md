# 📱 Flutter Yapısı – Hotel Booking App (MVVM + Modular)

Bu yapı, `Home` modülünü baz alarak MVVM yapısını `Cubit` ile birlikte uygular.  
Ayrıca `envied` ile güvenlik ve `easy_localization` ile çoklu dil desteği sağlanır.

---

# 🧱 MVVM Mimarisi

## Katmanlar:

- **Model** → Veri sınıfları ve dönüşümler  
- **View** → UI katmanı  
- **Cubit (ViewModel)** → State yönetimi, iş mantığı  
- **Widget** → Reusable bileşenler  

---

# 🗂️ Klasör Yapısı:


lib/
├── core/
│   ├── config/
│   ├── services/
│   ├── utils/
│   └── localization/
├── features/
│   └── home/
│       ├── model/
│       ├── cubit/
│       ├── view/
│       │   └── widget/
├── product/
│   ├── constants/           # Renkler, yazı tipleri, sabit değerler
│   │   ├── color_constants.dart    
│   │   ├── padding_constants.dart
│   │   └── text_constants.dart
│   ├── widgets/             # Ortak bileşenler
│   │   ├── custom_button.dart
│   │   └── loading_indicator.dart
│   ├── utils/               # Genel yardımcı fonksiyonlar
│   │   ├── validators.dart
│   │   └── date_formatter.dart
│   ├── extensions/          # Extension metodlar
│   │   ├── context_extension.dart
│   │   └── string_extension.dart
│   └── theme/               # Tema yönetimi
│       ├── app_theme.dart
│       └── light_theme.dart
├── main.dart
└── app.dart

---

# ✅ product/ Klasörünün Kullanım Amaçları

- Tüm modüllerde ortak kullanılacak **UI bileşenleri** buraya yazılır  
- `utils/` ile ortak **yardımcı metodlar** merkezi hale getirilir  
- `constants/` ile renk, padding, font gibi sabitler modüllerden ayrılır  
- `extensions/` ile Flutter'a özel işlevsellik genişletilir  
- `theme/` ile dark/light tema geçişi kolaylaşır

---

# 📦 Kullanılacak Paketler

dependencies:
  flutter:
    sdk: flutter

  # State Management
  flutter_bloc: ^8.1.3
  equatable: ^2.0.5

  # Navigation
  go_router: ^12.1.1

  # Localization
  easy_localization: ^3.0.3

  # Networking
  dio: ^5.3.2

  # Security & Environment
  envied: ^0.5.0
  envied_generator: ^0.5.0

dev_dependencies:
  flutter_test:
    sdk: flutter
  build_runner: ^2.4.6
  envied_generator: ^0.5.0
  integration_test:
    sdk: flutter

---

# 🌐 Localization Yapısı (easy_localization)

- `assets/translations/` klasörü oluştur.
- `en.json`, `tr.json` gibi dosyalar ekle.
- `MaterialApp` içine aşağıdaki yapı eklenmeli:

```dart
return EasyLocalization(
  supportedLocales: [Locale('en'), Locale('tr')],
  path: 'assets/translations',
  fallbackLocale: Locale('en'),
  child: MyApp(),
);
```

---

## 🔐 Güvenli Ortam Değişkenleri (envied)

.env dosyası yerine Envied kullanılır.
Aşağıdaki gibi .env değil, env.dart dosyası kullanılır:

```dart

import 'package:envied/envied.dart';

part 'env.g.dart';

@Envied(path: '.env')
abstract class Env {
  @EnviedField(varName: 'BASE_URL')
  static const String baseUrl = _Env.baseUrl;
}
```

---

## 🎯 Modül Kurulumu – home

features/home/ ├── cubit/
│ └── home_cubit.dart
├── model/
│ └── hotel_model.dart
├── view/
│ ├── home_view.dart
│ └── widget/
│ └── hotel_card.dart

---

## ✅ Örnek Akış

View → Cubit → API → Model → Cubit → View

Localization → easy_localization

Güvenli veri → envied

Navigation → go_router

---

## ✨ Ekstra

Responsive yapı için LayoutBuilder, MediaQuery, flutter_screenutil tercih edilebilir.

UI component'ları widget/ klasöründe ayrı tutulmalı.

Cubit'lerde sadece state ve veri akışı olmalı, business logic buraya taşınmamalı.

Bu yapı; modüler, güvenli, sürdürülebilir ve gerçek projelerde uygulanabilir bir temel sunar.
---

İstersen bu içeriği `.yaml`, `.md` veya `.txt` olarak çıktı haline getirebilirim.  
Hazırsan `home_cubit.dart`, `env.dart`, ya da örnek bir view dosyası oluşturarak devam edebiliriz.