resource "azurerm_storage_account" "example"{
    for_each = {for env in var.environment : env.environment => env}

    name = "sa${each.value.environment}${var.name}"
    resource_group_name = each.value.resource_group_name
    location = each.value.location
    account_tier = var.account_tier
    account_replication_type = var.account_replication_type
}