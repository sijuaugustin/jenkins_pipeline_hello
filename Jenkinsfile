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
      defaultValue: 'http://10.154.4.156:9000/test/yolo/saved_model.pb?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAIOSFODNN7EXAMPLE%2F20191010%2F%2Fs3%2Faws4_request&X-Amz-Date=20191010T102003Z&X-Amz-Expires=432000&X-Amz-SignedHeaders=host&X-Amz-Signature=93ca22a87ea9203f5f100487dc0c34c763c2683ccdec568a02430262f0fd5f3c',
      description: 'url path for the saved model')

  }
  stages {
    stage('Download Model Files') {
      steps {
        echo 'Downloading Model files   '
        echo "The DJ says: ${params.name}"
        sh "wget ${params.url}"
      }
    }
  }
}