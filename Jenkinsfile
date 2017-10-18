pipeline {
    agent any
    stages {
        stage('Example') {


            steps {
  node('master') {
            checkout scm
        }
                echo "Running ${env.BUILD_ID} on ${env.JENKINS_URL}"
            }
        }
    }
}