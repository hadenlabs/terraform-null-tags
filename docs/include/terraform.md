<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13 |

## Providers

No providers.

## Modules

No modules.

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_attributes"></a> [attributes](#input\_attributes) | Additional attributes (e.g. `1`) | `list(string)` | `[]` | no |
| <a name="input_config"></a> [config](#input\_config) | Single object for setting entire configuration at once.<br>See description of individual variables for details. | `any` | `{}` | no |
| <a name="input_name"></a> [name](#input\_name) | Solution name, e.g. 'app' or 'jenkins' | `string` | n/a | yes |
| <a name="input_namespace"></a> [namespace](#input\_namespace) | Namespace, which could be your organization name or abbreviation, e.g. 'eg' or 'cp' | `string` | n/a | yes |
| <a name="input_stage"></a> [stage](#input\_stage) | Stage, e.g. 'prod', 'staging', 'dev', OR 'source', 'build', 'test', 'deploy', 'release' | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Additional tags (e.g. `map('BusinessUnit','XYZ')` | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_attributes"></a> [attributes](#output\_attributes) | List of attributes |
| <a name="output_delimiter"></a> [delimiter](#output\_delimiter) | Delimiter between `namespace`, `stage`, `name` and `attributes` |
| <a name="output_label_order"></a> [label\_order](#output\_label\_order) | The naming order actually used to create the ID |
| <a name="output_name"></a> [name](#output\_name) | Normalized name |
| <a name="output_name32"></a> [name32](#output\_name32) | first 32 chars of string name |
| <a name="output_name6"></a> [name6](#output\_name6) | first 6 chars of string name |
| <a name="output_namespace"></a> [namespace](#output\_namespace) | Normalized namespace |
| <a name="output_stage"></a> [stage](#output\_stage) | Normalized stage |
| <a name="output_tags"></a> [tags](#output\_tags) | Tags as a map (includes a `Name` tag) |
<!-- END_TF_DOCS -->