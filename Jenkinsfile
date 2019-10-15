pipeline {
  agent any
  parameters {
    string(name: 'name',
      defaultValue: 'helmet',
      description: 'Do the funky chicken!')
  }
  stages {
    stage('Example') {
      steps {
        echo 'Hello World!'
        echo "The DJ says: ${params.name}"
      }
    }
  }
}