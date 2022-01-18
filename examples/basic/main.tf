
module "main" {
  source     = "git://github.com/hadenlabs/terraform-null-tags.git?ref=0.0.0"
  namespace  = var.namespace
  stage      = var.stage
  name       = var.name
  attributes = var.attributes
  tags       = var.tags
}
