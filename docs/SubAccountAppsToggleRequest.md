# Brevo::SubAccountAppsToggleRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **inbox** | **Boolean** | Set this field to enable or disable Inbox on the sub-account / Not applicable on ENTv2 | [optional] |
| **whatsapp** | **Boolean** | Set this field to enable or disable Whatsapp campaigns on the sub-account | [optional] |
| **automation** | **Boolean** | Set this field to enable or disable Automation on the sub-account | [optional] |
| **email_campaigns** | **Boolean** | Set this field to enable or disable Email Campaigns on the sub-account | [optional] |
| **sms_campaigns** | **Boolean** | Set this field to enable or disable SMS Marketing on the sub-account | [optional] |
| **landing_pages** | **Boolean** | Set this field to enable or disable Landing pages on the sub-account | [optional] |
| **transactional_emails** | **Boolean** | Set this field to enable or disable Transactional Email on the sub-account | [optional] |
| **transactional_sms** | **Boolean** | Set this field to enable or disable Transactional SMS on the sub-account | [optional] |
| **facebook_ads** | **Boolean** | Set this field to enable or disable Facebook ads on the sub-account | [optional] |
| **web_push** | **Boolean** | Set this field to enable or disable Web Push on the sub-account | [optional] |
| **meetings** | **Boolean** | Set this field to enable or disable Meetings on the sub-account | [optional] |
| **conversations** | **Boolean** | Set this field to enable or disable Conversations on the sub-account | [optional] |
| **crm** | **Boolean** | Set this field to enable or disable Sales CRM on the sub-account | [optional] |

## Example

```ruby
require 'brevo'

instance = Brevo::SubAccountAppsToggleRequest.new(
  inbox: null,
  whatsapp: null,
  automation: null,
  email_campaigns: null,
  sms_campaigns: null,
  landing_pages: null,
  transactional_emails: null,
  transactional_sms: null,
  facebook_ads: null,
  web_push: null,
  meetings: null,
  conversations: null,
  crm: null
)
```

