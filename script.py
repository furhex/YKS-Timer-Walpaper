import sys
from PIL import Image, ImageDraw, ImageFont
import os

script_dizini = os.path.dirname(os.path.realpath(__file__))
font_path = os.path.join(script_dizini, "Roboto-Bold.ttf") #font

# Terminalden girilen metni al
metin = " ".join(sys.argv[1:])  # İlk argümanı almadık çünkü o scriptin adı olacak
# ekran boyutu
width = 1920
height = 1080
color = (9, 93, 155)  # RGB renk kodu
image = Image.new("RGB", (width, height), color)
metin = "Sınava "+ metin + " gün kaldı."
# Metni görsele ekle
draw = ImageDraw.Draw(image)
font_size = 100 
font = ImageFont.truetype(font_path, font_size)
text_width, text_height = draw.textsize(metin, font=font)
text_position = ((width - text_width) // 2, (height - text_height) // 2)
draw.text(text_position, metin, fill=(255, 255, 255), font=font)

# Görseli kaydet
image.save("wallpaper.png")
