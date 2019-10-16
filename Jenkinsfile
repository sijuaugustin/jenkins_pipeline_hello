pipeline {
  agent any
  parameters {
    string(name: 'package_name',
      defaultValue: 'helmet_detector_jetson_xavier_beta',
      description: 'detecting helmets')
    string(name: '_id',
      defaultValue: '5d9ef120b7b8et54',
      description: 'unique id')
    string(name: 'framework',
      defaultValue: 'tensorflow',
      description: 'specify the frameworks')
    string(name: 'architecture',
      defaultValue: 'CPU',
      description: 'specify the the edge devices architecture ')
    string(name: 'hardware_accelerator',
      defaultValue: 'CPU',
      description: ' specify the the edge devices hardware accelerator ')
    string(name: 'url',
      defaultValue: 'http://10.154.4.156:9000/dev/models/5d8dac430779da4fd641df84/9da4fd6415d8dac77df84430/saved_model.pb',
      description: 'url path for the saved model')

  }
  stages {

      stage("Download Model Files") {
          steps {
            echo 'Downloading Model files '
            sh "sudo mkdir -p ${params.package_name}/1"
            sh "sudo wget -P ${params.package_name}/1 ${params.url}"
            echo 'Running TF serving as a daemon '
            sh "sudo docker run -d --name ${params._id} tensorflow/serving"
            echo 'copy the SavedModel to the containers model folder '
            sh "sudo docker cp ${params.package_name} ${params._id}:/models/${params.package_name}"
          }
        }
      stage("TENSORFLOW SERVING") {
          steps {
            echo 'Running TF serving as a daemon '
            sh "sudo docker run -d --name ${params._id} tensorflow/serving"
            echo 'copy the SavedModel to the containers model folder '
            sh "sudo docker cp ${params.package_name} ${params._id}:/models/${params.package_name}"

          }
        }
  }
}