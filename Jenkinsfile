pipeline {
    agent any
    environment { 
        CC = 'lang'
    }
    stages {
        stage("Checkout") {
            environment { 
                DEBUG_FLAGS = 'FR'
            }            
            agent { 
                label 'master'
            }          
            steps {
                checkout scm
                echo "Language . ${env.CC} . ${env.DEBUG_FLAGS}"
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