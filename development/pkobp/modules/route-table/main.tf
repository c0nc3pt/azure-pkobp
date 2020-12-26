resource "azurerm_route_table" "pkobp_route_table" {
    
    name                                = var.route_table_name

    resource_group_name                 = var.rg_name
    location                            = var.location
    
    disable_bgp_route_propagation       = var.disable_bgp_route_propagation

    # NOTE: Tagi są ignorowane ze względu na dziedziczenie tagow z Resource Group
    lifecycle {
      ignore_changes = [
          tags
      ]
    }
}
