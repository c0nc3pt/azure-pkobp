variable "nsg_rule_name" {
    description             = "Nazwa security rule w NSG"
    type                    = string
}

variable "nsg_rule_description" {
    description             = "Opis security rule w NSG"
    type                    = string
    default                 = null
}

variable "nsg_name" {
    description             = "Nazwa NSG"
    type                    = string  
}

variable "rg_name" {
    description             = "Nazwa resource group"
    type                    = string  
}


variable "nsg_rule_protocol" {
    description             = "Protokol dla reguly, mozliwe wartosci Tcp, Udp, Icmp, lub * (czyli wszystkie protokoly)"
    type                    = string
}

variable "nsg_rule_source_port_range" {
    description             = "Adres lub zakres portow zrodlowych, mozliwe wartosci liczba calkowita lub zakres pomiedzy 0 a 65535 lub *, aby okreslic any"
    type                    = string
}

variable "nsg_rule_destination_port_range" {
    description             = "Adres lub zakres portow docelowych, mozliwe wartosci liczba calkowita lub zakres pomiedzy 0 a 65535 lub *, aby okreslic any"
    type                    = string
}

variable "nsg_rule_source_address_prefix" {
    description             = "Specyfikacja adresow zrodlowych, mozliwe wartosci to adres IP, IP range, * (aby okreslic any), lub jeden z tagow: VirtualNetwork, AzureLoadBalancer and Internet"
    type                    = string
}


variable "nsg_rule_destination_address_prefix" {
    description             = "Specyfikacja adresow docelowych, mozliwe wartosci to adres IP, IP range, * (aby okreslic any), lub jeden z tagow: VirtualNetwork, AzureLoadBalancer and Internet. Dodatkowo mozna wykorzystac Service Tagi: az network list-service-tags -l westeurope"
    type                    = string
}

variable "nsg_rule_access" {
    description             = "Allow lub Deny dla reguly"
    type                    = string

}

variable "nsg_rule_priority" {
    description             = "Priorytet reguly, moze przyjac wartosci od 100 do 4096. Priorytet musi byc unikalny"
    type                    = number
}

variable "nsg_rule_direction" {
    description             = "Kierunek dzialania reguly, mozliwe wartosci Inbound i Outbound"
    type                    = string 
}

variable "nsg_rule_source_application_security_group_ids" {
    description             = "Lista ID Application Security Group okreslajacych zrodlo, jezeli sa uzywane"
    type                    = list
    default                 = null 
}

variable "nsg_rule_destination_application_security_group_ids" {
    description             = "Lista ID Application Security Group okreslajacych cel, jezeli sa uzywane"
    type                    = list
    default                 = null
}