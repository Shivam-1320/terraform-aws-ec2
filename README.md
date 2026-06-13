# Terraform AWS Web Infrastructure

Deploy AWS infrastructure using Terraform, including a custom VPC, public and private subnets, a security group, and an EC2 instance.

## Overview

This project demonstrates Infrastructure as Code (IaC) using Terraform to provision a small AWS environment from scratch.

The infrastructure includes:

- Custom VPC
- Public Subnet
- Private Subnet
- Security Group
- EC2 Instance
- Terraform Variables
- Terraform Outputs

This project was created to practice AWS networking fundamentals, Terraform resource dependencies, and infrastructure provisioning.

---

## Architecture

![Architecture Diagram](diagrams/architecture.png)

### Infrastructure Layout

```text
AWS Cloud
│
└── VPC (10.0.0.0/16)
    │
    ├── Public Subnet (10.0.1.0/24)
    │     └── EC2 Instance
    │
    └── Private Subnet (10.0.2.0/24)

Security Group
├── SSH (22)
└── HTTP (80)
```

---

## Resources Created

| Resource | Purpose |
|----------|---------|
| VPC | Custom AWS network |
| Public Subnet | Hosts public-facing resources |
| Private Subnet | Reserved for future internal resources |
| Security Group | Controls inbound and outbound traffic |
| EC2 Instance | Compute resource deployed in public subnet |

---

## Project Structure

```text
terraform-aws-web-infrastructure/
├── diagrams/
│   └── architecture.png
├── images/
│   ├── terraform-plan.png
│   ├── terraform-apply.png
│   ├── vpc.png
│   ├── subnets.png
│   ├── security-group.png
│   ├── ec2-instance.png
│   └── terraform-output.png
├── main.tf
├── variables.tf
├── outputs.tf
├── terraform.tfvars.example
├── .gitignore
├── .terraform.lock.hcl
└── README.md
```

---

## Technologies Used

- Terraform
- AWS VPC
- AWS EC2
- AWS Security Groups
- AWS Provider
- Git & GitHub

---

## Prerequisites

Before using this project, ensure you have:

- Terraform installed
- AWS account
- AWS CLI configured
- Appropriate AWS permissions

---

## Configuration

Create a file named:

```text
terraform.tfvars
```

Example:

```hcl
ami_id        = "ami-xxxxxxxxxxxxxxxxx"
instance_type = "t3.micro"
```

---

## Terraform Workflow

Initialize Terraform:

```bash
terraform init
```

Format Terraform files:

```bash
terraform fmt
```

Validate configuration:

```bash
terraform validate
```

Review execution plan:

```bash
terraform plan
```

Deploy infrastructure:

```bash
terraform apply
```

Refresh Terraform state:

```bash
terraform apply -refresh-only
```

Destroy infrastructure:

```bash
terraform destroy
```

---

## Outputs

After successful deployment Terraform displays:

- Public IP Address
- Instance ID

Example:

```text
public_ip   = xx.xx.xx.xx
instance_id = i-xxxxxxxxxxxxxxxxx
```

---

## Terraform Concepts Demonstrated

- Providers
- Resources
- Variables
- Outputs
- Resource Dependencies
- State Management
- Resource Tagging
- AWS Networking Basics
- VPC and Subnet Configuration

---

## Screenshots

### Terraform Plan

![Terraform Plan](images/terraform-plan.png)

### Terraform Apply

![Terraform Apply](images/terraform-apply.png)

### AWS VPC

![AWS VPC](images/vpc.png)

### AWS Subnets

![AWS Subnets](images/subnets.png)

### AWS Security Group

![Security Group](images/security-group.png)

### AWS EC2 Instance

![EC2 Instance](images/ec2-instance.png)

### Terraform Outputs

![Terraform Outputs](images/terraform-output.png)

---

## Learning Objectives

This project was created to practice:

- Infrastructure as Code (IaC)
- AWS Networking Fundamentals
- Terraform Resource Dependencies
- VPC and Subnet Creation
- Security Group Configuration
- EC2 Provisioning
- GitHub Project Documentation

---

## Future Improvements

Planned upgrades:

- Internet Gateway
- Route Tables
- Route Table Associations
- NGINX Installation using User Data
- Load Balancer
- Multi-Instance Deployment

---

## Author

**Pankaj**

RHCSA Certified Linux Administrator

Learning AWS, Terraform, Cloud Infrastructure, Automation, and Cybersecurity.
