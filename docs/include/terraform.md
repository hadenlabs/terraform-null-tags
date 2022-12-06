<!-- markdown-link-check-disable -->
<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.13 |

## Providers

No providers.

## Modules

No modules.

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| attributes | Additional attributes (e.g. `1`) | `list(string)` | `[]` | no |
| config | Single object for setting entire configuration at once.<br>See description of individual variables for details. | `any` | `{}` | no |
| name | Solution name, e.g. 'app' or 'jenkins' | `string` | n/a | yes |
| namespace | Namespace, which could be your organization name or abbreviation, e.g. 'eg' or 'cp' | `string` | n/a | yes |
| stage | Stage, e.g. 'prod', 'staging', 'dev', OR 'source', 'build', 'test', 'deploy', 'release' | `string` | n/a | yes |
| tags | Additional tags (e.g. `map('BusinessUnit','XYZ')` | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| attributes | List of attributes |
| delimiter | Delimiter between `namespace`, `stage`, `name` and `attributes` |
| id\_full | return id full generated of label order |
| label\_order | The naming order actually used to create the ID |
| name | Normalized name |
| name32 | first 32 chars of string name |
| name6 | first 6 chars of string name |
| namespace | Normalized namespace |
| stage | Normalized stage |
| tags | Tags as a map (includes a `Name` tag) |
<!-- END_TF_DOCS -->
<!-- markdown-link-check-enable -->