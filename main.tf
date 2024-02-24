module "kv"{
    source = "./iaas/keyvault/spokes/nonprod"
}

module "storage"{
    source = "./storage/spoke/dev"
}