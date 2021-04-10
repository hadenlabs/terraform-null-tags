output "namespace" {
  description = "show namespace module"
  value       = module.main.namespace
}

output "environment" {
  description = "show environment"
  value       = module.main.environment
}

output "name" {
  description = "show name"
  value       = module.main.name
}

output "stage" {
  description = "show stage"
  value       = module.main.stage
}

output "delimiter" {
  description = "show delimiter"
  value       = module.main.delimiter
}

output "tags" {
  description = "show tags"
  value       = module.main.tags
}
