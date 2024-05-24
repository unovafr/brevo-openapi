# Brevo::UpdateSender

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | From Name to update the sender | [optional] |
| **email** | **String** | From Email to update the sender | [optional] |
| **ips** | [**Array&lt;CreateSenderIpsInner&gt;**](CreateSenderIpsInner.md) | **Only in case of dedicated IP**. IPs to associate to the sender. If passed, will replace all the existing IPs.  | [optional] |

## Example

```ruby
require 'brevo'

instance = Brevo::UpdateSender.new(
  name: Newsletter,
  email: newsletter@mycompany.com,
  ips: null
)
```

