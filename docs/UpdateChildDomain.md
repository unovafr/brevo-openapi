# Brevo::UpdateChildDomain

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **domain** | **String** | Value for the sender domain that will replace the existing domain | [optional] |

## Example

```ruby
require 'brevo'

instance = Brevo::UpdateChildDomain.new(
  domain: myupdateddomain.com
)
```

