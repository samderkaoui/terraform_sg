variable "vpc_id" {
  description = "VPC ID"
  type        = string
}

variable "sg_web_description" {
  description = "SG WEB"
  type        = string
  default     = "Ouvre port 80 et 443"
}

variable "sg_ssh_description" {
  description = "SG SSH"
  type        = string
  default     = "Ouvre port 22"
}
