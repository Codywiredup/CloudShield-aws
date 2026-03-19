# \# 🛡️ CloudShield AWS

# 

# CloudShield AWS is a \*\*cloud security-focused Terraform project\*\* designed to demonstrate real-world AWS infrastructure, security monitoring, and DevOps automation.

# 

# This project simulates how a cloud security engineer would design, deploy, and secure a production-ready AWS environment.

# 

# \---

# 

# \## 🚀 Key Features

# 

# \- ✅ Modular Terraform architecture

# \- ✅ Multi-environment setup (dev \& prod)

# \- ✅ Secure VPC design (public + private subnets)

# \- ✅ EC2 deployment with IAM roles

# \- ✅ Security Groups with restricted access

# \- ✅ AWS GuardDuty (threat detection)

# \- ✅ AWS Security Hub (centralized security posture)

# \- ✅ AWS CloudTrail (API auditing)

# \- ✅ CloudWatch Logs (log aggregation)

# \- ✅ Remote Terraform state (S3 + DynamoDB locking)

# \- ✅ GitHub Actions CI pipeline

# 

# \---

# 

# \## 🏗️ Architecture Overview

# 

# This project deploys:

# 

# \- \*\*VPC\*\* with CIDR segmentation  

# \- \*\*Public Subnet\*\*

# &#x20; - Internet-facing EC2 instance

# \- \*\*Private Subnet\*\*

# &#x20; - Internal EC2 instance

# \- \*\*Internet Gateway + NAT Gateway\*\*

# \- \*\*Security Groups\*\*

# &#x20; - SSH restricted to approved IPs

# \- \*\*IAM Role \& Instance Profile\*\*

# \- \*\*Security Monitoring Stack\*\*

# &#x20; - GuardDuty

# &#x20; - Security Hub

# &#x20; - CloudTrail

# &#x20; - CloudWatch

# 

# \---

# 

# \## ⚙️ Terraform Structure



