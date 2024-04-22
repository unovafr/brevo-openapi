# Brevo::ErrorModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** | Error code displayed in case of a failure |  |
| **message** | **String** | Readable message associated to the failure |  |

## Example

```ruby
require 'brevo'

instance = Brevo::ErrorModel.new(
  code: method_not_allowed,
  message: POST Method is not allowed on this path
)
```

