variable "vpc_name" {
  default = "cluster_a_vpc"
}

variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "azs_list" {
  type = list
  default = [
    "eu-north-1a",
    "eu-north-1b",
    "eu-north-1c"
  ]
}

variable "private_subnets" {
  type = list
  default = [
    "10.0.1.0/24",
    "10.0.2.0/24",
    "10.0.3.0/24"
  ]
}

variable "public_subnets" {
  type = list
  default = [
    "10.0.101.0/24",
    "10.0.102.0/24",
    "10.0.103.0/24"
  ]
}

variable "enable_nat_gw" {
  default = true
}

variable "enable_vpn_gw" {
  default = true
}
