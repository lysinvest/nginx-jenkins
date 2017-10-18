pipeline {
    agent any
    stages {
        stage('Example 1') {
            steps {
              node('master') {
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