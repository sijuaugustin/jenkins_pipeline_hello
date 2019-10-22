echo 'deleteing unwanted files '
cd /home/$USER/$p
sudo rm -rf /home/$USER/$package_name$id
sudo docker rmi $DOCKER_USERNAME/DOCKER_REPO:$package_name$id
sudo docker rmi $package_name$id:latest




