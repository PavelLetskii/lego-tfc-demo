###
variable "cluster_version" {
  default = "1.21"
}

variable "cluster_name" {
  default = "lego-demo-cluster-a"
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
