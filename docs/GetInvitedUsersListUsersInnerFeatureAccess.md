# Brevo::GetInvitedUsersListUsersInnerFeatureAccess

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **marketing** | **String** | Marketing features accessiblity. | [optional] |
| **conversations** | **String** | Conversations features accessiblity. | [optional] |
| **crm** | **String** | CRM features accessiblity. | [optional] |

## Example

```ruby
require 'brevo'

instance = Brevo::GetInvitedUsersListUsersInnerFeatureAccess.new(
  marketing: custom,
  conversations: none,
  crm: full
)
```

