variable "route_table_name" {
    description             = "Nazwa route table"
    type                    = string  
}

variable "rg_name" {
    description             = "Nazwa resource group"
    type                    = string  
}

variable "location" {
    description             = "Region w ktorym route table jest tworozne"
    type                    = string  
}

variable "disable_bgp_route_propagation" {
    description             = "Okreslenie czy do route table maja zostac dodane drogi propagowane przez BGP"
    type                    = bool
}