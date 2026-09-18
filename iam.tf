module "iam" {
  source = "./modules/iam"

  project_name          = var.project_name
  instance_profile_name = var.instance_profile_name
  aws_region            = var.aws_region
  aws_account_id        = var.aws_account_id
}
