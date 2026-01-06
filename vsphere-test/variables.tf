variable "vsphere_server" {
  description = "vSphere server hostname or IP address (e.g., vcenter.example.com)"
  type        = string
}

variable "vsphere_user" {
  description = "vSphere username for authentication (e.g., administrator@vsphere.local)"
  type        = string
}

variable "vsphere_password" {
  description = "vSphere password for authentication"
  type        = string
  sensitive   = true
}

variable "datacenter_name" {
  description = "Name of the vSphere datacenter to query"
  type        = string
}

variable "allow_unverified_ssl" {
  description = "Allow self-signed SSL certificates (set to true for test environments)"
  type        = bool
  default     = true
}
