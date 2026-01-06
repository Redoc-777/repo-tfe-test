variable "vsphere_server" {
  description = "vSphere server hostname or IP"
  type        = string
}

variable "vsphere_user" {
  description = "vSphere username"
  type        = string
}

variable "vsphere_password" {
  description = "vSphere password"
  type        = string
  sensitive   = true
}

variable "datacenter_name" {
  description = "Name of the vSphere datacenter"
  type        = string
}

variable "allow_unverified_ssl" {
  description = "Allow self-signed SSL certificates"
  type        = bool
  default     = true
}
