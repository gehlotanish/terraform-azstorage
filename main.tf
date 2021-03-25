provider azurerm {
  features {}
}

locals {
  tags = {
    "Environment" = var.environment
    "Cloud"       = "az"
  }
}

resource "azurerm_resource_group" "example" {
  name     = var.azure_resource_group_name
  location = var.default_location
}

resource "azurerm_storage_account" "example" {
  name                     = var.storage_name
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_kind             = "StorageV2"
  account_tier             = "Standard"
  account_replication_type = "LRS"
  access_tier              = "Cool"
  min_tls_version          = "TLS1_2"

  tags = local.tags
}

resource "azurerm_storage_container" "example" {
  name                  = var.storage_account_container
  storage_account_name  = azurerm_storage_account.example.name
  container_access_type = "private"
}

