variable "service_bus_namespace_name" {
  description = "The name of the Service Bus namespace."
}

variable "location" {
  description = "The Azure region where the Service Bus namespace will be created."
}

variable "resource_group_name" {
  description = "The name of the resource group in which the Service Bus namespace will be created."
}

variable "service_bus_sku" {
  description = "The SKU (pricing tier) of the Service Bus namespace."
  default     = "Standard"
}

variable "service_bus_capacity" {
  description = "The capacity of the Service Bus namespace."
  default     = 1
}
