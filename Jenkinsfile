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
/*                checkout scm
                echo "Language . ${env.CC} . ${env.DEBUG_FLAGS}"
                sh 'cat /etc/hostname'*/

              echo 'Checkout source code from github ' + env.BN

              checkout([$class: 'GitSCM', 
              branches: [[name: '*/master']], 
              doGenerateSubmoduleConfigurations: false, 
              extensions: [], 
              submoduleCfg: [], 
              userRemoteConfigs: [[credentialsId: 'lysinvestssh', url: 'git@github.com:lysinvest/nginx-jenkins.git']]])


              sh "ls -a"
              sh "docker-compose build"
/*              sh "mkdir -p output"
              writeFile file: "output/somefile", text: "Hey look, some text."*/
/*              stash name: "first-stash", includes: "output/*"  */
/*              stash name: "first-stash", includes: "output/*"  */

            }
        }

        stage("Compile") {
            agent { 
                label 'registry'
            }          
            steps {
                sh 'cat /etc/hostname'
                sh "ls -a"
/*                unstash "first-stash"*/
            }
        }


        stage('Push image') {
/*          main-proxy:1.0.0
          docker.withRegistry('https://registry.hub.docker.com', 'dockerhub') {
            app.push("${env.BUILD_NUMBER}")
            app.push("latest")
          }*/
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