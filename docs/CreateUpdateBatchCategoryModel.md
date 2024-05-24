# Brevo::CreateUpdateBatchCategoryModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **created_count** | **Integer** | Number of the new created categories | [optional] |
| **updated_count** | **Integer** | Number of the existing categories updated | [optional] |

## Example

```ruby
require 'brevo'

instance = Brevo::CreateUpdateBatchCategoryModel.new(
  created_count: 7,
  updated_count: 5
)
```

