// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

terraform {
  backend "azurerm" {
    container_name       = "tfstate"
    key                  = "terraform/stacks/by-id/70bb5cf6-103a-4658-89cd-23ddfb4d8aa9/terraform.tfstate"
    resource_group_name  = "rg-mbh-homelab"
    storage_account_name = "sambhhomelab"
    use_oidc             = true
  }
}
