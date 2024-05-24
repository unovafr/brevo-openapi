# Brevo::SubAccountsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **count** | **Integer** | Total number of subaccounts | [optional] |
| **sub_accounts** | [**Array&lt;SubAccountsResponseSubAccountsInner&gt;**](SubAccountsResponseSubAccountsInner.md) |  | [optional] |

## Example

```ruby
require 'brevo'

instance = Brevo::SubAccountsResponse.new(
  count: null,
  sub_accounts: null
)
```

