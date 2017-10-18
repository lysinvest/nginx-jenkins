pipeline {
    agent any
    environment { 
        CC = 'lang'
        BN = VersionNumber([
          versionNumberString : '${BUILD_MONTH}.${BUILDS_TODAY}.${BUILD_NUMBER}', 
          projectStartDate : '2017-02-09', 
          versionPrefix : 'v1.'
        ])
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
              echo 'Checkout source code from github ' + env.BN
              checkout([$class: 'GitSCM', 
              branches: [[name: '*/master']], 
              doGenerateSubmoduleConfigurations: false, 
              extensions: [], 
              submoduleCfg: [], 
              userRemoteConfigs: [[credentialsId: 'lysinvestssh', url: 'git@github.com:lysinvest/nginx-jenkins.git']]])
              sh "ls -a"
              sh "docker-compose down"
              sh "docker rmi main-proxy:1.0.0"
              sh "docker-compose build"
            }
        }

        stage("Compile") {
            agent { 
                label 'registry'
            }          
            steps {
                sh 'cat /etc/hostname'
                sh "ls -a"
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