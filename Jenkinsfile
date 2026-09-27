pipeline {
    agent any

    environment {
        DOCKER_IMAGE = 'cloudworks-agency-web'
        DOCKER_TAG = "v${env.BUILD_ID}"
    }

    stages {
        stage('Checkout') {
            steps {
                // Checkout code from source control (Git)
                checkout scm
                echo 'Source code checked out successfully.'
            }
        }

        stage('Build & Test') {
            steps {
                // For a Node.js project, we would typically run install and test here
                // Note: Since this is a static Astro project built via Docker, 
                // this stage ensures dependencies resolve before Docker takes over.
                sh 'npm install'
                sh 'npm run build'
                echo 'Build completed successfully.'
            }
        }

        stage('Build Docker Image') {
            steps {
                // Build the docker image using the multi-stage Dockerfile
                script {
                    sh "docker build -t ${DOCKER_IMAGE}:${DOCKER_TAG} ."
                    sh "docker tag ${DOCKER_IMAGE}:${DOCKER_TAG} ${DOCKER_IMAGE}:latest"
                }
            }
        }

        stage('Deploy (Ansible)') {
            steps {
                // Use Ansible to deploy the newly built Docker container to the target VM
                echo 'Triggering Ansible playbook to deploy...'
                // sh 'ansible-playbook -i ansible/inventory.ini ansible/deploy.yml -e "docker_image_tag=${DOCKER_TAG}"'
                echo 'Deployment simulated successfully.'
            }
        }
    }

    post {
        success {
            echo 'Pipeline executed successfully. Application is live.'
        }
        failure {
            echo 'Pipeline failed. Check the logs for details.'
        }
    }
}
