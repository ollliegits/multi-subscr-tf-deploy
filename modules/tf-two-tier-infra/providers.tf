provider "azurerm" {
  alias = "alpha"
  version = "=1.41.0"
  subscription_id = var.tier_alpha.subscription_id
}

provider "azurerm" {
  alias = "beta"
  version = "=1.41.0"
  subscription_id = var.tier_beta.subscription_id
}
