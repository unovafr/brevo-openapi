# Brevo::GetCorporateInvitedUsersListUsersInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **groups** | [**GetCorporateInvitedUsersListUsersInnerGroups**](GetCorporateInvitedUsersListUsersInnerGroups.md) |  | [optional] |
| **email** | **String** | Email address of the user. |  |
| **is_owner** | **String** | Flag for indicating is user owner of the organization. |  |
| **status** | **String** | Status of the invited user. |  |
| **feature_access** | [**GetCorporateInvitedUsersListUsersInnerFeatureAccess**](GetCorporateInvitedUsersListUsersInnerFeatureAccess.md) |  |  |

## Example

```ruby
require 'brevo'

instance = Brevo::GetCorporateInvitedUsersListUsersInner.new(
  groups: null,
  email: pendingInvitedUser@company.com,
  is_owner: false,
  status: active,
  feature_access: null
)
```

