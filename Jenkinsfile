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
			sh 'docker run -d --name mycontainer3 -p 9090:80 myapp:latest'
		} 
	}
    	
	stage('delete container') {
		steps { 
			sh 'docker rm mycontainer2'
		}
	}
    }
}

