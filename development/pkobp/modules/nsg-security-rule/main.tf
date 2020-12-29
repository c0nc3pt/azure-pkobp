resource "azurerm_network_security_rule" "pkobp_network_security_rule" {

    name                        = var.nsg_rule_name

    resource_group_name         = var.rg_name
    network_security_group_name = var.nsg_name
    
    description                 = var.nsg_rule_description

    protocol                    = var.nsg_rule_protocol
    source_port_range           = var.nsg_rule_source_port_range
    destination_port_range      = var.nsg_rule_destination_port_range 

    source_address_prefix       = var.nsg_rule_source_address_prefix
    destination_address_prefix  = var.nsg_rule_destination_address_prefix

    access = var.nsg_rule_access
    priority = var.nsg_rule_priority
    direction = var.nsg_rule_direction

    source_application_security_group_ids       = var.nsg_rule_source_application_security_group_ids
    destination_application_security_group_ids  = var.nsg_rule_destination_application_security_group_ids

}