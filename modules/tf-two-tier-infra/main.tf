terraform {
  required_version = ">= 0.12"
#   backend "azurerm" {}
}

locals {
    location_short = {
        "westeurope" = "euw"
        "northeurope" = "eun"
    }
}

resource "azurerm_resource_group" "tier_a" {
    provider = azurerm.alpha
    name = "${local.location_short[var.tier_alpha.location]}_tier_a_rg"
    location = var.tier_alpha.location
}

resource "azurerm_resource_group" "tier_b" {
    provider = azurerm.beta
    name = "${local.location_short[var.tier_beta.location]}_tier_b_rg"
    location = var.tier_beta.location
}
