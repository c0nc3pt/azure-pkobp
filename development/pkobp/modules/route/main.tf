resource "azurerm_route" "pkobp_route" {

    name                    = var.route_object.route_name

    resource_group_name     = var.route_object.rg_name

    route_table_name        = var.route_object.route_table_name

    address_prefix          = var.route_object.address_prefix

    next_hop_type           = var.route_object.next_hop_type
    next_hop_in_ip_address  = (var.route_object.next_hop_in_ip_address == null || var.route_object.next_hop_in_ip_address == "") ? null : var.route_object.next_hop_in_ip_address

}