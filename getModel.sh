echo 'creating model package folder for serving '
sudo mkdir -p /home/$USER/${params.package_name}/1
sudo wget -P /home/$USER/${params.package_name}/1 ${params.url}
