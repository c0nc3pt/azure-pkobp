module "resource_group" {
    providers               = {
        azurerm             = azurerm.provider-dev
    }

    source                  = "../../modules/resource-group"
    
    name                    = var.rg_name
    location                = var.rg_location

    tag_app                 = var.rg_tag_app
    tag_businessowner       = var.rg_tag_businessowner
    tag_env                 = var.rg_tag_env
    tag_ssgw                = var.rg_tag_ssgw
    tag_platforma           = var.rg_tag_platforma
    tag_description         = var.rg_tag_description
    
    lock_level              = var.rg_lock_level
}

module "virtual_network" {

    providers               = {
        azurerm             = azurerm.provider-dev
    }

    source                  = "../../modules/virtual-network"

    name                    = var.vnet_name
    rg_name                 = module.resource_group.name
    rg_location             = module.resource_group.location
    
    address_space           = var.vnet_address_space
    dns_servers             = var.vnet_dns_servers
}