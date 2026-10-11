data "azuredevops_workitemtrackingprocess_workitemtypes" "workitemtrackingprocess_workitemtypes_lookup" {
  for_each = var.workitemtrackingprocess_workitemtypes_lookup

  process_id = each.value.process_id

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      read = timeouts.value.read
    }
  }
}

