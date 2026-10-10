variable "kinesisanalyticsv2_application_snapshots" {
  description = <<EOT
Map of kinesisanalyticsv2_application_snapshots, attributes below
Required:
    - application_name
    - snapshot_name
Optional:
    - region
EOT

  type = map(object({
    application_name = string
    snapshot_name    = string
    region           = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.kinesisanalyticsv2_application_snapshots : (
        (length(v.application_name) >= 1 && length(v.application_name) <= 128) && (can(regex("^[0-9A-Za-z_.-]+$", v.application_name)))
      )
    ])
    error_message = "all of: must be between 1 and 128 characters; must only include alphanumeric, underscore, period, or hyphen characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.kinesisanalyticsv2_application_snapshots : (
        (length(v.snapshot_name) >= 1 && length(v.snapshot_name) <= 256) && (can(regex("^[0-9A-Za-z_.-]+$", v.snapshot_name)))
      )
    ])
    error_message = "all of: must be between 1 and 256 characters; must only include alphanumeric, underscore, period, or hyphen characters"
  }
}

