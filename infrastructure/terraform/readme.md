# Cloud Infrastructure with Terraform

## Project Overview
This project contains Terraform configurations to provision and manage cloud infrastructure using a modular approach. The infrastructure is organized into distinct modules for better maintainability and reusability.

## Directory Structure

```markdown
.
├── main.tf # Main Terraform configuration file
├── modules/ # Directory containing all modules
│ ├── compute/ # Compute resources module
│ │ ├── main.tf
│ │ ├── outputs.tf
│ │ └── variables.tf
│ ├── security/ # Security configurations module
│ │ ├── main.tf
│ │ ├── outputs.tf
│ │ └── variables.tf
│ └── vpc/ # Network infrastructure module
│ ├── main.tf
│ ├── outputs.tf
│ └── variables.tf
├── outputs.tf # Root-level outputs
├── providers.tf # Provider configurations
├── terraform.tfvars # Variable definitions
└── variables.tf # Variable declarations


## Modules Description

### VPC Module
- Manages network infrastructure
- Creates VPC, subnets, route tables, and internet gateway
- Handles network ACLs and routing configurations

### Security Module
- Manages security groups and firewall rules
- Handles IAM roles and policies
- Configures network access controls

### Compute Module
- Manages compute resources
- Handles instance provisioning
- Configures auto-scaling and load balancing

## Prerequisites
- Terraform >= 1.0
- AWS CLI configured with appropriate credentials
- Required IAM permissions to create resources

## Getting Started
1. Clone the repository:

git clone <repository-url>

## Deployment

1. Initialize Terraform:

terraform init


2. Plan the deployment:
terraform plan


3. Apply the changes:
terraform apply


4. To destroy the infrastructure:
terraform destroy
