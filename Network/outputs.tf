output "vpc_id" {
    value = aws_vpc.example.id
}

output "vpc_arn" {
    value = aws_vpc.example.arn
}

output "vpc_cidr" {
    value = aws_vpc.example.cidr_block
}

output "subnet_id" {
    value = aws_subnet.main.id
}