module "az400kv" {
  source                      = "../../module/"
  projectname                 = "az400kv"
  sku                         = "standard"
  soft_delete_retention_days  = 7
  enabled_for_disk_encryption = true
  tenant_id                   = "1317c15e-821b-44aa-992e-632ee6089d2c"
  purge_protection_enabled    = true
  environment = [{
    environment         = "np"
    resource_group_name = "rg_np_kv_test"
    location            = "australiaeast"
    }

  ]

}