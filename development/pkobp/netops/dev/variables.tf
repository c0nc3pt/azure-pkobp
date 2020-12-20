variable "subscription-dev-id" {
    type        = string
    description = "ID subskrypcji"
}

variable "rg_name" {
    description = "Nazwa RG"
    type        = string
}

variable "rg_location" {
    description = "Region RG"
    type        = string
}

variable "rg_tag_app" {
    description = "Tag app"
    type        = string
}

variable "rg_tag_businessowner" {
    description = "Tag businessowner"
    type        = string
}

variable "rg_tag_env" {
    description = "Tag env"
    type        = string
}

variable "rg_tag_ssgw" {
    description = "Tag ssgw"
    type        = string
}

variable "rg_tag_platforma" {
    description = "Tag platforma"
    type        = string
}

variable "rg_tag_description" {
    description = "Tag description"
    type        = string
}

variable "rg_lock_level" {
    description = "Okresla czy ma byc uzywany lock na poziomie RG. Mozliwe wartosci to: pusty string - brak locka, CanNotDelete - nie mozna usunac, ReadOnly - nie mozna zmodyfikowac."
    type        = string
}


variable "vnet_name" {
    description = "Nazwa Virtual Network"
    type        = string
    default     = ""
}


variable "vnet_address_space" {
    description = "Adresacja dla Virtual Network"
    type        = list
}

variable "vnet_dns_servers" {
    description = "Adresy serwerów DNS. Default ustawiony na serwer DNS Azure"
    type        = list
}
