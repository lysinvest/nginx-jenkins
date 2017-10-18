pipeline {
    agent none
    stages {
        stage('Build') {
            agent any
            steps {
                echo '11'
            }
        }
        stage('Test on Linux') {
            agent { 
                label 'registry'
            }
            steps {
                echo '22'
            }
        }
    }
}


