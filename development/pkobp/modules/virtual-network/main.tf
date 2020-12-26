resource "azurerm_virtual_network" "pkobp_virtual_network" {
    
    name                = var.name
    location            = var.rg_location
    resource_group_name = var.rg_name
    address_space       = var.address_space
    dns_servers         = var.dns_servers
    
    # NOTE: Tagi są ignorowane ze względu na dziedziczenie tagow z Resource Group
    lifecycle {
      ignore_changes = [
          tags
      ]
    }
}