module "storage_account_1" {
  source                   = "../../module"
  name                     = "staccount"
  account_tier             = "Standard"
  account_replication_type = "GRS"

  environment = [{
    environment         = "d"
    resource_group_name = "rg_d_st_account"
    location            = "australiaeast"
  }]
}