echo 'Downloading Model files '
cd /home/hrisheekesh/Workspace
sudo mkdir ${params.package_name}
cd ${params.package_name}
sudo mkdir 1
cd 1
sudo wget -P ${params._id} -O saved_model.pb ${params.url}