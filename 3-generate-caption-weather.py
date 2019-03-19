
import os

os.system("weather-util 01234 --imperial --forecast --no-conditions --quiet > report.txt")

with open("report.txt", "r") as weather:
    report = weather.read()

report = report.replace('\n',' ')
report = report.split('.SATURDAY.')[1]
report = report.split('.MONDAY.')[0]

SATURDAY = report.split('.SATURDAY NIGHT')[0]
SATURDAYNIGHT = report.split('.SATURDAY NIGHT')[1].split('.SUNDAY')[0]
SUNDAY = report.split('.SUNDAY')[1].split('.SUNDAY NIGHT')[0]
SUNDAYNIGHT = report.split('.SUNDAY NIGHT')[1]

message = 'Get excited for the weekend!'+'\n\n'+'SATURDAY'+SATURDAY+'\n\n'+'SATURDAY NIGHT'+SATURDAYNIGHT+'\n\n'+'SUNDAY'+SUNDAY+'\n\n'+'SUNDAY NIGHT'+SUNDAYNIGHT

message = message.replace('...',' - ')
print(message)

with open("caption.txt", "w") as caption:
    caption.write(message)

