# Azure Virtual Private Network (VPN) Deployment with Terraform and Jenkins

## Project Overview
This project demonstrates the creation of an Azure Virtual Private Network (VPN) using Terraform, with a Jenkins pipeline configured to automate the deployment process. The VPN setup ensures secure connectivity between Azure resources and on-premises networks.

## Features
- **Infrastructure as Code**: Utilizes Terraform to define and provision the Azure Virtual Private Network, ensuring consistency and repeatability.
- **Jenkins Pipeline Automation**: Configured Jenkins to automate the deployment of the Terraform scripts, streamlining the setup process.
- **Customizable Parameters**: Allows for easy customization of parameters such as VPN gateway, subnet configurations, and network settings through variables in Terraform.
- **Secure Network Connectivity**: Provides a secure connection for Azure resources, enhancing security for applications and services deployed in Azure.

## Source Code and Repository Ownership
- **Source Repository Owner**: The source code for this project was developed by me.
- **Modifications and Customizations**: This repository includes Terraform scripts and a Jenkins pipeline configuration specifically for creating and managing an Azure VPN.

## Link to Documentation
For a detailed step-by-step approach to building the project and the results, refer to the [Project Documentation](https://github.com/saitejat1907/azure-vpn-automated-deployment/blob/main/cicd%20with%20jenkins%20for%20terraform.pdf).

---

## Pipeline Workflow
1. **Code Push**: Developers push code to the GitHub repository.
2. **Jenkins Trigger**: A webhook sends an HTTP POST request to Jenkins, which triggers the deployment job automatically.
3. **Terraform Initialization**: The Jenkins pipeline initializes Terraform with the necessary provider configurations.
4. **Terraform Plan**: Jenkins runs a Terraform plan to preview the changes that will be made to the infrastructure.
5. **Terraform Apply**: After approval, Jenkins applies the Terraform configurations to create the Azure VPN.
6. **Email Notification**: Sends an email notification once the job is completed to inform the team of the deployment status.

---

## Jenkins Job Configuration
For the detailed configuration of the Jenkins job, you can find the setup instructions in the following link: [Jenkins Job Configuration](https://github.com/saitejat1907/azure-vpn-automated-deployment/blob/main/cicd%20with%20jenkins%20for%20terraform.pdf).

---

## Detailed Setup Instructions

### 1. Setting Up Terraform
- Ensure you have Terraform installed and configured to work with your Azure account.
- Clone the repository containing the Terraform scripts.

### 2. Jenkins Job Configuration
- **Webhook Setup**: Configure a webhook in GitHub to notify Jenkins of any changes pushed to the repository.
- **Jenkins Pipeline**:
  - Create a new pipeline job in Jenkins and configure it to pull code from the GitHub repository.
  - Set up triggers for the job to start automatically upon receiving a webhook notification.
  - Add stages to initialize, plan, and apply the Terraform scripts.

### 3. Azure VPN Configuration
- Customize the Terraform variables to fit your network requirements, such as address space, subnet configurations, and VPN gateway settings.

---

## Results

- **Cloned GitHub Repository**:

  ![Cloned GitHub Repository](URL_TO_ARCHITECTURE_IMAGE)

- **Jenkins Pipeline**:

  ![Jenkins Pipeline Diagram](URL_TO_JENKINS_PIPELINE_IMAGE)

---

## Tools & Technologies Used
- **Terraform**: To provision and manage Azure resources as code.
- **Jenkins**: To automate the deployment process through a CI/CD pipeline.
- **Azure**: Cloud platform for deploying the virtual private network.

---

## Future Enhancements
- Implement additional security measures, such as Network Security Groups (NSGs) and user-defined routes.
- Explore the use of Azure Key Vault for managing secrets and sensitive information.
- Enhance the Jenkins pipeline with additional stages for testing and validation.

---

## Acknowledgments
This project was developed as part of my learning journey with Azure and Terraform. I would like to thank the community for the resources and support provided along the way.
