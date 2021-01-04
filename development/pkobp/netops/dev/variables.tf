variable "subscription-dev-id" {
    type        = string
    description = "ID subskrypcji"
}

variable "rg_name" {
    description = "Nazwa RG"
    type        = string
    default     = "lab-netops-azr-infra"
}

variable "rg_location" {
    description = "Region RG"
    type        = string
    default     = "westeurope" 
}

variable "rg_tag_app" {
    description = "Tag app"
    type        = string
    default     = "krystian-test" 
}

variable "rg_tag_businessowner" {
    description = "Tag businessowner"
    type        = string
    default     = "bo"
}

variable "rg_tag_env" {
    description = "Tag env"
    type        = string
    default     = "LAB"
}

variable "rg_tag_ssgw" {
    description = "Tag ssgw"
    type        = string
    default     = "shared 09"
}

variable "rg_tag_platforma" {
    description = "Tag platforma"
    type        = string
    default     = "azure"
}

variable "rg_tag_description" {
    description = "Tag description. Tag nie jest dziedziczony."
    type        = string
    default     = "" 
}

variable "rg_lock_level" {
    description = "Okresla czy ma byc uzywany lock na poziomie RG. Mozliwe wartosci to: pusty string - brak locka, CanNotDelete - nie mozna usunac, ReadOnly - nie mozna zmodyfikowac."
    type        = string
    default     = "CanNotDelete" 
}


variable "vnet_name" {
    description = "Nazwa Virtual Network"
    type        = string
    default     = "vnet-dev-we-10_245_0_0__16"
}


variable "vnet_address_space" {
    description = "Adresacja dla Virtual Network"
    type        = list
    default     = [ "10.245.0.0/16" ] 
}

variable "vnet_dns_servers" {
    description = "Adresy serwerów DNS. Default ustawiony na serwer DNS Azure"
    type        = list
    default     = [ "10.13.62.68", "10.13.62.69" ] 
}

variable "subnet_name_10_245_0_0__25" {
    description = "Nazwa subnetu"
    type        = string
    default     = "subnet_10_245_0_0__25"
}

variable "subnet_address_space_10_245_0_0__25" {
    description = "Adresacja subnetu"
    type        = list
    default     = [ "10.245.0.0/25" ]
}

variable "subnet_private_link_endpoint_network_policies_10_245_0_0__25" {
    description = "Okreslenie czy mozna tworzyc Private Link Endpoint"
    type        = bool
    default     = true
}

variable "subnet_private_link_service_network_policies_10_245_0_0__25" {
    description = "Okreslenie czy mozna tworzyc Private Link Service"
    type        = bool
    default     = false
}

variable "subnet_service_endpoints_10_245_0_0__25" {
    description = "Lista service endpointow dla subnetu"
    type        = list
    default     = []
  
}

variable "subnet_service_endpoint_policy_ids_10_245_0_0__25" {
    description = "Lista id polityk dla service endpointow w subnetu"
    type        = list
    default     = []
}

variable "subnet_name_10_245_0_128__25" {
    description = "Nazwa subnetu"
    type        = string
    default     = "subnet_10_245_0_128__25"
}

variable "subnet_address_space_10_245_0_128__25" {
    description = "Adresacja subnetu"
    type        = list
    default     = [ "10.245.0.128/25" ]
}

variable "subnet_private_link_endpoint_network_policies_10_245_0_128__25" {
    description = "Okreslenie czy mozna tworzyc Private Link Endpoint"
    type        = bool
    default     = false
}

variable "subnet_private_link_service_network_policies_10_245_0_128__25" {
    description = "Okreslenie czy mozna tworzyc Private Link Service"
    type        = bool
    default     = false
}

variable "subnet_service_endpoints_10_245_0_128__25" {
    description = "Lista service endpointow dla subnetu"
    type        = list
    default     = []
  
}

variable "subnet_service_endpoint_policy_ids_10_245_0_128__25" {
    description = "Lista id polityk dla service endpointow w subnetu"
    type        = list
    default     = []
}

variable "subnet_name_10_245_1_0__25" {
    description = "Nazwa subnetu"
    type        = string
    default     = "subnet_10_245_1_0__25"
}

variable "subnet_address_space_10_245_1_0__25" {
    description = "Adresacja subnetu"
    type        = list
    default     = [ "10.245.1.0/25" ]
}

variable "subnet_private_link_endpoint_network_policies_10_245_1_0__25" {
    description = "Okreslenie czy mozna tworzyc Private Link Endpoint"
    type        = bool
    default     = true
}

variable "subnet_private_link_service_network_policies_10_245_1_0__25" {
    description = "Okreslenie czy mozna tworzyc Private Link Service"
    type        = bool
    default     = false
}

variable "subnet_service_endpoints_10_245_1_0__25" {
    description = "Lista service endpointow dla subnetu"
    type        = list
    default     = [ "Microsoft.EventHub", "Microsoft.Web" ]
  
}

variable "subnet_service_endpoint_policy_ids_10_245_1_0__25" {
    description = "Lista id polityk dla service endpointow w subnetu"
    type        = list
    default     = []
}

variable "subnet_name_10_245_1_128__25" {
    description = "Nazwa subnetu"
    type        = string
    default     = "subnet_10_245_1_128__25"
}

variable "subnet_address_space_10_245_1_128__25" {
    description = "Adresacja subnetu"
    type        = list
    default     = [ "10.245.1.128/25" ]
}

variable "subnet_private_link_endpoint_network_policies_10_245_1_128__25" {
    description = "Okreslenie czy mozna tworzyc Private Link Endpoint"
    type        = bool
    default     = false
}

variable "subnet_private_link_service_network_policies_10_245_1_128__25" {
    description = "Okreslenie czy mozna tworzyc Private Link Service"
    type        = bool
    default     = false
}

variable "subnet_service_endpoints_10_245_1_128__25" {
    description = "Lista service endpointow dla subnetu"
    type        = list
    default     = [ ]
 
}

variable "subnet_service_endpoint_policy_ids_10_245_1_128__25" {
    description = "Lista id polityk dla service endpointow w subnetu"
    type        = list
    default     = []
}

variable "subnet_delegation_10_245_1_128__25" {
    description = "Delegacja subnetu dla uslugi"
    type        = map(list(any))
    
    default = {
        "mysql-flexible-delegation" = [
            {
                name    = "Microsoft.DBforMySQL/flexibleServers"
                actions = [
                    "Microsoft.Network/virtualNetworks/subnets/join/action"
                ]
            }
        ]
    }
}


variable "rt_name_10_245_0_0__25" {
    description             = "Nazwa route table"
    type                    = string
    default                 = "rt_10_245_0_0__25"
}

variable "rt_disable_bgp_route_propagation_10_245_0_0__25" {
    description             = "Okreslenie czy do route table maja zostac dodane drogi propagowane przez BGP"
    type                    = bool
    default                 = false 
}

# NOTE: Obiekt definiujacy Route w Route Table.
# route_name:                 Nazwa route w route table. 
# route_table_name:           Nazwa route table. 
# rg_name:                    Nazwa resource group.
# address_prefix:             Prefix dla drogi w formacie 0-255.0-255.0-255.0-255/0-32 np. 10.13.0.0/16.
# next_hop_type:              Rodzaj next hop, poprawne wartosci to VirtualNetworkGateway, VnetLocal, Internet, VirtualAppliance lub None.
# next_hop_in_ip_address:     Adres IP next hop ma zastosowanie tylko jezeli next_hop_type jest ustawiony na VirtualAppliance, jezeli jest ustawiony inaczej nalezy podac null.

locals {
    route_object_01_10_245_0_0__25 = {
        route_name                = "route_01_10_245_0_0__25"
        route_table_name          = module.route_table_10_245_0_0__25.name
        rg_name                   = module.resource_group.name
        address_prefix            = "10.13.0.0/16"
        next_hop_type             = "VirtualAppliance"
        next_hop_in_ip_address    = "10.255.231.69"
    }
}

locals {
    route_object_02_10_245_0_0__25 = {
        route_name                = "route_02_10_245_0_0__25"
        route_table_name          = module.route_table_10_245_0_0__25.name
        rg_name                   = module.resource_group.name
        address_prefix            = "172.16.0.0/16"
        next_hop_type             = "None"
        next_hop_in_ip_address    = null
    }
}

variable "nsg_name_10_245_0_0__25" {
    description             = "Nazwa NSG"
    type                    = string 
    default                 = "nsg_10_245_0_0__25" 
}

# NOTE: Obiekt definiujacy regule w NSG.
# nsg_name:                                      Nazwa NSG
# rg_name:                                       Nazwa resource group
# name:                                          Nazwa security rule w NSG
# description:                                   Opis security rule w NSG
# direction:                                     Kierunek dzialania reguly, mozliwe wartosci Inbound i Outbound
# priority:                                      Priorytet reguly, moze przyjac wartosci od 100 do 4096. Priorytet musi byc unikalny
# access:                                        Allow lub Deny dla reguly
# protocol:                                      Protokol dla reguly, mozliwe wartosci Tcp, Udp, Icmp, lub * (czyli wszystkie protokoly)
# source_address_prefix:                         Specyfikacja adresow zrodlowych, mozliwe wartosci to adres IP, IP range, * (aby okreslic any), lub jeden z tagow: VirtualNetwork, AzureLoadBalancer and Internet
# source_port_range:                             Adres lub zakres portow zrodlowych, mozliwe wartosci liczba calkowita lub zakres pomiedzy 0 a 65535 lub *, aby okreslic any
# destination_address_prefix:                    Specyfikacja adresow docelowych, mozliwe wartosci to adres IP, IP range, * (aby okreslic any), lub jeden z tagow: VirtualNetwork, AzureLoadBalancer and Internet. Dodatkowo mozna wykorzystac Service Tagi: az network list-service-tags -l westeurope
# destination_port_range:                        Adres lub zakres portow docelowych, mozliwe wartosci liczba calkowita lub zakres pomiedzy 0 a 65535 lub *, aby okreslic any
# source_application_security_group_ids:         Lista ID Application Security Group okreslajacych zrodlo, jezeli sa uzywane
# destination_application_security_group_ids:    Lista ID Application Security Group okreslajacych cel, jezeli sa uzywane

locals {
    nsg_rule_object_in_1000__10_245_0_0__25 = {
        nsg_name                                    = module.nsg_10_245_0_0__25.name
        rg_name                                     = module.resource_group.name
        name                                        = "allow-ssh-from-anywhere"
        description                                 = "regula pozwalajaca na ssh z kazdego miejsca"
        direction                                   = "Inbound"
        priority                                    = 1000
        access                                      = "Allow"
        protocol                                    = "TCP"
        source_address_prefix                       = "*"
        source_port_range                           = "*"
        destination_address_prefix                  = "10.245.0.4"
        destination_port_range                      = "22"
        source_application_security_group_ids       = []   
        destination_application_security_group_ids  = null
    }
}

locals {
    nsg_rule_object_in_1010__10_245_0_0__25 = {
        nsg_name                                    = module.nsg_10_245_0_0__25.name
        rg_name                                     = module.resource_group.name
        name                                        = "allow-https-z-10.13.62.100"
        description                                 = "regula pozwalajaca na https z 10.13.62.100"
        direction                                   = "Inbound"
        priority                                    = 1010
        access                                      = "Allow"
        protocol                                    = "TCP"
        source_address_prefix                       = "10.13.62.100/32"
        source_port_range                           = "*"
        destination_address_prefix                  = "10.245.0.4"
        destination_port_range                      = "443"
        source_application_security_group_ids       = null   
        destination_application_security_group_ids  = []
    }
}

locals {
    nsg_rule_object_out_1000__10_245_0_0__25 = {
        nsg_name                                    = module.nsg_10_245_0_0__25.name
        rg_name                                     = module.resource_group.name
        name                                        = "allow-udp-53-z-10.245.0.0--25"
        description                                 = "regula pozwalajaca na udp na port 53 z 10.245.0.0/25"
        direction                                   = "Outbound"
        priority                                    = 1000
        access                                      = "Allow"
        protocol                                    = "UDP"
        source_address_prefix                       = "10.245.0.0/25"
        source_port_range                           = "*"
        destination_address_prefix                  = "10.13.62.0/24"
        destination_port_range                      = "53"
        source_application_security_group_ids       = []   
        destination_application_security_group_ids  = []
    }
}