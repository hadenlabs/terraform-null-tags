variable "config" {
  type        = any
  description = <<-EOT
    Single object for setting entire configuration at once.
    See description of individual variables for details.
  EOT

  default = {}

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
  description = "Namespace, which could be your organization name or abbreviation, e.g. 'eg' or 'cp'"
}

variable "stage" {
  type        = string
  description = "Stage, e.g. 'prod', 'staging', 'dev', OR 'source', 'build', 'test', 'deploy', 'release'"
}

variable "name" {
  type        = string
  description = "Solution name, e.g. 'app' or 'jenkins'"
}

variable "attributes" {
  type        = list(string)
  description = "Additional attributes (e.g. `1`)"
  default     = []
}

variable "tags" {
  type        = map(string)
  description = "Additional tags (e.g. `map('BusinessUnit','XYZ')`"
  default     = {}
}
