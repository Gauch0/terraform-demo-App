# Terraform-demo-App: Infrastructure as Code with Terraform

This repository provides a template for deploying a secure and scalable infrastructure on AWS using Terraform. Although the name suggests a Kubernetes demonstration application, the focus here is on using Terraform to prepare and manage AWS environments for any application, including those orchestrated with Kubernetes.

## Features

- **VPC:** VPC setup with subnets, route tables, and internet gateways.
- **EC2 Instances:** Instances for applications and bastions.
- **Load Balancers:** ELB and ALB configuration.
- **SSL Certificate Management:** Using ACM to handle SSL certificates.
- **Route 53:** DNS management.
- **Security Groups:** Detailed network traffic control.
- **Provisioning:** Scripts for application setup.

## Prerequisites

- AWS account
- Terraform v0.14+
- Configured AWS credentials

## Usage

1. Clone the repository
   ```shell
   git clone https://github.com/Gauch0/TerraformDemo.git

2. Navigate to the project directory
    ```shell
    cd TerraformDemo
3. Initialize Terraform
    ```shell
    terraform init
4. Apply the Terraform configuration
    ```shell
    terraform apply
Confirm the changes

5. To clean up the resources, use:
    ```shell
    terraform destroy
