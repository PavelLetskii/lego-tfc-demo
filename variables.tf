variable "vpc_name" {
  default = "one_workspace_vpc"
}

variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "azs_list" {
  type = list
  default = [
    "eu-west-1a",
    "eu-west-1b",
    "eu-west-1c"
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
variable "cluster_version" {
  default = "1.21"
}

variable "cluster_name" {
  default = "lego-demo-one-workspace-cluster"
}

variable "instance_type" {
  default = "m5.large"
}

variable "asg_max_size" {
  default = 6
}

variable "asg_desired_capacity" {
  default = 5
}
