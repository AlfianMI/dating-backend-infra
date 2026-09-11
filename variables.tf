variable "aws_region" {
  description = "AWS region for the infrastructure"
  type        = string
}

variable "project_name" {
  description = "Project name used for resource naming and tagging"
  type        = string
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "public_subnet_cidr" {
  description = "CIDR block for the public subnet"
  type        = string
}

variable "availability_zone" {
  description = "Availability Zone for the public subnet"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}

variable "ami_ssm_parameter" {
  description = "SSM public parameter for the Amazon Linux 2023 AMI"
  type        = string
  default     = "/aws/service/ami-amazon-linux-latest/al2023-ami-kernel-default-x86_64"
}

variable "ssh_allowed_cidr" {
  description = "CIDR allowed to access SSH"
  type        = string
}

variable "app_port" {
  description = "Application port exposed by the EC2 security group"
  type        = number
  default     = 8080
}

variable "instance_profile_name" {
  description = "Existing EC2 instance profile to reuse"
  type        = string
}

variable "key_name" {
  description = "Existing EC2 key pair name"
  type        = string
}

variable "aws_account_id" {
  description = "AWS account ID"
  type        = string
}