####
variable "cluster_version" {
  default = "1.21"
}

variable "cluster_name" {
  default = "lego-demo-cluster-a"
}

variable "instance_type" {
  default = "m4.large"
}

variable "asg_max_size" {
  default = 5
}
