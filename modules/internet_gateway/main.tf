resource "aws_internet_gateway" "this" {
  vpc_id = var.vpc_id

  tags = {
    Name    = "${var.project_name}-igw"
    Project = var.project_name
  }
}
