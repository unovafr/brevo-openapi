# Brevo::InviteAdminUser

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | **String** | Email address for the organization |  |
| **all_features_access** | **Boolean** | All access to the features |  |
| **group_ids** | **Array&lt;String&gt;** | Ids of Group | [optional] |
| **privileges** | [**Array&lt;InviteAdminUserPrivilegesInner&gt;**](InviteAdminUserPrivilegesInner.md) |  |  |

## Example

```ruby
require 'brevo'

instance = Brevo::InviteAdminUser.new(
  email: inviteuser@example.com,
  all_features_access: true,
  group_ids: [&quot;2baxxxxxxxxxxxxxxxxxxxxxcaa&quot;,&quot;65axxxxxxxxxxxxxxxxxxxxxc5a&quot;],
  privileges: null
)
```

