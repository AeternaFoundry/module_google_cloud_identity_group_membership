resource "google_cloud_identity_group_membership" "cloud_identity_group_memberships" {
  for_each = var.cloud_identity_group_memberships

  group                        = each.value.group
  create_ignore_already_exists = each.value.create_ignore_already_exists
  deletion_policy              = each.value.deletion_policy

  dynamic "roles" {
    for_each = each.value.roles
    content {
      dynamic "expiry_detail" {
        for_each = roles.value.expiry_detail != null ? [roles.value.expiry_detail] : []
        content {
          expire_time = expiry_detail.value.expire_time
        }
      }
      name = roles.value.name
    }
  }

  dynamic "preferred_member_key" {
    for_each = each.value.preferred_member_key != null ? [each.value.preferred_member_key] : []
    content {
      id        = preferred_member_key.value.id
      namespace = preferred_member_key.value.namespace
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

