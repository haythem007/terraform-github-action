variable "resource_group_name" {
  type        = string
  description = "The name of the resource group."
  default = "rg-haythem-example-resources"
}


variable "location" {
  type        = string
  description = "The Azure region where resources will be created."
  default = "westeurope"
}

variable "app_service_plan_name" {
  type        = string
  description = "The name of the App Service Plan."
 
}

variable "app_service_name" {
  type        = string
  description = "The name of the App Service."

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







# Add other variables with types as needed for your project
