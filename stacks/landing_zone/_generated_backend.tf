// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

terraform {
  backend "azurerm" {
    container_name       = "tfstate"
    key                  = "terraform/stacks/by-id/4b70644a-b384-4421-86f9-412ca4f1bbf9/terraform.tfstate"
    resource_group_name  = "rg-mbh-homelab"
    storage_account_name = "sambhhomelab"
    use_oidc             = true
  }
}
