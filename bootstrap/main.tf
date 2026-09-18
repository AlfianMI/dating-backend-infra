module "terraform_state" {
  source = "../modules/s3"

  bucket_name  = "dating-backend-terraform-state-992382472679"
  project_name = "dating-backend"
}
