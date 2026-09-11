variable "project_name" {
  description = "Project name used for resource naming and tagging"
  type        = string
}

variable "vpc_id" {
  description = "ID of the VPC where the subnet will be created"
  type        = string
}

variable "subnet_cidr" {
  description = "CIDR block for the subnet"
  type        = string
}

variable "availability_zone" {
  description = "Availability Zone for the subnet"
  type        = string
}
