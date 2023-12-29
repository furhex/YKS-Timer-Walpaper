# YKS-Timer-Walpaper
YKS sınavına kalan günü duvar kağıdı olarak ayarla 

## Gereksinimler
1. X11 Masaüstü ortamı
2. Curl
3. Nitrogen

## Çalıştırma

```bash
curl -o $(echo $HOME)/yks.sh https://raw.githubusercontent.com/Metincloup/YKS-Timer-Walpaper/main/yks.sh
chmod +x yks.sh
./yks.sh
```

## i3wm Otomasyon
Eğer i3wm kullanıyorsanız ve otomatik başlamasını istiyorsanız i3 config dosyasına şu komutu ekleyin

```bash
exec_always --no-startup-id bash $(echo $HOME)/yks.sh
```
