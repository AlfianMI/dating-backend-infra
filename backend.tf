terraform {
  backend "s3" {
    bucket       = "dating-backend-terraform-state-992382472679"
    key          = "dating-backend/terraform.tfstate"
    region       = "ap-southeast-1"
    encrypt      = true
    use_lockfile = true
  }
}
