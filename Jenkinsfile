pipeline {
    agent any
    stages {
        stage('Test on any') {
            agent any
            steps {
                sh 'sudo cat /etc/hostname'
                sh 'docker --version'
                sh 'ls -a'
            }
        }
        stage('Test on Linux') {
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


