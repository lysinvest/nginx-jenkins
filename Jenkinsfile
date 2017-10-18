pipeline {
    agent any
    stages {
        stage('Test master') {
            agent { 
                label 'registry'
            }
            steps {
                sh 'sudo cat /etc/hostname'
                sh 'docker --version'
                sh 'ls -a'
            }
        }
    }
    stages {
        stage('Test registry') {
            agent { 
                label 'registry'
            }
            steps {
                sh 'sudo cat /etc/hostname'
                sh 'docker --version'
                sh 'ls -a'
            }
        }
    }
}