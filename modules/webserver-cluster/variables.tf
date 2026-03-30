variable "vpc_cidr" {
  description = "CIDR block for VPC"
  type        = string
}

variable "vpc_name" {
  description = "VPC name"
  type        = string
  default     = "demo-vpc"
}

variable "public_subnet_cidrs" {
  description = "Public subnet CIDRs"
  type        = list(string)
}

variable "availability_zones" {
  description = "Availability zones"
  type        = list(string)
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}

variable "desired_capacity" {
  description = "Desired instances in ASG"
  type        = number
}

variable "min_size" {
  description = "Minimum instances in ASG"
  type        = number
}

variable "max_size" {
  description = "Maximum instances in ASG"
  type        = number
}