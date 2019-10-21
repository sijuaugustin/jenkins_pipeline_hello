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
    string(name: 'target_device',
      defaultValue: 'INTEL',
      description: 'target devie')

  }
  environment {
        DOCKER_PASSWORD='attinad@123'
        DOCKER_USERNAME='aimarketplace'

    }
  stages {

      stage("PRE-PROCESSING") {
          steps {

            echo 'starting PRE-PROCESSING  '
            sh "bash ./getmodelZip.sh"

          }
        }
      stage("BUILD") {
            steps {
                echo 'build started'
                sh "bash ./serving_${params.hardware_accelerator}_${params.architecture}_${params.target_device}.sh"
            }
        }
      stage("DOCKER HUB PUSHER") {
          steps {
            sh "bash ./dockerhubPush.sh"
          }
        }
  }

  post {
        always {
            echo 'Model packager results'
        }
        success {
            echo 'Model build was successfull'
            sh "bash ./cleanData.sh"
        }
        failure {
            echo 'Error in Model Packager building'

        }
        }
}