# Brevo::SendTransacSms

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sender** | **String** | Name of the sender. **The number of characters is limited to 11 for alphanumeric characters and 15 for numeric characters** |  |
| **recipient** | **String** | Mobile number to send SMS with the country code |  |
| **content** | **String** | Content of the message. If more than 160 characters long, will be sent as multiple text messages |  |
| **type** | **String** | Type of the SMS. Marketing SMS messages are those sent typically with marketing content. Transactional SMS messages are sent to individuals and are triggered in response to some action, such as a sign-up, purchase, etc. | [optional][default to &#39;transactional&#39;] |
| **tag** | **String** | Tag of the message | [optional] |
| **web_url** | **String** | Webhook to call for each event triggered by the message (delivered etc.) | [optional] |
| **unicode_enabled** | **Boolean** | Format of the message. It indicates whether the content should be treated as unicode or not. | [optional] |
| **organisation_prefix** | **String** | A recognizable prefix will ensure your audience knows who you are.**Mandatory for U.S. Carriers**.This will be added as your Brand Name before the message content and will be included in content,**Prefer to verify maximum length of 160 characters including this prefix to avoid multiple sending of same sms**. | [optional] |

## Example

```ruby
require 'brevo'

instance = Brevo::SendTransacSms.new(
  sender: MyShop,
  recipient: 33689965433,
  content: Enter this code:CCJJG8 to validate your account,
  type: marketing,
  tag: accountValidation,
  web_url: http://requestb.in/173lyyx1,
  unicode_enabled: false,
  organisation_prefix: MyCompany
)
```

