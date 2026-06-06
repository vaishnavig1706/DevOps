pipeline {
    agent any
    
    stages {
    	stage('Checkout') {
  		steps {
    			git branch: 'main',  // Change from 'master' to 'main'
        		url: 'https://github.com/vaishnavig1706/DevOps.git'
  		}
 	}

	stage('Build docker image') {
		steps {
			sh 'docker build -t myapp:latest .'
		}
	}

	stage('Run container') {
		steps {
			sh 'docker run -d --name mycontainer2 -p 8081:80 myapp:latest'
		} 
	}
   }
}

