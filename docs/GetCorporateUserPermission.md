# Brevo::GetCorporateUserPermission

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | **String** | Email address of the user. |  |
| **status** | **String** | Status of the invited user. |  |
| **groups** | [**Array&lt;GetCorporateUserPermissionGroupsInner&gt;**](GetCorporateUserPermissionGroupsInner.md) |  |  |
| **feature_access** | [**GetCorporateUserPermissionFeatureAccess**](GetCorporateUserPermissionFeatureAccess.md) |  |  |

## Example

```ruby
require 'brevo'

instance = Brevo::GetCorporateUserPermission.new(
  email: invitedUser@company.com,
  status: active / pending,
  groups: null,
  feature_access: null
)
```

