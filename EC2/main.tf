resource "aws_instance" "this" {
  count = var.environment == "prod" ? 1 : 0
  ami                     = var.ec2_ami
  instance_type           = var.instance_type
  subnet_id               = var.ec2_subnet
  tags = var.ec2_tags
}