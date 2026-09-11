module "vpc" {
  source = "./modules/vpc"

  project_name = var.project_name
  vpc_cidr     = var.vpc_cidr
}

module "subnet" {
  source = "./modules/subnet"

  project_name      = var.project_name
  vpc_id            = module.vpc.vpc_id
  subnet_cidr       = var.public_subnet_cidr
  availability_zone = var.availability_zone
}

module "internet_gateway" {
  source = "./modules/internet_gateway"

  project_name = var.project_name
  vpc_id       = module.vpc.vpc_id
}

module "route_table" {
  source = "./modules/route_table"

  project_name        = var.project_name
  vpc_id              = module.vpc.vpc_id
  subnet_id           = module.subnet.subnet_id
  internet_gateway_id = module.internet_gateway.internet_gateway_id
}

module "security_group" {
  source = "./modules/security_group"

  project_name     = var.project_name
  vpc_id           = module.vpc.vpc_id
  ssh_allowed_cidr = var.ssh_allowed_cidr
}

module "iam" {
  source = "./modules/iam"

  project_name          = var.project_name
  instance_profile_name = var.instance_profile_name
  aws_region            = var.aws_region
  aws_account_id        = var.aws_account_id
}

module "ec2" {
  source = "./modules/ec2"

  project_name          = var.project_name
  ami_ssm_parameter     = var.ami_ssm_parameter
  instance_type         = var.instance_type
  subnet_id             = module.subnet.subnet_id
  security_group_id     = module.security_group.security_group_id
  instance_profile_name = module.iam.instance_profile_name
  key_name              = var.key_name
}

module "ecr" {
  source = "./modules/ecr"

  project_name         = var.project_name
  image_tag_mutability = "IMMUTABLE"
}