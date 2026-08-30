terraform{
    required_providers{
        azurerm={
        source="hashicorp/azurerm"
        version="~>5.0"
    }
}
backend "azurerm"{
    resource_group_name = "Dev_rg"
    storage_account_name="wiprobackendstate"
    container_name="terraformbackend"
    key="backend.tfstate"


}
}

provider "azurerm"{
    features{}
}