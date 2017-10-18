pipeline {
    agent any
    stages {
        stage('Example') {


            steps {
  node('master') {
    sh 'cat /etc/hostname'
    sh 'docker --version'
            
        }
                echo "Running ${env.BUILD_ID} on ${env.JENKINS_URL}"
            }
        }
    }
}