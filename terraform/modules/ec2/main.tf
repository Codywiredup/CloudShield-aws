##########################
# Variables
##########################
variable "environment" {
  description = "Environment name"
  type        = string
}

variable "ami_id" {
  description = "AMI ID for the EC2 instances"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}

variable "public_subnet_id" {
  description = "Public subnet ID for the public EC2"
  type        = string
}

variable "public_security_group_ids" {
  description = "Security groups for the public EC2"
  type        = list(string)
}

variable "private_subnet_id" {
  description = "Private subnet ID for the private EC2"
  type        = string
}

variable "private_security_group_ids" {
  description = "Security groups for the private EC2"
  type        = list(string)
}

variable "key_name" {
  description = "EC2 key pair name"
  type        = string
}

variable "iam_instance_profile" {
  description = "IAM instance profile name"
  type        = string
}

##########################
# Public EC2
##########################
resource "aws_instance" "public" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  subnet_id              = var.public_subnet_id
  vpc_security_group_ids = var.public_security_group_ids
  key_name               = var.key_name
  iam_instance_profile   = var.iam_instance_profile

  tags = {
    Name = "${var.environment}-public-ec2"
  }
}

##########################
# Private EC2
##########################
resource "aws_instance" "private" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  subnet_id              = var.private_subnet_id
  vpc_security_group_ids = var.private_security_group_ids
  key_name               = var.key_name
  iam_instance_profile   = var.iam_instance_profile

  tags = {
    Name = "${var.environment}-private-ec2"
  }
}

##########################
# Outputs
##########################
output "public_instance_id" {
  value = aws_instance.public.id
}

output "private_instance_id" {
  value = aws_instance.private.id
}
output "public_instance_public_ip" {
  value = aws_instance.public.public_ip
}

output "public_instance_private_ip" {
  value = aws_instance.public.private_ip
}

output "private_instance_private_ip" {
  value = aws_instance.private.private_ip
}