pipeline {
    agent any
    environment { 
        CC = 'clang'
    }
    stages {
        stage("Checkout") {
            environment { 
                DEBUG_FLAGS = '-g'
            }            
            agent { 
                label 'master'
            }          
            steps {
                checkout scm
                echo "I said, Hello Mr. ${env.CC}"
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