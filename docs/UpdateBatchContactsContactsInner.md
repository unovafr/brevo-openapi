# Brevo::UpdateBatchContactsContactsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | **String** | Email address of the user to be updated (For each operation only pass one of the supported contact identifiers. Email, id or sms) | [optional] |
| **id** | **Integer** | id of the user to be updated (For each operation only pass one of the supported contact identifiers. Email, id or sms) | [optional] |
| **sms** | **String** | SMS of the user to be updated (For each operation only pass one of the supported contact identifiers. Email, id or sms) | [optional] |
| **ext_id** | **String** | Pass your own Id to update ext_id of a contact. | [optional] |
| **attributes** | **Hash&lt;String, Object&gt;** | Pass the set of attributes to be updated. **These attributes must be present in your account**. To update existing email address of a contact with the new one please pass EMAIL in attribtes. For example, **{ \&quot;EMAIL\&quot;:\&quot;newemail@domain.com\&quot;, \&quot;FNAME\&quot;:\&quot;Ellie\&quot;, \&quot;LNAME\&quot;:\&quot;Roger\&quot;}**. Keep in mind transactional attributes can be updated the same way as normal attributes. Mobile Number in **SMS** field should be passed with proper country code. For example: **{\&quot;SMS\&quot;:\&quot;+91xxxxxxxxxx\&quot;} or {\&quot;SMS\&quot;:\&quot;0091xxxxxxxxxx\&quot;}**  | [optional] |
| **email_blacklisted** | **Boolean** | Set/unset this field to blacklist/allow the contact for emails (emailBlacklisted &#x3D; true) | [optional] |
| **sms_blacklisted** | **Boolean** | Set/unset this field to blacklist/allow the contact for SMS (smsBlacklisted &#x3D; true) | [optional] |
| **list_ids** | **Array&lt;Integer&gt;** | Ids of the lists to add the contact to | [optional] |
| **unlink_list_ids** | **Array&lt;Integer&gt;** | Ids of the lists to remove the contact from | [optional] |
| **smtp_blacklist_sender** | **Array&lt;String&gt;** | transactional email forbidden sender for contact. Use only for email Contact | [optional] |

## Example

```ruby
require 'brevo'

instance = Brevo::UpdateBatchContactsContactsInner.new(
  email: elly@example.com,
  id: 31,
  sms: +91xxxxxxxxxx,
  ext_id: UpdateExternalId,
  attributes: {&quot;EMAIL&quot;:&quot;newemail@domain.com&quot;,&quot;FNAME&quot;:&quot;Ellie&quot;,&quot;LNAME&quot;:&quot;Roger&quot;},
  email_blacklisted: false,
  sms_blacklisted: true,
  list_ids: null,
  unlink_list_ids: null,
  smtp_blacklist_sender: null
)
```

