variable "optimizer_enrollment_statuses" {
  description = <<EOT
Map of optimizer_enrollment_statuses, attributes below
Required:
    - enrollment_status_id
    - status
Optional:
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    enrollment_status_id = string
    status               = string
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

