output "subnet_id" {
  description = "ID of the subnet"
  value       = aws_subnet.this.id
}

output "subnet_cidr" {
  description = "CIDR block of the subnet"
  value       = aws_subnet.this.cidr_block
}
