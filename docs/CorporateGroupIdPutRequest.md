# Brevo::CorporateGroupIdPutRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **group_name** | **String** | The name of the group of sub-accounts | [optional] |
| **sub_account_ids** | **Array&lt;Integer&gt;** | Pass the list of sub-account Ids to be included in the group | [optional] |

## Example

```ruby
require 'brevo'

instance = Brevo::CorporateGroupIdPutRequest.new(
  group_name: My group,
  sub_account_ids: [234322,325553,893432]
)
```

