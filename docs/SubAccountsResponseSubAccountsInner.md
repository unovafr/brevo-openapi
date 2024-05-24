# Brevo::SubAccountsResponseSubAccountsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | id of the sub-account |  |
| **company_name** | **String** | Name of the sub-account company |  |
| **active** | **Boolean** | Whether the sub-account is active or not |  |
| **created_at** | **Integer** | Timestamp when the sub-account was created |  |
| **groups** | [**Array&lt;SubAccountsResponseSubAccountsInnerGroupsInner&gt;**](SubAccountsResponseSubAccountsInnerGroupsInner.md) | Group details |  |

## Example

```ruby
require 'brevo'

instance = Brevo::SubAccountsResponseSubAccountsInner.new(
  id: null,
  company_name: null,
  active: null,
  created_at: null,
  groups: null
)
```

