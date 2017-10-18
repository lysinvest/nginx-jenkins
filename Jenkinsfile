pipeline {
    agent any
    environment { 
        CC = 'lang'
    }
    stages {
        env.BN = VersionNumber([
          versionNumberString : '${BUILD_MONTH}.${BUILDS_TODAY}.${BUILD_NUMBER}', 
          projectStartDate : '2017-02-09', 
          versionPrefix : 'v1.'
        ])
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

        stage('Automated Tests') {
            agent { 
                label 'registry'
            }          
            steps {
                echo 'Automated Tests'
            }
        }


    }
}