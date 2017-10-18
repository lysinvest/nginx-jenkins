pipeline {
    agent none
    stages {
        stage('Build') {
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


