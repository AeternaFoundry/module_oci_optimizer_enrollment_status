resource "oci_optimizer_enrollment_status" "optimizer_enrollment_statuses" {
  for_each = var.optimizer_enrollment_statuses

  enrollment_status_id = each.value.enrollment_status_id
  status               = each.value.status

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

