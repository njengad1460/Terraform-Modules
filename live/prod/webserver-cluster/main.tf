provider "aws" {
  region = "us-east-1"
}

module "webserver_cluster" {
  source = "../../../modules/webserver-cluster"

  # Networking
  vpc_cidr            = var.vpc_cidr
  vpc_name            = var.vpc_name
  public_subnet_cidrs = var.public_subnet_cidrs
  availability_zones  = var.availability_zones

  # Compute
  instance_type    = var.instance_type
  desired_capacity = var.desired_capacity
  min_size         = var.min_size
  max_size         = var.max_size
}

output "alb_url" {
  description = "Public URL of the load balancer"
  value       = module.webserver_cluster.alb_dns_name
}