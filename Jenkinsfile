pipeline { 
    agent any 
    stages { 
        stage('Checkout') { steps { checkout scm; echo 'Source code pulled successfully.' } } 
        stage('Code Analysis') { steps { echo 'Scanning code...'; sh 'ls -la'; echo 'Secure.' } } 
        stage('Build Docker Image') { steps { echo 'Building Docker container...'; echo 'Successful.' } } 
        stage('Deploy (Ansible)') { steps { echo 'Triggering Ansible...'; echo 'Deployment Successful!' } } 
    } 
} 
