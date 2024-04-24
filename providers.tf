terraform {
  required_providers {
    proxmox = {
        source = "registry.terraform.io/telmate/proxmox"
        version = ">= 1.0.0"
    }
  }
  required_version = ">= 0.14"
}

provider "proxmox" {
  pm_tls_insecure = true
  pm_api_url = "https://192.168.1.70:8006/api2/json"
  pm_api_token_id = var.pm_api_token_id
  pm_api_token_secret = var.pm_api_token_secret
}