echo 'deleteing unwanted files '
cd /home/$USER/$p
rm -rf /home/$USER/$package_name$id
docker rmi $DOCKER_USERNAME/$DOCKER_REPO:$package_name$id
docker rmi $package_name$id:latest




