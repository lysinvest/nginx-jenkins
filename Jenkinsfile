pipeline {
    agent any
    stages {
        stage('Test') {
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