provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = "rg"
  location = "West Europe"  # Replace with your desired Azure region
}

resource "azurerm_static_site" "me" {
  name                = "me"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name

  app_location {
    type  = "github"
    repo  = "LeeBadal/me"  # Replace with your GitHub repository URL
    branch = "main"  # Replace with your desired branch name
  }
}
