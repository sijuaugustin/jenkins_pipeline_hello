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
      defaultValue: 'http://10.154.4.156:9000/test/yolo/saved_model.pb?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAIOSFODNN7EXAMPLE%2F20191015%2F%2Fs3%2Faws4_request&X-Amz-Date=20191015T125845Z&X-Amz-Expires=432000&X-Amz-SignedHeaders=host&X-Amz-Signature=a55d8c978ed1c7628b4c24567cc2b30b5cfa4baea78202600e340b8662ce3e33',
      description: 'url path for the saved model')

  }
  stages {

  stage('Checkout'){
        git url: 'https://github.com/sijuaugustin/jenkins_pipeline_hello.git'
        }
  stage('Download Model Files') {
      steps {
        sh './getModel.sh'

      }
    }
  }
}