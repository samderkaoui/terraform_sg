# terraform_sg
Module SG

```
module "terraform_sg" {
  source = "github.com/Kaiser016X/terraform_sg"

  vpc_id = module.terraform_vpc.vpc_id

  tags = {
    "Terraformed" = "True"
  }

}

#SG
output "sg_ssh" {
  value = module.terraform_sg.sg_ssh_o
}

output "sg_web" {
  value = module.terraform_sg.sg_web_o
}
```
