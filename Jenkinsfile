pipeline {
    agent any
/*    parameters {
        string(name: 'Greeting', defaultValue: 'Hello', description: 'How should I greet the world?')
    }    */
    environment { 
        CC = 'clang'
    }    
    stages {
        stage('compile Unit Test') {
            steps {
              node('master') {
                sh 'cat /etc/hostname'
/*                echo '${params.Greeting} World!' */
              }
            }
        }
        stage('Example 2') {
            steps {
              node('registry') {
                sh 'cat /etc/hostname'
              }
            }
        }
    }
}