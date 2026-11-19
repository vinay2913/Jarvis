# Jarvis

# AWS Infrastructure Provisioning using Terraform

## Project Overview

This project demonstrates the automation of AWS infrastructure provisioning using Terraform (Infrastructure as Code).

Instead of manually creating AWS resources through the AWS Management Console, Terraform is used to define, provision, and manage cloud infrastructure through configuration files.

The project provisions an AWS Virtual Private Cloud (VPC), subnet, security group, and an EC2 instance.

## Technologies Used

- AWS Cloud
- Terraform
- Amazon EC2
- Amazon VPC
- AWS Security Groups
- HCL (HashiCorp Configuration Language)

## Architecture

The project provisions the following AWS infrastructure:

1. **VPC:** Creates an isolated virtual network with CIDR block `10.0.0.0/16`.
2. **Subnet:** Creates a subnet with CIDR block `10.0.1.0/24`.
3. **Security Group:** Configures inbound SSH (Port 22) and HTTP (Port 80) access.
4. **EC2 Instance:** Launches an AWS virtual machine inside the created subnet.
5. **Terraform Outputs:** Displays the EC2 public IP address, VPC ID, and subnet ID.

## Project Structure

```text
terraform-project/
│
├── main.tf
├── variables.tf
├── outputs.tf
└── README.md
```

## Prerequisites

Before running this project, make sure you have:

- An AWS account.
- Terraform installed (version 1.5 or later).
- AWS CLI installed and configured.
- An existing AWS EC2 key pair.
- A valid AMI ID for your selected AWS region.
- Appropriate IAM permissions to create AWS resources.

## Configuration

Define the following variables in `variables.tf`:

- `aws_region`: AWS region where resources will be created.
- `project_name`: Name used for resource tagging.
- `ami_id`: Amazon Machine Image ID.
- `instance_type`: EC2 instance type.
- `key_pair`: Existing AWS EC2 key pair name.

Configure AWS credentials using the AWS CLI before executing Terraform.

## How to Execute the Project

**Step 1: Clone the repository**

```bash
git clone <your-github-repository-url>
```

**Step 2: Navigate to the project directory**

```bash
cd terraform-project
```

**Step 3: Initialize Terraform**

```bash
terraform init
```

**Step 4: Validate the configuration**

```bash
terraform validate
```

**Step 5: Review the execution plan**

```bash
terraform plan
```

**Step 6: Create AWS infrastructure**

```bash
terraform apply
```

Type `yes` when prompted.

**Step 7: View Terraform outputs**

```bash
terraform output
```

The command displays:

- EC2 Instance Public IP
- VPC ID
- Subnet ID

## Expected Outcome

After successful execution, Terraform provisions the defined AWS infrastructure automatically.

The resulting infrastructure includes:

- A dedicated AWS VPC.
- A subnet within the VPC.
- A security group with SSH and HTTP inbound rules.
- An EC2 virtual machine.
- Output values containing important infrastructure details.

## Cleanup

To avoid unnecessary AWS charges, destroy the resources after completing the project.

```bash
terraform destroy
```

Type `yes` when prompted.

## Learning Outcomes

Through this project, I gained practical knowledge of:

- Infrastructure as Code (IaC).
- Terraform configuration and resource management.
- AWS VPC and subnet creation.
- EC2 instance provisioning.
- Security group configuration.
- Terraform initialization, validation, planning, and execution.
- Managing cloud infrastructure through automation.

## Conclusion

This project demonstrates how Terraform simplifies AWS infrastructure provisioning by automating the creation and management of cloud resources.

It provides a foundation for understanding Infrastructure as Code and cloud infrastructure automation.
