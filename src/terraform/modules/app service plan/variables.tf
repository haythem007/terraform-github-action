variable "app_service_plan_name" {
  description = "The name of the App Service Plan."
}

variable "location" {
  description = "The Azure region where the App Service Plan will be created."
}

variable "resource_group_name" {
  description = "The name of the resource group in which the App Service Plan will be created."
}

variable "app_service_plan_kind" {
  description = "The kind of App Service Plan."
  default     = "Windows"
}

variable "app_service_plan_tier" {
  description = "The tier of the App Service Plan."
  default     = "Standard"
}

variable "app_service_plan_size" {
  description = "The size of the App Service Plan."
  default     = "S1"
}
