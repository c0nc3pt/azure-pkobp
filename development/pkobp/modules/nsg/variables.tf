variable "nsg_name" {
    description             = "Nazwa NSG"
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