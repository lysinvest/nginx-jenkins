pipeline {
    agent { node ('master') }
    stages {
        stage('Test') {
            steps {
                sh 'sudo cat /etc/hostname'
                sh 'docker --version'
                sh 'ls -a'
            }
        }
    }
}