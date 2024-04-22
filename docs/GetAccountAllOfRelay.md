# Brevo::GetAccountAllOfRelay

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **enabled** | **Boolean** | Status of your transactional email Account (true&#x3D;Enabled, false&#x3D;Disabled) |  |
| **data** | [**GetAccountAllOfRelayData**](GetAccountAllOfRelayData.md) |  |  |

## Example

```ruby
require 'brevo'

instance = Brevo::GetAccountAllOfRelay.new(
  enabled: true,
  data: null
)
```

