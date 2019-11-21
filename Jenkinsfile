pipeline {
    agent{label 'master'}
    stages {
        stage('build') { 
            steps {
                echo "Hello World!"
                sh 'mvn --version'
            }
        }
    }
}