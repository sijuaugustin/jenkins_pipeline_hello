echo 'Running TF serving as a daemon '
sudo docker run -d --name ${params.id} tensorflow/serving
echo 'copy the SavedModel to the containers model folder '
sudo docker cp /home/$USER/${params.package_name} ${params.id}:/models/${params.package_name}
echo "commiting the container that's serving the model by changing MODEL_NAME to match the model's name "
sudo docker commit --change 'ENV MODEL_NAME ${params.package_name}' ${params.id} ${params.package_name}
sudo docker kill ${params.id}