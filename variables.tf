variable "workitemtrackingprocess_workitemtypes_lookup" {
  description = <<EOT
Map of workitemtrackingprocess_workitemtypes_lookup, attributes below
Required:
    - process_id
Optional:
    - timeouts (block):
        - read (optional)
EOT

  type = map(object({
    process_id = string
    timeouts = optional(object({
      read = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.workitemtrackingprocess_workitemtypes_lookup : (
        can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", v.process_id))
      )
    ])
    error_message = "must be a valid UUID"
  }
}

