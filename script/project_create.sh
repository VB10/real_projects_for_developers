#!/bin/bash

echo "Yeni proje adını giriniz:"
read project_name

# Ana klasör altına projeler klasörünü ve proje klasörünü oluştur
mkdir -p projects/"$project_name"/figma-assets
cd projects/"$project_name" || exit

# Dosyaları oluştur
touch README.md project.md mobile.md backend.md devops.md design.md

# README.md içine örnek içerik yaz
cat <<EOF > README.md
# 📱 $project_name Projesi

Bu klasör **$project_name** projesine aittir.

İlgili belgeler:
- 📘 project.md – Genel proje açıklaması
- 📱 mobile.md – Mobil uygulama geliştirme detayları
- 🖥️ backend.md – Backend mimarisi ve görevleri
- ⚙️ devops.md – Deployment, CI/CD, çevresel değişkenler
- 🎨 design.md – Tasarım sistemi, UI kit notları, Figma bağlantısı

Ana dil: Türkçe 🇹🇷
EOF

echo "✅ $project_name projesi başarıyla oluşturuldu."
