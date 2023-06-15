variable "environment" {
  type = string
}

variable "azure_resource_group_name" {
  type = string
}

variable "project-name" {
  type = string
}

variable "account_replication_type" {
  type    = string
  default = "LRS"
}

variable "access_tier" {
  type    = string
  default = "Cool"
}

variable "account_kind" {
  type    = string
  default = "StorageV2"
}


variable "account_tier" {
  type    = string
  default = "Standard"
}

variable "min_tls_version" {
  type    = string
  default = "TLS1_2"
}
variable "network_rule_default_action" {
  type    = string
  default = "Deny"
}

variable "retention" {
  type    = number
  default = 15
}

variable "log_analytics_name" {
  type = string
}

variable "key_vault_name" {
  type = string
}

variable "data_lake_enabled" {
  type    = string
  default = false
}

variable "extra_storage_tags" {
  type        = map(string)
  default     = {}
  description = "List of extra tags"
}

variable "diagnostic_enabled" {
  type    = string
  default = false
}

variable "CMK_enabled" {
  type    = string
  default = false
}

variable "cors_rule" {
  type    = any
  default = []
}

variable "static_website" {
  type    = list(map(string))
  default = []
}

variable "network_rules" {
  type    = any
  default = []
}

