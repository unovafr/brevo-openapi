# Brevo::GetSendersListSendersInnerIpsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ip** | **String** | Dedicated IP available in your account |  |
| **domain** | **String** | Domain of the IP |  |
| **weight** | **Integer** | Weight of the IP for this sender |  |

## Example

```ruby
require 'brevo'

instance = Brevo::GetSendersListSendersInnerIpsInner.new(
  ip: 123.98.689.7,
  domain: mycompany.com,
  weight: 50
)
```

