# Configure the panos provider
terraform {
  required_providers {
    panos = {
      source  = "paloaltonetworks/panos"
    }
  }
}


provider "panos" {
    hostname = "107.22.242.195"
}
