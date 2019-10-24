echo 'Running TF serving as a daemon '
docker run -d --name $id tensorflow/serving
echo 'copy the SavedModel to the containers model folder '
echo docker cp /home/$USER/$package_name$id $id:/models/$package_name
docker cp /home/$USER/$package_name$id $id:/models/$package_name
echo "commiting the container that's serving the model by changing MODEL_NAME to match the model's name "
echo sudo docker commit --change ENV MODEL_NAME $package_name $id $package_name
docker commit --change "ENV MODEL_NAME $package_name" $id $package_name$id
docker kill $id
