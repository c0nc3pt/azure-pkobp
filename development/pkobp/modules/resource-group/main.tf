resource "azurerm_resource_group" "pkobp_resource_group" {
    
    name                    = var.name
    location                = var.location

    tags                    = {
        "app"               = var.tag_app
        "businessowner"     = var.tag_businessowner
        "env"               = var.tag_env
        "ssgw"              = var.tag_ssgw
        "platforma"         = var.tag_platforma
        "description"       = var.tag_description
    }
    
}

resource "azurerm_management_lock" "resource_group_level_lock" {
    name                    = "${var.name}-level-lock"
    count                   = var.lock_level == "" ? 0 : 1

    scope                   = azurerm_resource_group.pkobp_resource_group.id
    lock_level              = var.lock_level
    notes                   = "Resource Group '${var.name}' zablokowana z lockiem typu '${var.lock_level}'."

}