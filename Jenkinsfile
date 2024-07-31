pipeline {
    agent any


    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/saitejat1907/terraform2.git'
            }
        }
        
        stage('Terraform Init') {
            steps {
                sh 'terraform init'
            }
        }
        
        stage('Terraform Plan') {
            steps {
                sh 'terraform plan -out=tfplan'
            }
        }
        
        stage('Terraform Apply') {
            steps {
                sh 'terraform apply -auto-approve tfplan'
            }
        }
        
    }

}
