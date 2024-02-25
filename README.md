# Terraform-demo-App: Infrastructure as Code with Terraform 🌍

This repository provides a template for deploying a secure and scalable infrastructure on AWS using Terraform. While it hints at a Kubernetes demonstration application, the core focus is on leveraging Terraform for AWS environment management, suitable for any application, including Kubernetes orchestrated ones.

## 🌟 Features

- **VPC:** 🌐 VPC setup with subnets, route tables, and internet gateways.
- **EC2 Instances:** 💻 Instances for applications and bastions.
- **Load Balancers:** ⚖️ ELB and ALB configuration.
- **SSL Certificate Management:** 🔒 Using ACM to handle SSL certificates.
- **Route 53:** 🌍 DNS management.
- **Security Groups:** 🔑 Detailed network traffic control.
- **Provisioning:** 🛠️ Scripts for application setup.

## 📋 Prerequisites

- AWS account 🌐
- Terraform v0.14+ 🛠️
- Configured AWS credentials 🔐

## 🚀 Usage

1. **Clone the repository:**
   ```shell
   git clone https://github.com/Gauch0/terraform-demo-App
   ```

2. Navigate to the project directory:
   ```shell
   cd terraform-demo-app
   ```

3. **Initialize Terraform:** 🌱
   ```bash
   terraform init
   ```
4. **Plan the Deployment: 📈:**
   ```bash
   terraform plan
   ```
5. **Apply the Configuration: ✅**
   ```bash
   terraform apply

## 🧪 Testing the Infrastructure
After deployment, utilize the Terraform outputs to access and test your infrastructure. Verify the functionality of EC2 instances, load balancing, and DNS resolution to ensure a successful deployment.
