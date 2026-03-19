aws_region      = "us-east-1"
environment     = "prod"
vpc_cidr        = "10.1.0.0/16"
public_subnets  = ["10.1.1.0/24"]
private_subnets = ["10.1.2.0/24"]

my_public_ips = [
  "104.179.87.81/32",
  "104.188.144.31/32"
]

ec2_key_name  = "EC2 TUTORIAL"
ami_id        = "ami-0c02fb55956c7d316"
instance_type = "t3.micro"