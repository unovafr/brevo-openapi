# Brevo::CorporateGroupDetailsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **group** | [**CorporateGroupDetailsResponseGroup**](CorporateGroupDetailsResponseGroup.md) |  | [optional] |
| **sub_accounts** | [**Array&lt;CorporateGroupDetailsResponseSubAccountsInner&gt;**](CorporateGroupDetailsResponseSubAccountsInner.md) |  | [optional] |
| **users** | [**Array&lt;CorporateGroupDetailsResponseUsersInner&gt;**](CorporateGroupDetailsResponseUsersInner.md) |  | [optional] |

## Example

```ruby
require 'brevo'

instance = Brevo::CorporateGroupDetailsResponse.new(
  group: null,
  sub_accounts: null,
  users: null
)
```

