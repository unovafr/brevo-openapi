# Brevo::InviteAdminUserPrivilegesInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **feature** | **String** | Feature name | [optional] |
| **permissions** | **Array&lt;String&gt;** | Permissions for a given feature | [optional] |

## Example

```ruby
require 'brevo'

instance = Brevo::InviteAdminUserPrivilegesInner.new(
  feature: user_management,
  permissions: null
)
```

