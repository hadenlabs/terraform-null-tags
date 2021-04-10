
module "main" {
  source      = "git://github.com/hadenlabs/terraform-tags.git?ref=0.0.0"
  namespace   = var.namespace
  environment = var.environment
  stage       = var.stage
  name        = var.name
  attributes  = var.attributes
  tags        = var.tags
}
