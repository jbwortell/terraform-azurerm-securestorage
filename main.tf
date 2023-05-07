terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}

locals {
  tags = {
    "environement" = var.environment
  }
}

resource "azurerm_storage_account" "securestorage" {
    resource_group_name = var.resource_group_name
    location = var.location
    name = var.storage_account_name
    access_tier = "Standard"
    account_replication_type = var.environement == "Production" ? "GRS" : "LRS"
    public_network_access_enabled = false

    tags = local.tags
}
