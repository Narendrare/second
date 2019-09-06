node {
  stage('SCM') {
    git 'https://git-codecommit.us-east-2.amazonaws.com/v1/repos/Sankari'
  }
   stage('SonarQube analysis') {
    def scannerHome = tool 'SonarScanner 4.0';
    withSonarQubeEnv('My SonarQube Server') { // If you have configured more than one global server connection, you can specify its name
      sh "${scannerHome}/bin/sonar-scanner"
    }
    stage('mvn build')
     sh 'mvn clean package'
   stage('Build Docker'){
     sh 'docker build'
   }
   stage('push ECR'){
     docker.withRegistry('http://011701854391.dkr.ecr.us-east-2.amazonaws.com/test' , 'ecr:us-east-1:demo-ecr-credentials')
     }
     sh 'docker push'
   
