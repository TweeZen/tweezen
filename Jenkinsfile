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
                echo 'user in use:' $USER
                java -version
                mvn --version
                docker version
                '''
            }
        }

        stage('Build') { 
            steps {
                echo "Hello World!"
                echo "Added this line to test auto-build"
            }
        }
    }
}