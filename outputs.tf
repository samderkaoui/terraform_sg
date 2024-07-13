output "sg_ssh_id" {
  value           = aws_security_group.sg_ssh.id
}

output "sg_ssh_bastion_id" {
  value           = aws_security_group.sg_ssh_bastion.id
}
