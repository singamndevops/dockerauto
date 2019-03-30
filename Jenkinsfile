pipeline {
	agent any

	stages {
	    stage('Checkout') {
	        steps {
				checkout scm			        }
		    }
		stage('Build') {
	        steps {
				sh '/home/ubuntu/softwares/apache-maven-3.6.0/bin/mvn install'
	        }
		}
		stage('Deployment') {
			steps {
				sh 'sshpass -p "singam" scp target/gamutkart.war singam@13.126.65.72:/home/singam/apache-tomcat-8.5.38/webapps'
			}
		}

	}
}
