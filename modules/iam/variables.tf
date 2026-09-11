variable "project_name" {
  description = "Project name used for resource naming"
  type        = string
}

variable "instance_profile_name" {
  description = "Existing EC2 instance profile name"
  type        = string
}

variable "aws_region" {
  description = "AWS region"
  type        = string
}

variable "aws_account_id" {
  description = "AWS account ID"
  type        = string
}