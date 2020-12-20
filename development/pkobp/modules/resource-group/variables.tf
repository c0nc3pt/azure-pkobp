variable "name" {
    description = "Nazwa RG"
    type        = string
    default     = ""
}

variable "location" {
    description = "Region RG"
    type        = string
    default     = ""
}

variable "tag_app" {
    description = "Tag app"
    type        = string
    default     = ""
}

variable "tag_businessowner" {
    description = "Tag businessowner"
    type        = string
    default     = ""
}

variable "tag_env" {
    description = "Tag env"
    type        = string
    default     = ""
}

variable "tag_ssgw" {
    description = "Tag ssgw"
    type        = string
    default     = ""
}

variable "tag_platforma" {
    description = "Tag platforma"
    type        = string
    default     = "azure"
}

variable "tag_description" {
    description = "Tag description"
    type        = string
    default     = ""
}

variable "lock_level" {
    description = "Okresla czy ma byc uzywany lock na poziomie RG. Mozliwe wartosci to: pusty string - brak locka, CanNotDelete - nie mozna usunac, ReadOnly - nie mozna zmodyfikowac."
    type        = string
    default     = ""
}