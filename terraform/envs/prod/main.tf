terraform {
  backend "s3" {
    bucket         = "cloudshield-terraform-state-93c6cd07"
    key            = "prod/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "cloudshield-terraform-locks"
  }
}

provider "aws" {
  region = var.aws_region
}

module "network" {
  source = "../../modules/network"

  environment     = var.environment
  vpc_cidr        = var.vpc_cidr
  public_subnets  = var.public_subnets
  private_subnets = var.private_subnets
  my_public_ips   = var.my_public_ips
}

module "iam" {
  source = "../../modules/iam"

  environment = var.environment
}

module "ec2" {
  source = "../../modules/ec2"

  environment                = var.environment
  ami_id                     = var.ami_id
  instance_type              = var.instance_type
  public_subnet_id           = module.network.public_subnet_ids[0]
  public_security_group_ids  = [module.network.public_sg_id]
  private_subnet_id          = module.network.private_subnet_ids[0]
  private_security_group_ids = [module.network.private_sg_id]
  key_name                   = var.ec2_key_name
  iam_instance_profile       = module.iam.ec2_instance_profile_name
}

output "vpc_id" {
  value = module.network.vpc_id
}

output "public_subnet_ids" {
  value = module.network.public_subnet_ids
}

output "private_subnet_ids" {
  value = module.network.private_subnet_ids
}

output "public_ec2_id" {
  value = module.ec2.public_instance_id
}

output "private_ec2_id" {
  value = module.ec2.private_instance_id
}

output "public_ec2_public_ip" {
  value = module.ec2.public_instance_public_ip
}

output "public_ec2_private_ip" {
  value = module.ec2.public_instance_private_ip
}

output "private_ec2_private_ip" {
  value = module.ec2.private_instance_private_ip
}