resource "aws_security_group" "sg_ssh" {
  name                        = "sg_ssh"
  description                 = var.sg_ssh_description
  vpc_id                      = var.vpc_id

  ingress {
    description               = "SSH in"
    from_port                 = 22
    to_port                   = 22
    protocol                  = "tcp"
    cidr_blocks               = ["0.0.0.0/0"] 
  }
  
  egress {
    from_port                 = 0
    to_port                   = 0
    protocol                  = "-1"
    cidr_blocks               = ["0.0.0.0/0"]
  }

  tags = merge(
    var.tags,
    {
      Name = "sg_ssh"
    }
  )
}

resource "aws_security_group" "sg_web" {
  name                        = "sg_web"
  description                 = var.sg_web_description
  vpc_id                      = var.vpc_id

  ingress {
    description               = "HTTP in"
    from_port                 = 80
    to_port                   = 80
    protocol                  = "tcp"
    cidr_blocks               = ["0.0.0.0/0"] 
  }

    ingress {
    description               = "HTTPS in"
    from_port                 = 443
    to_port                   = 443
    protocol                  = "tcp"
    cidr_blocks               = ["0.0.0.0/0"] 
  }
  
  egress {
    from_port                 = 0
    to_port                   = 0
    protocol                  = "-1"
    cidr_blocks               = ["0.0.0.0/0"]
  }

  tags = merge(
    var.tags,
    {
      Name = "sg_web"
    }
  )
}
