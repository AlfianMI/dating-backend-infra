module "internet_gateway" {
  source = "./modules/internet_gateway"

  project_name = var.project_name
  vpc_id       = module.vpc.vpc_id
}
