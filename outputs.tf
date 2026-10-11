output "workitemtrackingprocess_workitemtypes_lookup_id" {
  description = "Map of id values across all workitemtrackingprocess_workitemtypes_lookup, keyed the same as var.workitemtrackingprocess_workitemtypes_lookup except keys with no id are omitted"
  value       = { for k, v in data.azuredevops_workitemtrackingprocess_workitemtypes.workitemtrackingprocess_workitemtypes_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "workitemtrackingprocess_workitemtypes_lookup_process_id" {
  description = "Map of process_id values across all workitemtrackingprocess_workitemtypes_lookup, keyed the same as var.workitemtrackingprocess_workitemtypes_lookup except keys with no process_id are omitted"
  value       = { for k, v in data.azuredevops_workitemtrackingprocess_workitemtypes.workitemtrackingprocess_workitemtypes_lookup : k => v.process_id if v.process_id != null && length(v.process_id) > 0 }
}
output "workitemtrackingprocess_workitemtypes_lookup_work_item_types" {
  description = "Map of work_item_types values across all workitemtrackingprocess_workitemtypes_lookup, keyed the same as var.workitemtrackingprocess_workitemtypes_lookup except keys with no work_item_types are omitted"
  value       = { for k, v in data.azuredevops_workitemtrackingprocess_workitemtypes.workitemtrackingprocess_workitemtypes_lookup : k => v.work_item_types if v.work_item_types != null && length(v.work_item_types) > 0 }
}

