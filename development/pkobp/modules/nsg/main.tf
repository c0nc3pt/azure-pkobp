resource "azurerm_network_security_group" "pkobp_network_security_group" {

    name                    = var.nsg_name
    
    resource_group_name     = var.rg_name
    location                = var.location

    # NOTE: Tagi są ignorowane ze względu na dziedziczenie tagow z Resource Group
    lifecycle {
      ignore_changes = [
          tags
      ]
    }
}