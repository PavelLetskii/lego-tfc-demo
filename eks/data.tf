data "terraform_remote_state" "vpc" {
  backend = "remote"
  config = {
    organization = "lego-tfc-demo"
    workspaces = {
      name = "lego-tfc-demo-vpc"
    }
  }
}
