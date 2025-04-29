globals "terraform" "backend" "azurerm" {
    resource_group_name = "rg-mbh-homelab"
    storage_account_name = "sambhhomelab"
    container_name = "tfstate"
}