terraform  {
    required_providers {
        azurerm = {
            source = "hashicorp/azurerm"
            version = "3.93.0"
        }
    }

    backend "azurerm"{
        resource_group_name = "rg_d_st_account"
        storage_account_name = "sahtfstatetinfosolution"
        container_name = "tfstate"
        key = "platform_management.terraform.tfstate"
    }
}