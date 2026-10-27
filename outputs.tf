output "workitemtrackingprocess_workitemtypes_lookup_id" {
  description = "Map of id values across all workitemtrackingprocess_workitemtypes_lookup, keyed the same as var.workitemtrackingprocess_workitemtypes_lookup"
  value       = { for k, v in data.azuredevops_workitemtrackingprocess_workitemtypes.workitemtrackingprocess_workitemtypes_lookup : k => v.id }
}
output "workitemtrackingprocess_workitemtypes_lookup_process_id" {
  description = "Map of process_id values across all workitemtrackingprocess_workitemtypes_lookup, keyed the same as var.workitemtrackingprocess_workitemtypes_lookup"
  value       = { for k, v in data.azuredevops_workitemtrackingprocess_workitemtypes.workitemtrackingprocess_workitemtypes_lookup : k => v.process_id }
}
output "workitemtrackingprocess_workitemtypes_lookup_work_item_types" {
  description = "Map of work_item_types values across all workitemtrackingprocess_workitemtypes_lookup, keyed the same as var.workitemtrackingprocess_workitemtypes_lookup"
  value       = { for k, v in data.azuredevops_workitemtrackingprocess_workitemtypes.workitemtrackingprocess_workitemtypes_lookup : k => v.work_item_types }
}

