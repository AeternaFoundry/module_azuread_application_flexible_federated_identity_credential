variable "application_flexible_federated_identity_credentials" {
  description = <<EOT
Map of application_flexible_federated_identity_credentials, attributes below
Required:
    - application_id
    - audience
    - claims_matching_expression
    - display_name
    - issuer
Optional:
    - description
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - read (optional)
        - update (optional)
EOT

  type = map(object({
    application_id             = string
    audience                   = string
    claims_matching_expression = string
    display_name               = string
    issuer                     = string
    description                = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      read   = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.application_flexible_federated_identity_credentials : (
        can(regex("^(/[^/]+/[^/]+)+$", v.application_id))
      )
    ])
    error_message = "must be a valid Azure resource ID"
  }
  validation {
    condition = alltrue([
      for k, v in var.application_flexible_federated_identity_credentials : (
        length(v.audience) >= 1 && length(v.audience) <= 600
      )
    ])
    error_message = "must be between 1 and 600 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.application_flexible_federated_identity_credentials : (
        length(trimspace(v.claims_matching_expression)) > 0
      )
    ])
    error_message = "must not be empty or only whitespace"
  }
  validation {
    condition = alltrue([
      for k, v in var.application_flexible_federated_identity_credentials : (
        length(v.display_name) >= 1 && length(v.display_name) <= 120
      )
    ])
    error_message = "must be between 1 and 120 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.application_flexible_federated_identity_credentials : (
        length(trimspace(v.issuer)) > 0
      )
    ])
    error_message = "must not be empty or only whitespace"
  }
  validation {
    condition = alltrue([
      for k, v in var.application_flexible_federated_identity_credentials : (
        v.description == null || (length(v.description) <= 600)
      )
    ])
    error_message = "must be at most 600 characters"
  }
}

