pipeline {
    agent any
    tools {
        maven 'Maven 3.6.2'
        jdk 'jdk8'
    }
    stages {
        stage ('Checking Tools') {
            steps {
                sh '''
                java -version
                mvn --version
                docker version
                '''
            }
        }

        stage('Build') { 
            steps {
                echo "Hello World!"
                // Added this line to test auto-build
            }
        }
    }
}