output "namespace" {
  value       = local.outputs.namespace
  description = "Normalized namespace"
}

output "environment" {
  value       = local.outputs.environment
  description = "Normalized environment"
}

output "name" {
  value       = local.outputs.name
  description = "Normalized name"
}

output "stage" {
  value       = local.outputs.stage
  description = "Normalized stage"
}

output "delimiter" {
  value       = local.outputs.delimiter
  description = "Delimiter between `namespace`, `environment`, `stage`, `name` and `attributes`"
}

output "name6" {
  description = "first 6 chars of string name"
  value       = substr(local.name, 0, 6)
}

output "name32" {
  description = "first 32 chars of string name"
  value       = substr(local.name, 0, 32)
}

output "attributes" {
  value       = local.outputs.attributes
  description = "List of attributes"
}

output "label_order" {
  value       = local.outputs.label_order
  description = "The naming order actually used to create the ID"
}

output "tags" {
  description = "Tags as a map (includes a `Name` tag)"
  value       = local.outputs.tags
}
