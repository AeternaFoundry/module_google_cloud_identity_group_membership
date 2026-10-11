variable "cloud_identity_group_memberships" {
  description = <<EOT
Map of cloud_identity_group_memberships, attributes below
Required:
    - group
    - roles (block):
        - expiry_detail (optional, block):
            - expire_time (required)
        - name (required)
Optional:
    - create_ignore_already_exists
    - deletion_policy
    - preferred_member_key (block):
        - id (required)
        - namespace (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    group                        = string
    create_ignore_already_exists = optional(bool)
    deletion_policy              = optional(string)
    roles = list(object({
      expiry_detail = optional(object({
        expire_time = string
      }))
      name = string
    }))
    preferred_member_key = optional(object({
      id        = string
      namespace = optional(string)
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.cloud_identity_group_memberships : (
        length(v.roles) >= 1
      )
    ])
    error_message = "Each roles list must contain at least 1 items"
  }
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

