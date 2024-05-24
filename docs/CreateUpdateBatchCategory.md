# Brevo::CreateUpdateBatchCategory

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **categories** | [**Array&lt;CreateUpdateCategories&gt;**](CreateUpdateCategories.md) | array of categories objects |  |
| **update_enabled** | **Boolean** | Facilitate to update the existing categories in the same request (updateEnabled &#x3D; true) | [optional] |

## Example

```ruby
require 'brevo'

instance = Brevo::CreateUpdateBatchCategory.new(
  categories: null,
  update_enabled: null
)
```

