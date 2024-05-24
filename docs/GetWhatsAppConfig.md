# Brevo::GetWhatsAppConfig

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **whatsapp_business_account_id** | **String** | Id of the WhatsApp business account | [optional] |
| **sending_limit** | **String** | Sending limit Information of the WhatsApp API account | [optional] |
| **phone_number_quality** | **String** | Quality status of phone number associated with WhatsApp account. There are three quality ratings. example - **High (GREEN) , Medium (YELLOW) and Low(RED)** | [optional] |
| **whatsapp_business_account_status** | **String** | Status information related to WhatsApp API account | [optional] |
| **business_status** | **String** | Verification status information of the Business account | [optional] |
| **phone_number_name_status** | **String** | Status of the name associated with WhatsApp Phone number | [optional] |

## Example

```ruby
require 'brevo'

instance = Brevo::GetWhatsAppConfig.new(
  whatsapp_business_account_id: 105569359072383,
  sending_limit: TIER_1K,
  phone_number_quality: GREEN,
  whatsapp_business_account_status: APPROVED,
  business_status: verified,
  phone_number_name_status: APPROVED
)
```

