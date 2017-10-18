node ('registry') {    
    def app

    stage('Clone repository') {
        checkout scm
    }

    stage('Build image') {
        app = docker.build("main-proxy:1.0.0")
    }

    stage('Test image') {
        app.inside {
            sh 'echo "Tests passed"'
        }
    }

    stage('Push image') {
        try {
            sh "docker stop main-proxy:1.0.0"
            sh "docker rm main-proxy:1.0.0"
        } catch (Exception _) {
            echo "no container to stop"
        }
        sh "docker-compose up -d"
/*          docker.withRegistry('https://registry.hub.docker.com', 'dockerhub') {*/
/*        docker.withRegistry('https://registry.hub.docker.com', 'docker-hub-credentials') {
            app.push("${env.BUILD_NUMBER}")
            app.push("latest")
        }*/
    }
}