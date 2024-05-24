# Brevo::GetChildDomain

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **domain** | **String** | Sender domain | [optional] |
| **active** | **Boolean** | indicates whether a domain is verified or not | [optional] |

## Example

```ruby
require 'brevo'

instance = Brevo::GetChildDomain.new(
  domain: mycustomdomain.com,
  active: true
)
```

