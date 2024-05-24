# Brevo::GetUserPermission

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | **String** | Email address of the user. |  |
| **status** | **String** | Status of the invited user. |  |
| **privileges** | [**Array&lt;GetUserPermissionPrivilegesInner&gt;**](GetUserPermissionPrivilegesInner.md) | Granular feature permissions given to the user. |  |

## Example

```ruby
require 'brevo'

instance = Brevo::GetUserPermission.new(
  email: invitedUser@company.com,
  status: active,
  privileges: null
)
```

