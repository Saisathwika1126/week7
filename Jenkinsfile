pipeline {
    agent any
    
    stages {
        stage('Build') {
            steps {
                echo "Build Docker Image"
                sh "docker build -t app ."
            }
        }
        stage('Run') {
            steps {
                echo "Run application in docker container"
                sh "docker rm -f mycontainer || exit 0"
                sh "docker run -d -p 5001:5001 --name mycontainer app"
            }
        }
    }
    
    post {
        success {
            echo "Pipeline completed successfully"
        }
        failure {
            echo "Pipeline failed. Please check the logs for more details."
        }
    }
}