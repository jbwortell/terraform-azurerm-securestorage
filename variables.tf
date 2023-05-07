variable "resource_group_name" {
    type = string
    description = "Resource Group Name"
}

variable "location" {
    type = string
    description = "The Resource location"
}

variable "storage_account_name" {
    type = string
    description = "The storage account name"
}

variable "environment" {
    type = string
    description = "The environment either Production or Development"
}