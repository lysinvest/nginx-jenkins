pipeline {
    agent any
    stages {
        stage('Test') {
            agent { 
                label 'registry'
            }
            steps {
                sh 'docker --version'
            }
        }
    }
}