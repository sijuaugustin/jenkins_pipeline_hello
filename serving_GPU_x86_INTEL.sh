echo 'Running TF serving as a daemon '
sudo docker run -d --name $id tensorflow/serving:latest-gpu
echo 'copy the SavedModel to the containers model folder '
sudo docker cp /home/$USER/$package_name$id $id:/models/$package_name
echo "commiting the container that's serving the model by changing MODEL_NAME to match the model's name "
sudo docker commit --change "ENV MODEL_NAME $package_name" $id $package_name$id
sudo docker kill $id

