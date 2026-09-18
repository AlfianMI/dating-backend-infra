module "route_table" {
  source = "./modules/route_table"

  project_name        = var.project_name
  vpc_id              = module.vpc.vpc_id
  subnet_id           = module.subnet.subnet_id
  internet_gateway_id = module.internet_gateway.internet_gateway_id
}
