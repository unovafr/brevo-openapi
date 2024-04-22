# Brevo::GetContactDetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | **String** | Email address of the contact for which you requested the details | [optional] |
| **id** | **Integer** | ID of the contact for which you requested the details |  |
| **email_blacklisted** | **Boolean** | Blacklist status for email campaigns (true&#x3D;blacklisted, false&#x3D;not blacklisted) |  |
| **sms_blacklisted** | **Boolean** | Blacklist status for SMS campaigns (true&#x3D;blacklisted, false&#x3D;not blacklisted) |  |
| **created_at** | **Time** | Creation UTC date-time of the contact (YYYY-MM-DDTHH:mm:ss.SSSZ) |  |
| **modified_at** | **Time** | Last modification UTC date-time of the contact (YYYY-MM-DDTHH:mm:ss.SSSZ) |  |
| **list_ids** | **Array&lt;Integer&gt;** |  |  |
| **list_unsubscribed** | **Array&lt;Integer&gt;** |  | [optional] |
| **attributes** | **Object** | Set of attributes of the contact |  |

## Example

```ruby
require 'brevo'

instance = Brevo::GetContactDetails.new(
  email: john.smith@example.com,
  id: 32,
  email_blacklisted: false,
  sms_blacklisted: true,
  created_at: 2017-05-12T12:30Z,
  modified_at: 2017-05-12T12:30Z,
  list_ids: null,
  list_unsubscribed: null,
  attributes: {&quot;name&quot;:&quot;Joe&quot;,&quot;email&quot;:&quot;joe@example.com&quot;}
)
```

