################################## SSH Internet
resource "aws_security_group" "sg_externe_ssh" {
  name        = "sg_externe_ssh"
  description = var.sg_externe_ssh
  vpc_id      = var.vpc_id

  ingress {
    description = "SSH in"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = merge(
    var.tags,
    {
      Name = "sg_externe_ssh"
    }
  )
}

############################## SSH LOCAL CIDR

resource "aws_security_group" "sg_interne_ssh" {
  name        = "sg_interne_ssh"
  description = var.sg_interne_ssh
  vpc_id      = var.vpc_id

  ingress {
    description = "SSH in"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [
      "10.0.1.0/24",
      "10.0.2.0/24",
      "10.0.101.0/24",
      "10.0.102.0/24"
    ]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = merge(
    var.tags,
    {
      Name = "sg_interne_ssh"
    }
  )
}

############################## WEB 

resource "aws_security_group" "sg_web" {
  name        = "sg_web"
  description = var.sg_web_description
  vpc_id      = var.vpc_id

  ingress {
    description = "HTTP in"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "HTTPS in"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = merge(
    var.tags,
    {
      Name = "sg_web"
    }
  )
}

################################## OPENVPN

resource "aws_security_group" "sg_openvpn" {
  name        = "sg_openvpn"
  description = var.sg_openvpn
  vpc_id      = var.vpc_id

  ingress {
    description = "OpenVPN TCP"
    from_port   = 1194
    to_port     = 1194
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "OpenVPN UDP"
    from_port   = 1194
    to_port     = 1194
    protocol    = "udp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = merge(
    var.tags,
    {
      Name = "sg_openvpn"
    }
  )
}




############################ OUVRIR Tous les ports

resource "aws_security_group" "sg_openall_ports" {
  name        = "sg_openall_ports"
  description = var.sg_openall_ports
  vpc_id      = var.vpc_id

  ingress {
    description = "SSH in"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [
      "10.0.1.0/24",
      "10.0.2.0/24",
      "10.0.101.0/24",
      "10.0.102.0/24"
    ]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = merge(
    var.tags,
    {
      Name = "sg_openall_ports"
    }
  )
}