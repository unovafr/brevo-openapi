# Brevo::GetChildDomain

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **domain** | **String** | Sender domain |  |
| **active** | **Boolean** | indicates whether a domain is verified or not |  |

## Example

```ruby
require 'brevo'

instance = Brevo::GetChildDomain.new(
  domain: mycustomdomain.com,
  active: true
)
```

