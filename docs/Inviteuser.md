# Brevo::Inviteuser

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | **String** | Email address for the organization |  |
| **all_features_access** | **Boolean** | All access to the features |  |
| **privileges** | [**Array&lt;InviteuserPrivilegesInner&gt;**](InviteuserPrivilegesInner.md) |  |  |

## Example

```ruby
require 'brevo'

instance = Brevo::Inviteuser.new(
  email: inviteuser@example.com,
  all_features_access: true,
  privileges: null
)
```

