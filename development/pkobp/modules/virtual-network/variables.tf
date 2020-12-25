variable "name" {
    description = "Nazwa Virtual Network"
    type        = string
    default     = ""
}

variable "rg_name" {
    description = "Nazwa RG"
    type        = string
    default     = ""
}

variable "rg_location" {
    description = "Region RG"
    type        = string
    default     = ""
}

variable "address_space" {
    description = "Adresacja dla Virtual Network"
    type        = list
    default     = []
}

variable "dns_servers" {
    description = "Adresy serwerów DNS. Default ustawiony na serwer DNS Azure"
    type        = list
    default     = ["168.63.129.16"]
}