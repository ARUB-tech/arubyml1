module "rg" {
    source = "../child/rg"
    rg_name = "arub"
    location = "westus"
}

module "sa" {
    source ="../child/sa"
    depends_on = [ module.rg ]
    storage_name = "arub123"
    rg_name = "arub"
    location = "westus"
    account_tier = "Standard"
    account_replication_type = "GRS"

  
}