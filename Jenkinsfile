// node {
//    stage 'Stage 1'
//    		echo 'Hello World 1'
//    stage 'Stage 2'
//    		echo ${env.name}
// }
pipeline {
    agent any

    parameters {
        booleanParam(defaultValue: true, description: '', name: 'userFlag')
    }

    stages {
        stage("foo") {
            steps {
                echo "flag: ${params.userFlag}"
            }
        }
    }
}