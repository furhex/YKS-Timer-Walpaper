#!/bin/bash

# Hedef tarih
target_date="2024-06-08 10:15"

# Hedef tarihi saniyeye çevirin
target_epoch=$(date -d "$target_date" +"%s")

# Şu anki tarihi saniyeye çevirin
current_epoch=$(date +"%s")

# Kalan süreyi hesaplayın
remaining_seconds=$((target_epoch - current_epoch))
remaining_days=$((remaining_seconds / 86400))  # 1 gün = 86400 saniye

python3 script.py "$remaining_days"

if [ $(echo $DESKTOP_SESSION) = 'xfce' ]; then
# xfce için duvar kağıdını ayarlayın
	xfconf-query -c xfce4-desktop -p $(xfconf-query -c xfce4-desktop -l | grep "workspace0/last-image") -s "wallpaper.png"
else
# feh ile duvar kağıdını ayarlayın
feh --bg-scale "wallpaper.png"
fi
