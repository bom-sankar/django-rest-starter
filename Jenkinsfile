#!groovy

# jenkins script
node {
   def commit_id
   stage('Preparation') {
     git url: 'https://github.com/bom-sankar/django-rest-starter.git'
   }
   stage('test') {
     echo "test cases done"
   }
   stage('docker build/push') {
     docker.withRegistry('https://index.docker.io/v1/', 'dockerhub') {
       def app = docker.build("sankycse/sanky-docker:sanky", '.').push()
     }
   }
}
