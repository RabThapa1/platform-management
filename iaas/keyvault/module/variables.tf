variable "projectname"{
    type = string
}

variable "environment"{
    type = list(object({
        environment = string
        resource_group_name = string
        location = string

    }))
}

variable "sku"{
    type = string
}

variable "soft_delete_retention_days"{
    type = number
}

variable "enabled_for_disk_encryption"{
    type = bool
}

variable "purge_protection_enabled"{
    type = bool
}

variable "tenant_id"{
    type = string
}