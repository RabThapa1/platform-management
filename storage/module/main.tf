resource "azurerm_storage_account" "example"{
    name = var.name
    resource_group_name = data.azurerm_resource_group.name
    location = data.azurerm_resource_group.location
    account_tier = var.account_tier
    account_replication = var.account_replication
}