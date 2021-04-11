### common

```hcl
    module "main" {
      source = "hadenlabs/terraform-null-tags"
      version = "0.1.0"
      namespace   = "hadenlabs"
      environment = "us-east-1"
      stage       = "develop"
      name        = "jenkins"
    }

```
