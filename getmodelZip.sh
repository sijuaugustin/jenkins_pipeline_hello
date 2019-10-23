echo 'creating model package folder for serving '
mkdir -p /home/$USER/$package_name$id/1
wget -P /home/$USER/$package_name$id/1 $url
cd /home/$USER/$package_name$id/1
unzip  \*.zip
rm *.zip
