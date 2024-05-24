# Brevo::CreateContact

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | **String** | Email address of the user. **Mandatory if \&quot;SMS\&quot; field is not passed in \&quot;attributes\&quot; parameter**. Mobile Number in **SMS** field should be passed with proper country code. For example: **{\&quot;SMS\&quot;:\&quot;+91xxxxxxxxxx\&quot;}** or **{\&quot;SMS\&quot;:\&quot;0091xxxxxxxxxx\&quot;}**  | [optional] |
| **ext_id** | **String** | Pass your own Id to create a contact. | [optional] |
| **attributes** | **Hash&lt;String, Object&gt;** | Pass the set of attributes and their values. The attribute&#39;s parameter should be passed in capital letter while creating a contact. Values that don&#39;t match the attribute type (e.g. text or string in a date attribute) will be ignored. **These attributes must be present in your Brevo account.**. For eg: **{\&quot;FNAME\&quot;:\&quot;Elly\&quot;, \&quot;LNAME\&quot;:\&quot;Roger\&quot;}**  | [optional] |
| **email_blacklisted** | **Boolean** | Set this field to blacklist the contact for emails (emailBlacklisted &#x3D; true) | [optional] |
| **sms_blacklisted** | **Boolean** | Set this field to blacklist the contact for SMS (smsBlacklisted &#x3D; true) | [optional] |
| **list_ids** | **Array&lt;Integer&gt;** | Ids of the lists to add the contact to | [optional] |
| **update_enabled** | **Boolean** | Facilitate to update the existing contact in the same request (updateEnabled &#x3D; true) | [optional][default to false] |
| **smtp_blacklist_sender** | **Array&lt;String&gt;** | transactional email forbidden sender for contact. Use only for email Contact ( only available if updateEnabled &#x3D; true ) | [optional] |

## Example

```ruby
require 'brevo'

instance = Brevo::CreateContact.new(
  email: elly@example.com,
  ext_id: externalId,
  attributes: {&quot;FNAME&quot;:&quot;Elly&quot;,&quot;LNAME&quot;:&quot;Roger&quot;},
  email_blacklisted: false,
  sms_blacklisted: false,
  list_ids: null,
  update_enabled: false,
  smtp_blacklist_sender: null
)
```

