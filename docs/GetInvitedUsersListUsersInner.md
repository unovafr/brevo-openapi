# Brevo::GetInvitedUsersListUsersInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | **String** | Email address of the user. |  |
| **is_owner** | **String** | Flag for indicating is user owner of the organization. |  |
| **status** | **String** | Status of the invited user. |  |
| **feature_access** | [**GetInvitedUsersListUsersInnerFeatureAccess**](GetInvitedUsersListUsersInnerFeatureAccess.md) |  |  |

## Example

```ruby
require 'brevo'

instance = Brevo::GetInvitedUsersListUsersInner.new(
  email: pendingInvitedUser@company.com,
  is_owner: true,
  status: active,
  feature_access: null
)
```

