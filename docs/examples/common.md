<!-- Space: Projects -->
<!-- Parent: TerraformNullTags -->
<!-- Title: Examples TerraformNullTags -->
<!-- Label: Examples -->
<!-- Include: ./../disclaimer.md -->
<!-- Include: ac:toc -->

### common

```hcl
  module "main" {
    source = "hadenlabs/terraform-null-tags"
    version = "0.2.0"
    namespace   = "hadenlabs"
    stage       = "develop"
    name        = "jenkins"
  }

```
