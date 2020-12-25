resource "azurerm_subnet" "pkobp_subnet" {
    name                                           = var.subnet_name
    
    resource_group_name                            = var.rg_name
    virtual_network_name                           = var.vnet_name

    address_prefixes                               = var.address_space
    enforce_private_link_endpoint_network_policies = var.private_link_endpoint_network_policies
    enforce_private_link_service_network_policies  = var.private_link_service_network_policies

    service_endpoints                              = var.service_endpoints
    service_endpoint_policy_ids                    = length(var.service_endpoint_policy_ids) > 0 ? var.service_endpoint_policy_ids : null

    dynamic "delegation" {
        for_each                                   = var.subnet_delegation
        content {
            name                                   = delegation.key
            
            dynamic "service_delegation" {
                for_each                           = toset(delegation.value)
                content {
                    name                           = service_delegation.value.name
                    actions                        = service_delegation.value.actions
                }
            }
            
        }
    }
}