# Practical_Lab8 – PROG8830

## Overview

This lab demonstrates advanced Terraform capabilities by provisioning a modular and reusable AWS infrastructure. It includes:

- Loops (`count` and `for_each`)
- Terraform functions like `cidrsubnet`, `element`, `count.index`, and list comprehensions
- Modular setup for VPC, EC2, ALB, and security groups
- A complete simulated web app environment on AWS

---

## Infrastructure Components

- VPC with public subnets and route tables  
- EC2 instances (NGINX) created using `count`  
- Security Groups dynamically generated using `for_each`  
- Application Load Balancer (ALB) with target group  
- Functions like `cidrsubnet()`, `element()`, and `count.index`

---

## Requirements

- Terraform CLI installed
- AWS credentials (use environment variables or profile)
- Basic knowledge of Terraform syntax and modules

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
    ├── vpc/             # VPC + subnets + IGW + routing
    ├── ec2/             # EC2 instances + security groups
    ├── alb/             # Application Load Balancer setup
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

- `count`: Used to create multiple EC2 instances and subnets  
- `for_each`: Used to create multiple security groups based on a map

### Functions Used

| Category    | Function(s) Used                          |
|-------------|-------------------------------------------|
| IP/CIDR     | `cidrsubnet()`                            |
| Collection  | `element()`, `for` (list comprehension)   |
| Numeric     | `count.index`                             |

---

## Learnings

- When to use `count` vs `for_each` based on identical vs unique resources  
- How functions like `cidrsubnet()` and `element()` make infra dynamic  
- Modularization improves clarity, maintainability, and reusability  
- Real-world Terraform configurations follow this structure

---

*By Jithin Jyothi – PROG8830*
