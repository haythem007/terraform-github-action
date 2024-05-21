output "storage_account_id" {
  description = "The ID of the storage account."
  value       = azurerm_storage_account.example.id
}

output "storage_account_name" {
  description = "The name of the storage account."
  value       = azurerm_storage_account.example.name
}

output "primary_access_key" {
  description = "The primary access key of the storage account."
  value       = azurerm_storage_account.example.primary_access_key
}
