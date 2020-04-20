variable "base_domain" {}
variable "do_token" {}

provider "digitalocean" {
    token = var.do_token
}

data "digitalocean_ssh_key" "default" {
  name = "default"
}

data "digitalocean_domain" "default" {
  name = var.base_domain
}

