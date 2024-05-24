# Brevo::Configuration

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **custom_success_url** | **String** | Absolute URL of the custom success page.  |  |

## Example

```ruby
require 'brevo'

instance = Brevo::Configuration.new(
  custom_success_url: https://my-company.com/payment-success
)
```

