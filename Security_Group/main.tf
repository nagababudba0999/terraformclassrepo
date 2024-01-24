//creates security group 
resource "aws_security_group" "allow_tls" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic"
  vpc_id      = var.vpc_id
  dynamic "ingress" {
    for_each = var.sg_ports
    iterator = port
    content {
        description      = "TLS from VPC"
        from_port        = port.value
        to_port          = port.value
        protocol         = "tcp"
        cidr_blocks      = var.sg_cidr_block
    }
  }
  dynamic "egress" {
    for_each = var.sg_ports
    content {
        description      = "TLS from VPC"
        from_port        = egress.value
        to_port          = egress.value
        protocol         = "tcp"
        cidr_blocks      = var.sg_cidr_block
    }
  }
  tags = var.sg_tags
}
