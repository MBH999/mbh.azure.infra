// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

terraform {
  backend "azurerm" {
    container_name       = "tfstate"
    key                  = "terraform/stacks/by-id/8dda9e2d-b75e-4109-8b40-fd63a2686014/terraform.tfstate"
    resource_group_name  = "rg-mbh-homelab"
    storage_account_name = "sambhhomelab"
    use_oidc             = true
  }
}
