resource "aws_instance" "example" {
  ami           = var.ami_id
  instance_type = var.environment == "dev" ? "t3.micro" : "t3.small"
  vpc_security_group_ids = [aws_security_group.allow_tls.id]

  tags = var.tags
}


resource "aws_security_group" "allow_tls" {
  name        = var.sg_group
  description = var.sg_group_discription

  egress {
    from_port        = var.sg_from_port
    to_port          = var.sg_to_port
    protocol         = var.sg_protocol
    cidr_blocks      = var.sg_cidr_block
    ipv6_cidr_blocks = ["::/0"]
  }

  ingress {
    from_port        = var.sg_from_port
    to_port          = var.sg_to_port
    protocol         = var.sg_protocol
    cidr_blocks      = var.sg_cidr_block
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = var.sg_tags
}