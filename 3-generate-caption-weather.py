
import os

os.system("weather-util zip-code --imperial -a > report.txt")

with open("report.txt", "r") as weather:
    report = weather.readlines()

location    = report[0]
datetime    = report[1]
temperature = report[2].split(": ")[1].replace('\n','')
humidity    = report[3].split(": ")[1].replace('\n','')
wind        = report[4].split(": ")[1].replace('\n','')
windchill   = report[5].split(": ")[1].replace('\n','')
condition   = report[6].split(": ")[1].replace('\n','')
alerts      = report[7].replace('\n','')

message = "Chilly " + temperature + " with " + humidity + " humidity. " + "Wind " + wind + ". " + "Weather is " +condition + "."

with open("caption.txt", "w") as caption:
    caption.write(message)

