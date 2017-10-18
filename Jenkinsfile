pipeline {
    agent any
    def username = 'Jenkins'
    stages {
        stage('compile Unit Test') {
            steps {
              node('master') {
                echo "I said, Hello Mr. ${username}"
                sh 'cat /etc/hostname'
                sh 'docker --version'
              }
            }
        }
        stage('Example 2') {
            steps {
              node('registry') {
                sh 'cat /etc/hostname'
                sh 'docker --version'
              }
            }
        }
    }
}