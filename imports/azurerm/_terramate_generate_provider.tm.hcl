generate_hcl "_generated_terraform.tf" {
  # condition = tm_contains(terramate.stack.tags, "terraform")
    content {
        terraform {
            required_providers {
                azurerm = {
                    source = "hashicorp/azurerm"
                    version = "4.27.0"
                }
            }
        }

        provider "azurerm" {
            features {}
        }
    }
}