# Create a VPC
resource "aws_vpc" "example" {
  cidr_block = var.vpc_cidr
  #count = 
  tags = var.vpc_tags
  lifecycle {
    prevent_destroy = false
  }
}

#Create subnets referifng the Vpc that got created
resource "aws_subnet" "main" {
  vpc_id     = aws_vpc.example.id
  depends_on = [aws_vpc.example]
  cidr_block = var.subnet_cidr
  tags = var.vpc_tags
  lifecycle {
    ignore_changes = [tags]
  }
} 