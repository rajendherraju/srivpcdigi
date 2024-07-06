aws_profile            = "rajender-vedific-admin"
region                 = "ap-south-1"
vpc_base_cidr          = "10.4.0.0/16"
enable_dns_hostnames   = true
enable_dns_support     = true
one_nat_gateway_per_az = false
vpc_name               = "devops-srishti-dev"
azs                    = ["ap-south-1a", "ap-south-1b"]
private_subnets        = ["10.4.32.0/24", "10.4.33.0/24"]

private_subnet_tags    = { subnet_type = "private" }
public_subnets         = ["10.4.34.0/24", "10.4.35.0/24"]

public_subnet_tags     = { 
  subnet_type = "public" 
  "kubernetes.io/cluster/devops-stage" = "shared"
  "kubernetes.io/role/elb"  = "1"
}
database_subnets       = ["10.4.36.0/24", "10.4.37.0/24"]

database_subnets_tags  = { subnet_type = "db" }
common_tags = {
  "owner"     = "rajender"
  "env"       = "rajender-dev"
  "terraform" = "true"
  "project"   = "vpc"
  "purpose"   = "networking"
}
