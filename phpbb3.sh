#PHPBB3 instalatu eta konfiguratzeko:
#-----------------------------------#
#-----------------------------------#

#PHPBB3 zip fitxategia deskargatu eta deskonprimatu
wget https://download.phpbb.com/pub/release/3.3/3.3.3/phpBB-3.3.3.zip 
unzip phpBB-3.3.3.zip
#/var/www/ direktorioan "foroak" karpeta sortu eta bertara mugitu phpBB3-ko fitxategi guztiak
sudo mkdir /var/www/foroak
sudo mv phpBB3/* /var/www/foroak/

#Ondoren, apache konfiguratu beharko dugu localhost:8080 nabigatzailean jartzean phpBB3 orria ateratzeko.

#konfigurazio fitxategia sortu
sudo cp /etc/apache2/sites-available/000-default.conf /etc/apache2/sites-available/phpbb3.conf
#editatu--> sed komandoarekin, substitute egiteko.
sudo sed -i 's/:80>/:8080>/' phpbb3.conf #80 portua  zegoen tokian ,8080 jarriko dugu

sudo sed -i 's/html/foroak/' phpbb3.conf

#ez dut lortzen textu hori phpbb3.conf fitxategian sartzea.
echo "<Directory /var/www/foroak> Options Indexes FollowSymLinks MultiViews AllowOverride All Order allow,deny allow from all </Directory>" | sed 's

