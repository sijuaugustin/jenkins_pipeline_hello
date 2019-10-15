pipeline {
  agent any
  parameters {
    string(name: 'sTrAnGePaRaM',
      defaultValue: 'Dance!',
      description: 'Do the funky chicken!')
  }
  stages {
    stage('Example') {
      steps {
        echo 'Hello World!'
        echo "The DJ says: ${params.sTrAnGePaRaM}"
      }
    }
  }
}