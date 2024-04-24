# YKS-Timer-Walpaper
YKS sınavına kalan günü duvar kağıdı olarak ayarla 

## Gereksinimler
1. X11 Masaüstü ortamı
2. curl
3. feh

## Çalıştırma

```bash
curl -L -o yks_timer.zip https://github.com/furhex/YKS-Timer-Walpaper/archive/refs/heads/main.zip
```
```bash
unzip yks_timer.zip
```
```bash
cd YKS-Timer-Walpaper-main/
```
```bash
chmod +x yks.sh
```
## i3wm Otomasyon
Eğer i3wm kullanıyorsanız ve otomatik başlamasını istiyorsanız i3 config dosyasına şu komutu ekleyin
```bash
nano .config/i3/config
```
```bash
exec_always --no-startup-id bash $(echo $HOME)/YKS-Timer-Walpaper-main/yks.sh
```
![image](https://github.com/furhex/YKS-Timer-Walpaper/blob/main/screnshot.png?raw=true)
