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
```
