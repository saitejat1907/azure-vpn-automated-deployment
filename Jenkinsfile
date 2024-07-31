pipeline {
    agent any

    environment {
        AZURE_CLIENT_ID       = credentials('azure-client-id')       // Use the ID of the Jenkins credential
        AZURE_CLIENT_SECRET   = credentials('azure-client-secret')   // Use the ID of the Jenkins credential
        AZURE_TENANT_ID       = credentials('azure-tenant-id')       // Use the ID of the Jenkins credential
        AZURE_SUBSCRIPTION_ID = credentials('azure-subscription-id') // Use the ID of the Jenkins credential
    }

    stages {
        stage('Terraform Init') {
            steps {
                sh 'terraform init'
            }
        }

        stage('Terraform Plan') {
            steps {
                sh '''
                terraform plan \
                  -var client_id=$AZURE_CLIENT_ID \
                  -var client_secret=$AZURE_CLIENT_SECRET \
                  -var tenant_id=$AZURE_TENANT_ID \
                  -var subscription_id=$AZURE_SUBSCRIPTION_ID
                '''
            }
        }

        stage('Terraform Apply') {
            steps {
                sh '''
                terraform apply -auto-approve \
                  -var client_id=$AZURE_CLIENT_ID \
                  -var client_secret=$AZURE_CLIENT_SECRET \
                  -var tenant_id=$AZURE_TENANT_ID \
                  -var subscription_id=$AZURE_SUBSCRIPTION_ID
                '''
            }
        }
    }
}
