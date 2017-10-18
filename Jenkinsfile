pipeline {
    agent any
    stages {
        stage('Test with master') {
            agent { 
                label 'master'
            }
            steps {
                sh 'sudo cat /etc/hostname'
                sh 'docker --version'
                sh 'ls -a'
            }
        }
    }
}