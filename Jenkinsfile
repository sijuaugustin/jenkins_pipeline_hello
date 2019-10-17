pipeline {
  agent any
  parameters {
    string(name: 'package_name',
      defaultValue: 'helmet_detector_jetson_xavier_beta',
      description: 'detecting helmets')
    string(name: 'id',
      defaultValue: '5d9ef120b7b8et54',
      description: 'unique id')
    string(name: 'framework',
      defaultValue: 'tensorflow',
      description: 'specify the frameworks')
    string(name: 'architecture',
      defaultValue: 'x86',
      description: 'specify the the edge devices architecture ')
    string(name: 'hardware_accelerator',
      defaultValue: 'CPU',
      description: ' specify the the edge devices hardware accelerator ')
    string(name: 'url',
      defaultValue: 'http://10.154.4.156:9000/dev/models/5d8dac430779da4fd641df84/9da4fd6415d8dac77df84430/saved_model.pb',
      description: 'url path for the saved model')

  }
  environment {
        DOCKER_PASSWORD='attinad@123'
        DOCKER_USERNAME='aimarketplace'

    }
  stages {

      stage("PRE-PROCESSING") {
          steps {

            echo 'starting PRE-PROCESSING  '
            sh "bash ./getModel.sh"

          }
        }
      stage("BUILD") {
            steps {
                echo 'build started  '
                script {
                    if (${params.architecture}=='x86' && ${params.hardware_accelerator}=='CPU') {
                        sh "bash ./serving_cpu_x86.sh"
                    } else {
                        echo 'todo'
                    }
                }
            }
        }
      stage("DOCKER HUB PUSHER") {
          steps {
            echo 'Pushing the model package to dockerhub '
            echo ' "$DOCKER_PASSWORD" | sudo docker login -u "$DOCKER_USERNAME" --password-stdin'
            sh "sudo docker tag ${params.package_name} aimarketplace/models:${params.package_name}"
            sh "sudo docker push aimarketplace/models:${params.package_name}"

          }
        }

  }
}