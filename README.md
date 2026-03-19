\# CloudShield AWS



CloudShield AWS is a cloud security-focused infrastructure project built with Terraform.

It demonstrates how to design, deploy, and monitor a secure AWS environment using industry best practices.



\---



\## Project Overview



This project provisions a secure AWS environment with:



\- Custom VPC architecture

\- Public and private subnets across multiple availability zones

\- EC2 instances for compute

\- Security monitoring using AWS-native services

\- CI pipeline using GitHub Actions for Terraform validation



The goal is to simulate a real-world cloud security engineering environment.



\---



\## Architecture



\### Core Components



\- VPC (10.0.0.0/16)

\- Public and private subnets across multiple availability zones

\- Internet Gateway

\- Route Tables (public and private)

\- EC2 instances (t3.micro)

\- Security Groups



\---



\## Security Features



\### AWS Security Hub

\- Centralized security findings

\- Aggregates alerts across AWS services



\### Amazon GuardDuty

\- Threat detection for:

&#x20; - Unauthorized access

&#x20; - Suspicious activity

&#x20; - Potential compromise



\---



\## Infrastructure as Code (Terraform)



This project uses a modular Terraform structure with:



\- `terraform/modules/network`

\- `terraform/modules/ec2`

\- `terraform/envs/dev`

\- `terraform/envs/prod`



\### Key Features



\- Reusable Terraform modules

\- Environment-based structure

\- Parameterized variables



\---



\## CI/CD Pipeline (GitHub Actions)



A CI pipeline is configured to automatically run on every push.



\### Pipeline Steps



\- `terraform init`

\- `terraform validate`

\- `terraform plan`



This ensures infrastructure changes are validated before deployment.



\---



\## Project Screenshots



\### VPC Architecture

!\[VPC Architecture](./screenshots/vpc-architecture.png)



\### Security Hub Dashboard

!\[Security Hub](./screenshots/security-hub.png)



\### GuardDuty Findings

!\[GuardDuty](./screenshots/guardduty.png)



\### CI Pipeline

!\[GitHub Actions](./screenshots/actions.png)



\---



\## What This Project Demonstrates



\- Infrastructure as Code with Terraform

\- AWS networking and security design

\- Cloud threat detection with GuardDuty

\- Security aggregation with Security Hub

\- CI/CD for infrastructure workflows



\---



\## Future Improvements



\- IAM least privilege roles

\- Multi-account security aggregation

\- SIEM integration with CloudWatch or Splunk

\- Controlled Terraform apply workflows

\- Enhanced logging and monitoring



\---



\## Author



Cody  

Aspiring Cloud Security Engineer focused on AWS, Terraform, and security automation



\---



\## Notes



This project is intended for demonstration and portfolio use.

