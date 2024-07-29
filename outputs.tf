output "sg_web_description" {
  value = aws_security_group.sg_web.id
}

output "sg_externe_ssh" {
  value = aws_security_group.sg_externe_ssh.id
}

output "sg_interne_ssh" {
  value = aws_security_group.sg_interne_ssh.id
}

output "sg_openvpn" {
  value = aws_security_group.sg_openvpn.id
}

output "sg_openall_ports" {
  value = aws_security_group.sg_openall_ports.id
}