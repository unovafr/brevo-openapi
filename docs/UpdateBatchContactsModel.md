# Brevo::UpdateBatchContactsModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success_ids** | **Array&lt;Integer&gt;** |  | [optional] |
| **failure_ids** | **Array&lt;Integer&gt;** |  | [optional] |

## Example

```ruby
require 'brevo'

instance = Brevo::UpdateBatchContactsModel.new(
  success_ids: 1,2,
  failure_ids: 3,4
)
```

