pipeline {
    agent any
    stages {
        stage('compile Unit Test') {
            steps {
              node('master') {
                def username = 'Jenkins'
                echo "Compile Mr. ${username}"
                sh 'cat /etc/hostname'
              }
            }
        }
        stage('Example 2') {
            steps {
              node('registry') {
                sh 'cat /etc/hostname'
              }
            }
        }
    }
}