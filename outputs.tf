output "namespace" {
  value       = local.output_data.namespace
  description = "Normalized namespace"
}

output "environment" {
  value       = local.output_data.environment
  description = "Normalized environment"
}

output "name" {
  value       = local.output_data.name
  description = "Normalized name"
}

output "stage" {
  value       = local.output_data.stage
  description = "Normalized stage"
}

output "delimiter" {
  value       = local.output_data.delimiter
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
  value       = local.output_data.attributes
  description = "List of attributes"
}

output "label_order" {
  value       = local.output_data.label_order
  description = "The naming order actually used to create the ID"
}

output "tags" {
  description = "Tags as a map (includes a `Name` tag)"
  value       = local.output_data.tags
}
