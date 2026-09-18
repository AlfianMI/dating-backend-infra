module "ecr" {
  source = "./modules/ecr"

  project_name         = var.project_name
  image_tag_mutability = "IMMUTABLE"
}
