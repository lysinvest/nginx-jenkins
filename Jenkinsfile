pipeline {
    agent any
    environment { 
        CC = 'clang'
    }
    stages {
        stage("Checkout") {
            agent { 
                label 'master'
            }          
            steps {
                checkout scm
                sh 'cat /etc/hostname'
            }
        }
        stage("Compile") {
            agent { 
                label 'registry'
            }          
            steps {
                sh 'cat /etc/hostname'
            }
        }
    }
}