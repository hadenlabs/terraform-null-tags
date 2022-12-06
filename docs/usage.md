# How to use this project

```hcl
  module "main" {
    source = "hadenlabs/terraform-null-tags"
    version = "0.2.0"
    namespace   = "hadenlabs"
    environment = "us-east-1"
    stage       = "develop"
    name        = "jenkins"
  }
```

Full working examples can be found in [examples](./examples) folder.
