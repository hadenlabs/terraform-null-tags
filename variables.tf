variable "config" {
  type = any
  default = {
    delimiter           = null
    regex_replace_chars = null
    label_order         = []
    label_key_case      = null
    label_value_case    = null
  }
  description = <<-EOT
    Single object for setting entire configuration at once.
    See description of individual variables for details.
  EOT

  validation {
    condition     = lookup(var.config, "label_key_case", null) == null ? true : contains(["lower", "title", "upper"], var.config["label_key_case"])
    error_message = "Allowed values: `lower`, `title`, `upper`."
  }

  validation {
    condition     = lookup(var.config, "label_value_case", null) == null ? true : contains(["lower", "title", "upper", "none"], var.config["label_value_case"])
    error_message = "Allowed values: `lower`, `title`, `upper`, `none`."
  }
}

variable "namespace" {
  type        = string
  default     = null
  description = "Namespace, which could be your organization name or abbreviation, e.g. 'eg' or 'cp'"
}

variable "environment" {
  type        = string
  default     = null
  description = "Environment, e.g. 'uw2', 'us-west-2', OR 'prod', 'staging', 'dev', 'UAT'"
}

variable "stage" {
  type        = string
  default     = null
  description = "Stage, e.g. 'prod', 'staging', 'dev', OR 'source', 'build', 'test', 'deploy', 'release'"
}

variable "name" {
  type        = string
  default     = null
  description = "Solution name, e.g. 'app' or 'jenkins'"
}

variable "attributes" {
  type        = list(string)
  default     = []
  description = "Additional attributes (e.g. `1`)"
}

variable "tags" {
  type        = map(string)
  default     = {}
  description = "Additional tags (e.g. `map('BusinessUnit','XYZ')`"
}
