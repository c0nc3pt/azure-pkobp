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

# NOTE: Przyklad subnetu, w ktorym mozna tworzyc private link endpoint, nie mozna private link service i nie ma service endpoint 
module "subnet_10_245_0_0__25" {
    providers               = {
        azurerm             = azurerm.provider-dev
    }

    source                                         = "../../modules/subnet"

    subnet_name                                    = var.subnet_name_10_245_0_0__25
    
    rg_name                                        = module.resource_group.name
    vnet_name                                      = module.virtual_network.name

    address_space                                  = var.subnet_address_space_10_245_0_0__25

    private_link_endpoint_network_policies         = var.subnet_private_link_endpoint_network_policies_10_245_0_0__25
    private_link_service_network_policies          = var.subnet_private_link_service_network_policies_10_245_0_0__25

    service_endpoints                              = var.subnet_service_endpoints_10_245_0_0__25
    service_endpoint_policy_ids                    = var.subnet_service_endpoint_policy_ids_10_245_0_0__25
}

# NOTE: Przyklad subnetu, w ktorym nie mozna tworzyc private link endpoint, private link service i nie ma service endpoint 
module "subnet_10_245_0_128__25" {
    providers               = {
        azurerm             = azurerm.provider-dev
    }

    source                                         = "../../modules/subnet"

    subnet_name                                    = var.subnet_name_10_245_0_128__25
    
    rg_name                                        = module.resource_group.name
    vnet_name                                      = module.virtual_network.name

    address_space                                  = var.subnet_address_space_10_245_0_128__25

    private_link_endpoint_network_policies         = var.subnet_private_link_endpoint_network_policies_10_245_0_128__25
    private_link_service_network_policies          = var.subnet_private_link_service_network_policies_10_245_0_128__25

    service_endpoints                              = var.subnet_service_endpoints_10_245_0_128__25
    service_endpoint_policy_ids                    = var.subnet_service_endpoint_policy_ids_10_245_0_128__25
}


# NOTE: Przyklad subnetu, w ktorym nie mozna tworzyc private link endpoint, private link service, ale sa service endpoint 
module "subnet_10_245_1_0__25" {
    providers               = {
        azurerm             = azurerm.provider-dev
    }

    source                                         = "../../modules/subnet"

    subnet_name                                    = var.subnet_name_10_245_1_0__25
    
    rg_name                                        = module.resource_group.name
    vnet_name                                      = module.virtual_network.name

    address_space                                  = var.subnet_address_space_10_245_1_0__25

    private_link_endpoint_network_policies         = var.subnet_private_link_endpoint_network_policies_10_245_1_0__25
    private_link_service_network_policies          = var.subnet_private_link_service_network_policies_10_245_1_0__25

    service_endpoints                              = var.subnet_service_endpoints_10_245_1_0__25
    service_endpoint_policy_ids                    = var.subnet_service_endpoint_policy_ids_10_245_1_0__25

}


# NOTE: Przyklad subnetu, w ktorym nie mozna tworzyc private link endpoint, private link service, nie ma service endpoint ale jest utworzona delegacja

module "subnet_10_245_1_128__25" {
    providers               = {
        azurerm             = azurerm.provider-dev
    }

    source                                         = "../../modules/subnet"

    subnet_name                                    = var.subnet_name_10_245_1_128__25
    
    rg_name                                        = module.resource_group.name
    vnet_name                                      = module.virtual_network.name

    address_space                                  = var.subnet_address_space_10_245_1_128__25

    private_link_endpoint_network_policies         = var.subnet_private_link_endpoint_network_policies_10_245_1_128__25
    private_link_service_network_policies          = var.subnet_private_link_service_network_policies_10_245_1_128__25

    service_endpoints                              = var.subnet_service_endpoints_10_245_1_128__25
    service_endpoint_policy_ids                    = var.subnet_service_endpoint_policy_ids_10_245_1_128__25

    subnet_delegation                              = var.subnet_delegation_10_245_1_128__25
}


/*
module "subnet" {

    providers               = {
        azurerm             = azurerm.provider-dev
    }

    source                  = "../../modules/subnet"

    name                    = var.vnet_name
    rg_name                 = module.resource_group.name
    rg_location             = module.resource_group.location

    address_space           = [ "10.245.0.0/25" ]
}

module "subnet" {

    providers               = {
        azurerm             = azurerm.provider-dev
    }

    source                  = "../../modules/subnet"

    name                    = var.vnet_name
    rg_name                 = module.resource_group.name
    rg_location             = module.resource_group.location


    subnet_name             = var.subnet_names
    address_space_new       = var.subnet_address

}


module "subnet" {

    providers               = {
        azurerm             = azurerm.provider-dev
    }

    source                  = "../../modules/subnet"

    name                    = var.vnet_name
    rg_name                 = module.resource_group.name
    rg_location             = module.resource_group.location

    subnet_name            = var.subnet_name_project_name_1
    subnet_address         = var.subnet_address_project_name_1
}

module "subnet" {

    providers               = {
        azurerm             = azurerm.provider-dev
    }

    source                  = "../../modules/subnet"

    name                    = var.vnet_name
    rg_name                 = module.resource_group.name
    rg_location             = module.resource_group.location

    subnet_name            = var.subnet_name_project_name_2
    subnet_address         = var.subnet_address_project_name_2
}

module "subnet" {

    providers               = {
        azurerm             = azurerm.provider-dev
    }

    source                  = "../../modules/subnet"

    name                    = var.vnet_name
    rg_name                 = module.resource_group.name
    rg_location             = module.resource_group.location

    subnet_name            = var.subnet_name_project_name_3
    subnet_address         = var.subnet_address_project_name_3
}
*/