echo 'Pushing the model package to dockerhub '
echo ' "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin'
docker tag $package_name$id $DOCKER_USERNAME/$DOCKER_REPO:$package_name$id
docker push aimarketplace/models:$package_name$id