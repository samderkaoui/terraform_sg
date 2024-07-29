output "sg_ssh_o" {
  value = aws_security_group.sg_ssh.id
}

output "sg_web_o" {
  value = aws_security_group.sg_web.id
}
