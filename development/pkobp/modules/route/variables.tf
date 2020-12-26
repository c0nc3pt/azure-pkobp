variable "route_name" {
    description             = "Nazwa route w route table"
    type                    = string  
}

variable "route_table_name" {
    description             = "Nazwa route table"
    type                    = string  
}

variable "rg_name" {
    description             = "Nazwa resource group"
    type                    = string  
}

variable "address_prefix" {
    description             = "Prefix dla drogi w formacie 0-255.0-255.0-255.0-255/0-32 np. 10.13.0.0/16"
    type                    = string  
}

variable "next_hop_type" {
    description             = "Rodzaj next hop, poprawne wartosci to VirtualNetworkGateway, VnetLocal, Internet, VirtualAppliance and None"
    type                    = string  
}

variable "next_hop_in_ip_address" {
    description             = "Adres IP next hop ma zastosowanie tylko jezeli next_hop_type jest ustawiony na VirtualAppliance"
    type                    = string
    default                 = null   
}
