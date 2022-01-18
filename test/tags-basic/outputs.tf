output "namespace" {
  description = "show namespace module"
  value       = module.main.namespace
}

output "stage" {
  description = "show stage"
  value       = module.main.stage
}

output "name" {
  description = "show name"
  value       = module.main.name
}

output "delimiter" {
  description = "show delimiter"
  value       = module.main.delimiter
}

output "tags" {
  description = "show tags"
  value       = module.main.tags
}
