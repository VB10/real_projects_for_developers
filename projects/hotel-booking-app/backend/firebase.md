# 🔥 Firebase ile Geliştirme – Hotel Booking App

# Bu doküman, Firebase kullanılarak hem mobil hem de sunucusuz backend geliştirmenin nasıl yapılacağını açıklar.

---

# 🌐 Backend (Firebase Functions)

firebase/
  functions/             # Express.js tabanlı Cloud Functions
  firebase.json          # Emulator & deploy ayarları
  .firebaserc            # Firebase proje bağlantısı
  firestore.rules        # Güvenlik kuralları
  firestore.indexes.json # İndeks ayarları

Kullanılan modüller:
  - Firebase Authentication
  - Cloud Firestore
  - Cloud Functions
  - Firebase Storage
  - Firebase Hosting (opsiyonel)

---

# ⚙️ Firebase Emulator Kurulumu

adımlar:
  - Firebase CLI kurulumu: `npm install -g firebase-tools`
  - Firebase login: `firebase login`
  - Emulator kurulumu: `firebase init emulators`
  - Başlat: `firebase emulators:start`

çalışma portları:
  Firestore: http://localhost:8080
  Auth: http://localhost:9099
  Functions: http://localhost:5001
  Emulator UI: http://localhost:4000

---

# 📱 Flutter ile Firebase

flutter_packages:
  - firebase_core
  - firebase_auth
  - cloud_firestore
  - firebase_storage
  - firebase_messaging
  - flutter_local_notifications

kurulum_adımları:
  1. Firebase Console’da uygulama oluştur
  2. `google-services.json` ve `GoogleService-Info.plist` ekle
  3. `Firebase.initializeApp()` çağır
  4. Gerekirse emulator bağlantısı ekle

---

# 🛠️ Flutter Emulator Bağlantısı

dev_mode_init:
  firestore: `FirebaseFirestore.instance.useFirestoreEmulator('localhost', 8080)`
  auth: `FirebaseAuth.instance.useAuthEmulator('localhost', 9099)`

uyarı:
  - Sadece `kDebugMode` içinde kullanılmalı
  - Production ortamda devre dışı bırakılmalı

---

# 🔐 Güvenlik Kuralları

firestore.rules:
  rules_version: '2'
  service: cloud.firestore
  match: /databases/{database}/documents
  izinler:
    bookings:
      read: request.auth != null
      write: request.auth != null

---

# ✅ Sonuç

özellikler:
  - Firebase ile backend kodsuz yazılabilir
  - Gerçek zamanlı veri yönetimi mümkündür
  - Mobil + backend tek merkezden yönetilir
  - Emulator ile yerel geliştirme/test yapılabilir

not: Firebase MVP projeler ve hızlı geliştirme süreçleri için idealdir.
