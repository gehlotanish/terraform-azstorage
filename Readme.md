## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| project-name | Name of the project, appended to name of resouce. "stor${var.medline_default_location}${var.environment}${var.project-name}" | `string` | n/a | yes |
| azure_resource_group_name | Name of resource group to deploy storage | `string` | n/a | yes |
| retention | Azure blob container and files retention period, Specifies the number of days that the blob should be retained | `numeric` | `15` | yes |
| diagnostic_enabled | Enable the Storage  monitoring diagnostic setting values should be true or false | `bool` | `false` | yes |
| log_analytics_name | This variable depends on `diagnostic_enabled = true`. Log analaytics name to bind with storage blob monitoring | `string` | n/a | no |
| CMK_enabled | Enable blob encryption by customer managed key based on keys on keyvault,values should be true or false | `bool` | `false` | yes |
| key_vault_name | This variable depends on  `CMK_enabled = true`. Key vault name where CMK is created | `string` | n/a | no |
| cmk_keyname | This variable depends on  `CMK_enabled = true`. Customer managed key name from key vault keys | `string` | `CMK-${var.project-name}` | no |
| access_tier | Defines the access tier for BlobStorage, FileStorage and StorageV2 accounts. Valid options are Hot and Cool | `string` | `Cool` | yes |
| network_rule_default_action | Specifies the default action of allow or deny when no other rules match. Valid options are Deny or Allow | `string` | `Deny` | yes |
| data_lake_enabled | Azure Data Lake Storage Gen2 hierarchical namespace for this storage account. | `bool` | n/a | yes |
| replication_type | Defines the type of replication to use for this storage account. Valid options are LRS, GRS, RAGRS, ZRS, GZRS and RAGZRS.  | `string` | `LRS` | yes |
| enviroment | Specifies the Azure environment (sbx/dev/tst/prd). | `string` | n/a | yes |
| medline_default_location | Specifies the location in the Azure environment. | `string` | `ussc` | yes |
| extra_storage_tags | Additional tags to add in locals | `map(string)` | n/a | yes |

