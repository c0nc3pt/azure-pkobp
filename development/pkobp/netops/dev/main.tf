provider "azurerm" {
  version         = ">2.30.0"
  alias           = "provider-dev"
  subscription_id = var.subscription-dev-id
  features {}
}
