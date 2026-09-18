module "subnet" {
  source = "./modules/subnet"

  project_name      = var.project_name
  vpc_id            = module.vpc.vpc_id
  subnet_cidr       = var.public_subnet_cidr
  availability_zone = var.availability_zone
}
