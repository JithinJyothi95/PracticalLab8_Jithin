# Practical_Lab8 – PROG8830

## Overview

This lab demonstrates advanced Terraform capabilities by provisioning a modular and reusable AWS infrastructure. It includes:

- Loops (`count` and `for_each`)
- Built-in Terraform functions
- Modular setup for VPC, EC2, ALB, and RDS
- Complete web app environment on AWS

---

## Infrastructure Components

- VPC with public subnets and route tables  
- EC2 instances (NGINX) created using `count`  
- Security Groups dynamically generated using `for_each`  
- Application Load Balancer (ALB) with target group  
- RDS PostgreSQL database with public access  
- Functions like `cidrsubnet`, `length`, `formatdate`, etc.

---

## Requirements

- Terraform CLI installed
- AWS credentials (use environment variables)
- Basic knowledge of Terraform syntax and structure

---

## Project Structure

```
Lab8/
├── main.tf              # Root Terraform config
├── variables.tf         # Input variables
├── outputs.tf           # Output values
├── providers.tf         # AWS provider config
├── terraform.tfvars     # Variable values
└── modules/
    ├── vpc/             # VPC + networking
    ├── ec2/             # EC2 instances + security groups
    ├── alb/             # Load balancer setup
    └── rds/             # PostgreSQL database
```

---

## Terraform Commands

```bash
terraform init     
terraform plan     
terraform apply    
terraform destroy   
```

---

## Key Features

### Looping

- `count`: To create multiple EC2 instances  
- `for_each`: For dynamic security groups based on a map

### Functions Used

| Type        | Functions Used                        |
|-------------|----------------------------------------|
| String      | `formatdate()`, `upper()`, `lower()`   |
| Numeric     | `count.index`, `min()`, `max()`        |
| Collection  | `for`, `length()`, `concat()`          |
| Networking  | `cidrsubnet()`                         |
| Time        | `timestamp()`                          |

---

## RDS Configuration

- Public PostgreSQL instance
- Security groups passed via module
- Protected with `skip_final_snapshot = true`

---

## Learnings

- Difference between `count` and `for_each`
- How modularization makes code clean and reusable
- Real-world Terraform mirrors this structure
- Functions make infrastructure scalable and dynamic

---

*By Jithin Jyothi – PROG8830*