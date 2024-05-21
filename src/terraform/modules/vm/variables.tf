variable "vm_name" {
  description = "The name of the virtual machine."
}

variable "location" {
  description = "The Azure region where the virtual machine will be created."
}

variable "resource_group_name" {
  description = "The name of the resource group in which the virtual machine will be created."
}

variable "network_interface_id" {
  description = "The ID of the network interface associated with the virtual machine."
}

variable "vm_size" {
  description = "The size of the virtual machine."
}

variable "image_publisher" {
  description = "The publisher of the virtual machine image."
}

variable "image_offer" {
  description = "The offer of the virtual machine image."
}

variable "image_sku" {
  description = "The SKU of the virtual machine image."
}

variable "image_version" {
  description = "The version of the virtual machine image."
}

variable "os_disk_name" {
  description = "The name of the OS disk."
}

variable "os_disk_caching" {
  description = "The caching type of the OS disk."
  default     = "ReadWrite"
}

variable "os_disk_managed_disk_type" {
  description = "The type of managed disk for the OS disk."
  default     = "Standard_LRS"
}

variable "computer_name" {
  description = "The computer name of the virtual machine."
}

variable "admin_username" {
  description = "The admin username of the virtual machine."
}

variable "admin_password" {
  description = "The admin password of the virtual machine."
}
