// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

terraform {
  backend "azurerm" {
    container_name       = "tfstate"
    key                  = "terraform/stacks/by-id/10d7bff2-9d9a-4ff9-b0aa-6a0f8209cb0b/terraform.tfstate"
    resource_group_name  = "rg-mbh-homelab"
    storage_account_name = "sambhhomelab"
    use_oidc             = true
  }
}
