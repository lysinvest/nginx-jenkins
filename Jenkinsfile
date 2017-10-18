node ('master') {
  stage ('provision on master') {
    sh 'cat /etc/hostname'
  }
}
node ('registry') {
  stage ('production on registry') {
    sh 'cat /etc/hostname'
    sh 'docker --version'
  }
}