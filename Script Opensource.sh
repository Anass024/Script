#!echo "Het script wordt uitgevoerd in de nextcloud omgeving "
a=0
echo "Welke webserver wil je?
- Apache
- Nginx
- Openlitespeed"
while [ $a = 0 ]
do
read webserver
if [ $webserver = "Nginx" ]
then
zypper install nginx
elif [ $webserver = "python-zope.interface" ]
then
zypper install Openlitespeed
elif [ $webserver = "Apache" ]
then
zypper install apache2
else
echo "Er is geen webserver geinstalleerd."
fi
echo "Zou je de phpmodules willen installeren?"
read phpmodules
if [ $phpmodules = "Ja" ]
then
zypper install php7-ctype php7-curl
fi
echo "Wil je het script opnieuw laden?"
sed '/home/Users/Anass/opensource/Script Opensource.sh'

read a

done
