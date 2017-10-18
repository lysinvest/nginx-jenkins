pipeline {
    agent any
    stages {
        stage('Test') {
            steps {
                sh 'docker --version'
                sh 'ls -a'
                sh 'docker build -t main-proxy:1.0.0 .'
            }
        }
    }
}