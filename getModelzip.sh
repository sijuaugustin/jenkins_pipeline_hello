echo 'creating model package folder for serving '
sudo mkdir -p /home/$USER/$package_name/1
sudo wget -P /home/$USER/$package_name/1 $url
cd /home/$USER/$package_name/1
sudo unzip  \*.zip
sudo rm *.zip
