output "cloud_identity_group_memberships_id" {
  description = "Map of id values across all cloud_identity_group_memberships, keyed the same as var.cloud_identity_group_memberships except keys with no id are omitted"
  value       = { for k, v in google_cloud_identity_group_membership.cloud_identity_group_memberships : k => v.id if v.id != null && length(v.id) > 0 }
}
output "cloud_identity_group_memberships_create_ignore_already_exists" {
  description = "Map of create_ignore_already_exists values across all cloud_identity_group_memberships, keyed the same as var.cloud_identity_group_memberships except keys with no create_ignore_already_exists are omitted"
  value       = { for k, v in google_cloud_identity_group_membership.cloud_identity_group_memberships : k => v.create_ignore_already_exists if v.create_ignore_already_exists != null }
}
output "cloud_identity_group_memberships_create_time" {
  description = "Map of create_time values across all cloud_identity_group_memberships, keyed the same as var.cloud_identity_group_memberships except keys with no create_time are omitted"
  value       = { for k, v in google_cloud_identity_group_membership.cloud_identity_group_memberships : k => v.create_time if v.create_time != null && length(v.create_time) > 0 }
}
output "cloud_identity_group_memberships_deletion_policy" {
  description = "Map of deletion_policy values across all cloud_identity_group_memberships, keyed the same as var.cloud_identity_group_memberships except keys with no deletion_policy are omitted"
  value       = { for k, v in google_cloud_identity_group_membership.cloud_identity_group_memberships : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "cloud_identity_group_memberships_group" {
  description = "Map of group values across all cloud_identity_group_memberships, keyed the same as var.cloud_identity_group_memberships except keys with no group are omitted"
  value       = { for k, v in google_cloud_identity_group_membership.cloud_identity_group_memberships : k => v.group if v.group != null && length(v.group) > 0 }
}
output "cloud_identity_group_memberships_name" {
  description = "Map of name values across all cloud_identity_group_memberships, keyed the same as var.cloud_identity_group_memberships except keys with no name are omitted"
  value       = { for k, v in google_cloud_identity_group_membership.cloud_identity_group_memberships : k => v.name if v.name != null && length(v.name) > 0 }
}
output "cloud_identity_group_memberships_preferred_member_key" {
  description = "Map of preferred_member_key values across all cloud_identity_group_memberships, keyed the same as var.cloud_identity_group_memberships except keys with no preferred_member_key are omitted"
  value       = { for k, v in google_cloud_identity_group_membership.cloud_identity_group_memberships : k => one(v.preferred_member_key) if v.preferred_member_key != null && length(v.preferred_member_key) > 0 }
}
output "cloud_identity_group_memberships_roles" {
  description = "Map of roles values across all cloud_identity_group_memberships, keyed the same as var.cloud_identity_group_memberships except keys with no roles are omitted"
  value       = { for k, v in google_cloud_identity_group_membership.cloud_identity_group_memberships : k => v.roles if v.roles != null && length(v.roles) > 0 }
}
output "cloud_identity_group_memberships_type" {
  description = "Map of type values across all cloud_identity_group_memberships, keyed the same as var.cloud_identity_group_memberships except keys with no type are omitted"
  value       = { for k, v in google_cloud_identity_group_membership.cloud_identity_group_memberships : k => v.type if v.type != null && length(v.type) > 0 }
}
output "cloud_identity_group_memberships_update_time" {
  description = "Map of update_time values across all cloud_identity_group_memberships, keyed the same as var.cloud_identity_group_memberships except keys with no update_time are omitted"
  value       = { for k, v in google_cloud_identity_group_membership.cloud_identity_group_memberships : k => v.update_time if v.update_time != null && length(v.update_time) > 0 }
}

