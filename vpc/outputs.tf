output "vpc_id" {
  description = "ID of the VPC"
  value       = aws_vpc.this.id
}

output "public_subnets" {
  description = "Public Subnets"
  value       = aws_subnet.public
}

output "private_subnets" {
  description = "Private Subnets"
  value       = aws_subnet.private
}

output "igw_id" {
  description = "Internet Gateway ID"
  value       = aws_internet_gateway.this.id
}
