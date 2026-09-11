variable "project_name" {
  description = "Project name used for resource naming and tagging"
  type        = string
}

variable "vpc_id" {
  description = "ID of the VPC where the Internet Gateway will be attached"
  type        = string
}
