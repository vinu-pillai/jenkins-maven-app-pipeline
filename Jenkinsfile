pipeline {

    agent any
    
    environment {
        PASS = credentials('registry-pass') 
    }

    stages {

        stage('Build') {
            steps {
                sh '''
                    ./mvn.sh mvn -B -DskipTests clean package
                    ./01_build.sh

                '''
            }

            post {
                success {
                   archiveArtifacts artifacts: 'java-app/target/*.jar', fingerprint: true
                }
            }
        }

        stage('Test') {
            steps {
                sh './mvn.sh mvn test'
            }

            post {
                always {
                    junit 'java-app/target/surefire-reports/*.xml'
                }
            }
        }

        stage('Push') {
            steps {
                sh './02_push.sh'
            }
        }

        stage('Deploy') {
            steps {
                sh './03_deploy.sh'
            }
        }
	stage('Verify-The-Deployment') {
	    steps {
		sh 'ssh -i /opt/prod produser@172.31.32.234 "docker logs maven-app"'
		}
	}
    }
}
