# Brevo::SendTestSms

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **phone_number** | **String** | Mobile number of the recipient with the country code. This number **must belong to one of your contacts in Brevo account and must not be blacklisted**  | [optional] |

## Example

```ruby
require 'brevo'

instance = Brevo::SendTestSms.new(
  phone_number: 33689965433
)
```

