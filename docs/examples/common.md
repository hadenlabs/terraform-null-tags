<!-- Space: TerraformNullTags -->
<!-- Parent: Project -->
<!-- Title: Examples -->

<!-- Label: Examples -->
<!-- Include: docs/disclaimer.md -->
<!-- Include: ac:toc -->

### common

```hcl
  module "main" {
    source = "hadenlabs/terraform-null-tags"
    version = "0.1.1"
    namespace   = "hadenlabs"
    stage       = "develop"
    name        = "jenkins"
  }

```
