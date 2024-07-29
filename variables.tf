variable "vpc_id" {
  description = "VPC ID"
  type        = string
}

variable "sg_web_description" {
  description = "SG WEB"
  type        = string
  default     = "Ouvre port 80 et 443"
}

variable "sg_externe_ssh" {
  description = "SG SSH EXTERNE"
  type        = string
  default     = "Ouvre port 22 pour INTERNET"
}

variable "sg_interne_ssh" {
  description = "SG SSH INTERNE"
  type        = string
  default     = "Ouvre port 22 pour tout le reseau LOCAL"
}

variable "sg_openvpn" {
  description = "SG SSH INTERNE"
  type        = string
  default     = "Ouvre port 1194 tcp/udp pour le serveur openvpn"
}

variable "sg_openall_ports" {
  description = "OPEN ALL PORTS LOCALLY"
  type        = string
  default     = "Ouvre tous les ports sur CIDR local pour faciliter gestion des ports"

}

variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
  default = {
    Terraformed = "true"
  }
}


