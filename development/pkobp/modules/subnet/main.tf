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

resource "azurerm_subnet_route_table_association" "pkobp_subnet_route_table_association" {
    count                                           = var.route_table_id != null ? 1 : 0

    subnet_id                                       = azurerm_subnet.pkobp_subnet.id
    route_table_id                                  = var.route_table_id
}

resource "azurerm_subnet_network_security_group_association" "pkobp_subnet_network_security_group_association" {
    count                                           = var.nsg_id != null ? 1 : 0

    subnet_id                                       = azurerm_subnet.pkobp_subnet.id
    network_security_group_id                       = var.nsg_id
}