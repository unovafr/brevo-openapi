# Brevo::VariablesItems

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  | [optional] |
| **default** | **String** |  | [optional] |
| **datatype** | **String** |  | [optional] |

## Example

```ruby
require 'brevo'

instance = Brevo::VariablesItems.new(
  name: FIRSTNAME,
  default: INVALID_HEADER,
  datatype: text
)
```

