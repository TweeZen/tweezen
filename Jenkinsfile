pipeline {
    agent any
    tools {
        maven 'Maven 3.6.2'
    }
    stages {
        stage ('Checking Tools') {
            steps {
                sh '''
                java -version
                mvn --version
                '''
            }
        }

        stage('Build') { 
            steps {
                echo "Hello World!"
            }
        }
    }
}