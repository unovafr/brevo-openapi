# Brevo::CompanyAttributesInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **internal_name** | **String** |  | [optional] |
| **label** | **String** |  | [optional] |
| **attribute_type_name** | **String** |  | [optional] |
| **attribute_options** | **Array&lt;Object&gt;** |  | [optional] |
| **is_required** | **Boolean** |  | [optional] |

## Example

```ruby
require 'brevo'

instance = Brevo::CompanyAttributesInner.new(
  internal_name: name,
  label: Company Name,
  attribute_type_name: text,
  attribute_options: null,
  is_required: true
)
```

