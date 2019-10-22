echo 'Pushing the model package to dockerhub '
echo ' "$DOCKER_PASSWORD" | sudo docker login -u "$DOCKER_USERNAME" --password-stdin'
sudo docker tag $package_name$id $DOCKER_USERNAME/$DOCKER_REPO:$package_name$id
sudo docker push aimarketplace/models:$package_name$id