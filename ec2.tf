module "ec2" {
  source = "./modules/ec2"

  project_name          = var.project_name
  ami_id                = var.ami_id
  instance_type         = var.instance_type
  subnet_id             = module.subnet.subnet_id
  security_group_id     = module.security_group.security_group_id
  instance_profile_name = module.iam.instance_profile_name
  key_name              = var.key_name
}