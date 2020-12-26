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

variable "route_name_01_10_245_0_0__25" {
    description             = "nazwa route w route table"
    type                    = string
    default                 = "route_01_10_245_0_0__25" 
}

variable "route_address_prefix_01_10_245_0_0__25" {
    description             = "Prefix dla drogi w formacie 0-255.0-255.0-255.0-255/0-32 np. 10.13.0.0/16"
    type                    = string
    default                 = "10.13.0.0/16" 
}

variable "route_next_hop_type_01_10_245_0_0__25" {
    description             = "Rodzaj next hop, poprawne wartosci to VirtualNetworkGateway, VnetLocal, Internet, VirtualAppliance and None"
    type                    = string
    default                 = "VirtualAppliance"
}

variable "route_next_hop_in_ip_address_01_10_245_0_0__25" {
    description             = "Adres IP next hop ma zastosowanie tylko jezeli next_hop_type jest ustawiony na VirtualAppliance"
    type                    = string  
    default                 = "10.255.231.69"
}

variable "route_name_02_10_245_0_0__25" {
    description             = "nazwa route w route table"
    type                    = string
    default                 = "route_02_10_245_0_0__25" 
}

variable "route_address_prefix_02_10_245_0_0__25" {
    description             = "Prefix dla drogi w formacie 0-255.0-255.0-255.0-255/0-32 np. 10.13.0.0/16"
    type                    = string
    default                 = "172.16.0.0/16" 
}

variable "route_next_hop_type_02_10_245_0_0__25" {
    description             = "Rodzaj next hop, poprawne wartosci to VirtualNetworkGateway, VnetLocal, Internet, VirtualAppliance and None"
    type                    = string
    default                 = "None"
}