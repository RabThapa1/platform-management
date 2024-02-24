resource "azurerm_key_vault" "current"{
    for_each = {for env in var.environment : env.environment => env}
    name = "kv-${each.value.environment}-${var.projectname}"
    resource_group_name = each.value.resource_group_name
    location = each.value.location
    enabled_for_disk_encryption = var.enabled_for_disk_encryption
    soft_delete_retention_days = var.soft_delete_retention_days
    purge_protection_enabled = var.purge_protection_enabled
    sku_name = var.sku
    tenant_id = var.tenant_id
}