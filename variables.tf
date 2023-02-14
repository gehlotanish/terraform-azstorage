variable "default_location" {
  type        = string
  description = "Azure Region location"
}

variable "environment" {
  type        = string
  description = "Resource Tags ENVIRONMENT Value"
}

variable "azure_resource_group_name" {
  type        = string
  description = "Azure Resource Group Name"
}

variable "storage_name" {
  type        = string
  description = "Azure Storage Name must be unique and contains only alphanumeric value"
}

variable "storage_account_container" {
  type        = string
  description = "Azure Storage Blob Private Container Name"
}
