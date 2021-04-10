### common

```hcl
    module "main" {
      source = "hadenlabs/terraform-tags"
      version = "0.0.0"
      namespace   = "hadenlabs"
      environment = "us-east-1"
      stage       = "develop"
      name        = "jenkins"
    }

```
