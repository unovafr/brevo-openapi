# Brevo::AddChildDomain

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **domain** | **String** | Sender domain to add for a specific child account | [optional] |

## Example

```ruby
require 'brevo'

instance = Brevo::AddChildDomain.new(
  domain: mychilddomain.com
)
```

