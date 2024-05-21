variable "key_vault_name" {
  description = "The name of the Key Vault."
}

variable "location" {
  description = "The Azure region where the Key Vault will be created."
}

variable "resource_group_name" {
  description = "The name of the resource group in which the Key Vault will be created."
}

variable "tenant_id" {
  description = "The Tenant ID of the Azure Active Directory."
}

variable "object_id" {
  description = "The Object ID of the Azure Active Directory."
}

variable "key_vault_sku_name" {
  description = "The SKU (pricing tier) of the Key Vault."
  default     = "standard"
}

variable "enabled_for_deployment" {
  description = "Whether the Key Vault is enabled for deploying resources such as VMs."
  default     = true
}

variable "enabled_for_disk_encryption" {
  description = "Whether the Key Vault is enabled for disk encryption."
  default     = true
}

variable "enabled_for_template_deployment" {
  description = "Whether the Key Vault is enabled for deploying resources via ARM templates."
  default     = true
}
