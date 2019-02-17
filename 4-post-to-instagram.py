
with open("caption.txt") as caption:
    text = caption.read()

exec("instapy -u username -p password -f photo.jpg -t '" + text +"'")
