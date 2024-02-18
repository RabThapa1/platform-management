locals {
  name                = "sa_d_st_account"
  account_tier        = "standard"
  account_replication = "GRS"
  resource_group_name = data.azurerm_resource_group.name
  location            = data.azurerm_resource_group.location
}