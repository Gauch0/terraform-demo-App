###################################################
# Block-1: Terraform Settings block
terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "~> 3.0"
    }
  }
}

###################################################
# Block-2: Provider Block
provider "aws" {
     # AWS Credentials profile configured on your local desktop terminal
    region = var.region
}
