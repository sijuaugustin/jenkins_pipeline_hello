echo 'Running TF serving as a daemon '
sudo docker run -d --name $id emacski/tensorflow-serving
echo 'copy the SavedModel to the containers model folder '
echo docker cp /home/$USER/$package_name$id $id:/models/model
sudo docker cp /home/$USER/$package_name$id $id:/models/model
echo "commiting the container that's serving the model by changing MODEL_NAME to match the model's name "
echo sudo docker commit --change ENV MODEL_NAME models $id $package_name
sudo docker commit $id $package_name$id
sudo docker kill $id
