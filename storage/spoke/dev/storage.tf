module "storage_account_1" {
  source              = "../../module"
  name                = local.name
  account_tier        = local.account_tier
  resource_group_name = local.resource_group_name
  location            = local.location
  account_replication = local.account_replication

}