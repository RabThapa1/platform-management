variable "name"{
    description = "Name for the storage account"
    type = string
}

variable "account_tier"{
    description = "Account tier type standard, premium etc"
    type = string
}

variable "account_replication_type"{
    description = "Account replication like LRS, GRS, GZRS etc"
    type = string
}
