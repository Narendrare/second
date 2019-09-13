
node{
   stage('SCM Checkout'){
       git credentialsId: 'git-creds', url: 'https://github.com/Narendrare/second.git'
   }
   stage('Mvn Package'){
     def mvnHome = tool name: 'maven-3', type: 'maven'
     def mvnCMD = "${mvnHome}/bin/mvn"
     sh "${mvnCMD} clean package"
   }
   stage('build docker image'){
     sh label: '', script: 'docker build -t test .'
   }
   stage('push ECR'){
    docker.withRegistry('http://011701854391.dkr.ecr.us-east-2.amazonaws.com' , 'ecr:us-east-2:ecr1'){
    docker.image('test').push()    
    }
   }
  }
