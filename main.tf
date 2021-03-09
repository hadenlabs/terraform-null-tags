locals {

  defaults = {
    label_order         = ["namespace", "environment", "stage", "name", "attributes"]
    regex_replace_chars = "/[^-a-zA-Z0-9]/"
    delimiter           = "-"
    replacement         = ""
    id_length_limit     = 0
    id_hash_length      = 5
    label_key_case      = "title"
    label_value_case    = "lower"
  }

  input = merge({
    namespace   = var.namespace
    environment = var.environment
    stage       = var.stage
    name        = var.name
    attributes  = var.attributes
    tags        = var.tags

  }, var.config)

  config = merge(local.defaults, local.input)

  # string_label_names are names of inputs that are strings (not list of strings) used as labels
  string_label_names = ["name", "namespace", "environment", "stage"]
  normalized_labels = { for k in local.string_label_names : k =>
    local.input[k] == null ? "" : replace(local.input[k], local.config.regex_replace_chars, local.config.replacement)
  }
  normalized_attributes = compact(distinct([for v in local.input.attributes : replace(v, local.config.regex_replace_chars, local.config.replacement)]))

  formatted_labels = { for k in local.string_label_names : k => local.config.label_value_case == "none" ? local.normalized_labels[k] :
    local.config.label_value_case == "title" ? title(lower(local.normalized_labels[k])) :
    local.config.label_value_case == "upper" ? upper(local.normalized_labels[k]) : lower(local.normalized_labels[k])
  }

  attributes = compact(distinct([
    for v in local.normalized_attributes : (local.config.label_value_case == "none" ? v :
      local.config.label_value_case == "title" ? title(lower(v)) :
    local.config.label_value_case == "upper" ? upper(v) : lower(v))
  ]))

  name        = local.formatted_labels["name"]
  namespace   = local.formatted_labels["namespace"]
  environment = local.formatted_labels["environment"]
  stage       = local.formatted_labels["stage"]

  tags_context = {
    namespace   = local.namespace
    environment = local.environment
    stage       = local.stage
    attributes  = local.id_context.attributes
  }

  generated_tags = {
    for l in keys(local.tags_context) :
    local.config.label_key_case == "upper" ? upper(l) : (
      local.config.label_key_case == "lower" ? lower(l) : title(lower(l))
    ) => local.tags_context[l] if length(local.tags_context[l]) > 0
  }

  tags = merge(local.generated_tags, local.input.tags)

  # output data
  output_data = {
    name             = local.name
    namespace        = local.namespace
    environment      = local.environment
    stage            = local.stage
    delimiter        = local.delimiter
    attributes       = local.attributes
    tags             = local.tags
    label_order      = local.label_order
    label_key_case   = local.label_key_case
    label_value_case = local.label_value_case
  }

}
