# Brevo::DealAttributesInner

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

instance = Brevo::DealAttributesInner.new(
  internal_name: deal_name,
  label: Deal Name,
  attribute_type_name: text,
  attribute_options: null,
  is_required: true
)
```

