# Brevo::SendWhatsappMessageTemplate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **template_id** | **Integer** | ID of the template to send |  |
| **sender_number** | **String** | WhatsApp Number with country code. Example, 85264318721 |  |
| **params** | **Object** | Pass the set of attributes to customize the template. For example, {\&quot;FNAME\&quot;:\&quot;Joe\&quot;, \&quot;LNAME\&quot;:\&quot;Doe\&quot;}. | [optional] |
| **contact_numbers** | **Array&lt;String&gt;** | List of phone numbers of the contacts |  |

## Example

```ruby
require 'brevo'

instance = Brevo::SendWhatsappMessageTemplate.new(
  template_id: 123,
  sender_number: 919876543210,
  params: {&quot;FNAME&quot;:&quot;Joe&quot;,&quot;LNAME&quot;:&quot;Doe&quot;},
  contact_numbers: null
)
```

