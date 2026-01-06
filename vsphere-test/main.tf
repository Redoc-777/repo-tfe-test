terraform {
  required_providers {
    vsphere = {
      source  = "terraform.munilab.intra/bbo/vsphere"
      version = "2.15.0"
    }
  }
}

provider "vsphere" {
  user           = var.vsphere_user
  password       = var.vsphere_password
  vsphere_server = var.vsphere_server
  
  # If you have self-signed certificates
  allow_unverified_ssl = var.allow_unverified_ssl
}

# Data source to test connectivity
data "vsphere_datacenter" "dc" {
  name = var.datacenter_name
}

# Output to verify it works
output "datacenter_id" {
  value       = data.vsphere_datacenter.dc.id
  description = "The ID of the datacenter"
}

output "datacenter_name" {
  value       = data.vsphere_datacenter.dc.name
  description = "The name of the datacenter"
}
