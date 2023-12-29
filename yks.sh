#!/bin/bash

# Resmin indirileceği klasörü belirtin
download_folder="$(echo $HOME)"

# https://matematikdelisi.com/yks/sayac/images/tyt/tyt-sinavina-geri-sayim-kalan-gun-161.jpg
# Sayfanın HTML içeriğini çekin


# Hedef tarih
target_date="2024-06-08 10:15"

# Hedef tarihi saniyeye çevirin
target_epoch=$(date -d "$target_date" +"%s")

# Şu anki tarihi saniyeye çevirin
current_epoch=$(date +"%s")

# Kalan süreyi hesaplayın
remaining_seconds=$((target_epoch - current_epoch))
remaining_days=$((remaining_seconds / 86400))  # 1 gün = 86400 saniye


curl -o "$download_folder/image.jpg" "https://matematikdelisi.com/yks/sayac/images/tyt/tyt-sinavina-geri-sayim-kalan-gun-$remaining_days.jpg"

# Nitrogen ile duvar kağıdını ayarlayın
nitrogen --set-centered "$download_folder/image.jpg"
