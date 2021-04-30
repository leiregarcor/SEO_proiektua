 sudo rm -R /var/www/foroak/
sudo rm /etc/apache2/sites-available/phpbb3.conf 
 sudo rm -R phpBB-3.3.3.zip 
sudo rm -R phpBB3/
sudo rm /etc/apache2/sites-enabled/phpbb3.conf 
sudo sed -i 's/Listen 8080/ /' /etc/apache2/ports.conf
