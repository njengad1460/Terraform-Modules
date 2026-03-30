provider "aws" {
  region = "us-east-1"
}

module "webserver_cluster" {
  # Path points from Live/prod/ to the modules folder
  source = "../../modules/services/webserver-cluster"

  # Production-specific values
  cluster_name  = "webservers-prod"
  instace_type = "t3.micro" # Increased for production traffic
  server_port   = 80        # Standard HTTP port for production
  
  # Different CIDR to avoid overlap if you ever peer these VPCs
  vpc_cidr            = "11.0.0.0/16"
  public_subnet_cidrs = ["11.0.1.0/24", "11.0.2.0/24"]
}

