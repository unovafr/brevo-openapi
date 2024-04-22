# brevo

Brevo - the Ruby gem for the SendinBlue API

SendinBlue provide a RESTFul API that can be used with any languages. With this API, you will be able to :
  - Manage your campaigns and get the statistics
  - Manage your contacts
  - Send transactional Emails and SMS
  - and much more...

You can download our wrappers at https://github.com/orgs/sendinblue

**Possible responses**
  | Code | Message |
  | :-------------: | ------------- |
  | 200  | OK. Successful Request  |
  | 201  | OK. Successful Creation |
  | 202  | OK. Request accepted |
  | 204  | OK. Successful Update/Deletion  |
  | 400  | Error. Bad Request  |
  | 401  | Error. Authentication Needed  |
  | 402  | Error. Not enough credit, plan upgrade needed  |
  | 403  | Error. Permission denied  |
  | 404  | Error. Object does not exist |
  | 405  | Error. Method not allowed  |
  | 406  | Error. Not Acceptable  |


This SDK is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: 3.0.0
- Package version: 1.0.0
- Generator version: 7.5.0
- Build package: org.openapitools.codegen.languages.RubyClientCodegen
For more information, please visit [https://account.sendinblue.com/support](https://account.sendinblue.com/support)

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build brevo.gemspec
```

Then either install the gem locally:

```shell
gem install ./brevo-1.0.0.gem
```

(for development, run `gem install --dev ./brevo-1.0.0.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'brevo', '~> 1.0.0'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/GIT_USER_ID/GIT_REPO_ID, then add the following in the Gemfile:

    gem 'brevo', :git => 'https://github.com/GIT_USER_ID/GIT_REPO_ID.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:

```ruby
# Load the gem
require 'brevo'

# Setup authorization
Brevo.configure do |config|
  # Configure API key authorization: api-key
  config.api_key['api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api-key'] = 'Bearer'
  # Configure httpx session
  config.configure_session { |session| 'YOUR CONNECTION CONFIG PROC' }
end

api_instance = Brevo::AccountApi.new

begin
  #Get your account information, plan and credits details
  result = api_instance.get_account
  p result
rescue Brevo::ApiError => e
  puts "Exception when calling AccountApi->get_account: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *https://api.sendinblue.com/v3*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*Brevo::AccountApi* | [**get_account**](docs/AccountApi.md#get_account) | **GET** /account | Get your account information, plan and credits details
*Brevo::AttributesApi* | [**create_attribute**](docs/AttributesApi.md#create_attribute) | **POST** /contacts/attributes/{attributeCategory}/{attributeName} | Create contact attribute
*Brevo::AttributesApi* | [**delete_attribute**](docs/AttributesApi.md#delete_attribute) | **DELETE** /contacts/attributes/{attributeCategory}/{attributeName} | Delete an attribute
*Brevo::AttributesApi* | [**get_attributes**](docs/AttributesApi.md#get_attributes) | **GET** /contacts/attributes | List all attributes
*Brevo::AttributesApi* | [**update_attribute**](docs/AttributesApi.md#update_attribute) | **PUT** /contacts/attributes/{attributeCategory}/{attributeName} | Update contact attribute
*Brevo::ContactsApi* | [**add_contact_to_list**](docs/ContactsApi.md#add_contact_to_list) | **POST** /contacts/lists/{listId}/contacts/add | Add existing contacts to a list
*Brevo::ContactsApi* | [**create_attribute**](docs/ContactsApi.md#create_attribute) | **POST** /contacts/attributes/{attributeCategory}/{attributeName} | Create contact attribute
*Brevo::ContactsApi* | [**create_contact**](docs/ContactsApi.md#create_contact) | **POST** /contacts | Create a contact
*Brevo::ContactsApi* | [**create_doi_contact**](docs/ContactsApi.md#create_doi_contact) | **POST** /contacts/doubleOptinConfirmation | Create Contact via DOI (Double-Opt-In) Flow
*Brevo::ContactsApi* | [**create_folder**](docs/ContactsApi.md#create_folder) | **POST** /contacts/folders | Create a folder
*Brevo::ContactsApi* | [**create_list**](docs/ContactsApi.md#create_list) | **POST** /contacts/lists | Create a list
*Brevo::ContactsApi* | [**delete_attribute**](docs/ContactsApi.md#delete_attribute) | **DELETE** /contacts/attributes/{attributeCategory}/{attributeName} | Delete an attribute
*Brevo::ContactsApi* | [**delete_contact**](docs/ContactsApi.md#delete_contact) | **DELETE** /contacts/{email} | Delete a contact
*Brevo::ContactsApi* | [**delete_folder**](docs/ContactsApi.md#delete_folder) | **DELETE** /contacts/folders/{folderId} | Delete a folder (and all its lists)
*Brevo::ContactsApi* | [**delete_list**](docs/ContactsApi.md#delete_list) | **DELETE** /contacts/lists/{listId} | Delete a list
*Brevo::ContactsApi* | [**get_attributes**](docs/ContactsApi.md#get_attributes) | **GET** /contacts/attributes | List all attributes
*Brevo::ContactsApi* | [**get_contact_info**](docs/ContactsApi.md#get_contact_info) | **GET** /contacts/{email} | Get a contact's details
*Brevo::ContactsApi* | [**get_contact_stats**](docs/ContactsApi.md#get_contact_stats) | **GET** /contacts/{email}/campaignStats | Get email campaigns' statistics for a contact
*Brevo::ContactsApi* | [**get_contacts**](docs/ContactsApi.md#get_contacts) | **GET** /contacts | Get all the contacts
*Brevo::ContactsApi* | [**get_contacts_from_list**](docs/ContactsApi.md#get_contacts_from_list) | **GET** /contacts/lists/{listId}/contacts | Get contacts in a list
*Brevo::ContactsApi* | [**get_folder**](docs/ContactsApi.md#get_folder) | **GET** /contacts/folders/{folderId} | Returns a folder's details
*Brevo::ContactsApi* | [**get_folder_lists**](docs/ContactsApi.md#get_folder_lists) | **GET** /contacts/folders/{folderId}/lists | Get lists in a folder
*Brevo::ContactsApi* | [**get_folders**](docs/ContactsApi.md#get_folders) | **GET** /contacts/folders | Get all folders
*Brevo::ContactsApi* | [**get_list**](docs/ContactsApi.md#get_list) | **GET** /contacts/lists/{listId} | Get a list's details
*Brevo::ContactsApi* | [**get_lists**](docs/ContactsApi.md#get_lists) | **GET** /contacts/lists | Get all the lists
*Brevo::ContactsApi* | [**get_segments**](docs/ContactsApi.md#get_segments) | **GET** /contacts/segments | Get all the segments
*Brevo::ContactsApi* | [**import_contacts**](docs/ContactsApi.md#import_contacts) | **POST** /contacts/import | Import contacts
*Brevo::ContactsApi* | [**remove_contact_from_list**](docs/ContactsApi.md#remove_contact_from_list) | **POST** /contacts/lists/{listId}/contacts/remove | Delete a contact from a list
*Brevo::ContactsApi* | [**request_contact_export**](docs/ContactsApi.md#request_contact_export) | **POST** /contacts/export | Export contacts
*Brevo::ContactsApi* | [**update_attribute**](docs/ContactsApi.md#update_attribute) | **PUT** /contacts/attributes/{attributeCategory}/{attributeName} | Update contact attribute
*Brevo::ContactsApi* | [**update_contact**](docs/ContactsApi.md#update_contact) | **PUT** /contacts/{email} | Update a contact
*Brevo::ContactsApi* | [**update_folder**](docs/ContactsApi.md#update_folder) | **PUT** /contacts/folders/{folderId} | Update a folder
*Brevo::ContactsApi* | [**update_list**](docs/ContactsApi.md#update_list) | **PUT** /contacts/lists/{listId} | Update a list
*Brevo::EmailCampaignsApi* | [**create_email_campaign**](docs/EmailCampaignsApi.md#create_email_campaign) | **POST** /emailCampaigns | Create an email campaign
*Brevo::EmailCampaignsApi* | [**delete_email_campaign**](docs/EmailCampaignsApi.md#delete_email_campaign) | **DELETE** /emailCampaigns/{campaignId} | Delete an email campaign
*Brevo::EmailCampaignsApi* | [**email_export_recipients**](docs/EmailCampaignsApi.md#email_export_recipients) | **POST** /emailCampaigns/{campaignId}/exportRecipients | Export the recipients of an email campaign
*Brevo::EmailCampaignsApi* | [**get_ab_test_campaign_result**](docs/EmailCampaignsApi.md#get_ab_test_campaign_result) | **GET** /emailCampaigns/{campaignId}/abTestCampaignResult | Get an A/B test email campaign results
*Brevo::EmailCampaignsApi* | [**get_email_campaign**](docs/EmailCampaignsApi.md#get_email_campaign) | **GET** /emailCampaigns/{campaignId} | Get an email campaign report
*Brevo::EmailCampaignsApi* | [**get_email_campaigns**](docs/EmailCampaignsApi.md#get_email_campaigns) | **GET** /emailCampaigns | Return all your created email campaigns
*Brevo::EmailCampaignsApi* | [**get_shared_template_url**](docs/EmailCampaignsApi.md#get_shared_template_url) | **GET** /emailCampaigns/{campaignId}/sharedUrl | Get a shared template url
*Brevo::EmailCampaignsApi* | [**send_email_campaign_now**](docs/EmailCampaignsApi.md#send_email_campaign_now) | **POST** /emailCampaigns/{campaignId}/sendNow | Send an email campaign immediately, based on campaignId
*Brevo::EmailCampaignsApi* | [**send_report**](docs/EmailCampaignsApi.md#send_report) | **POST** /emailCampaigns/{campaignId}/sendReport | Send the report of a campaign
*Brevo::EmailCampaignsApi* | [**send_test_email**](docs/EmailCampaignsApi.md#send_test_email) | **POST** /emailCampaigns/{campaignId}/sendTest | Send an email campaign to your test list
*Brevo::EmailCampaignsApi* | [**update_campaign_status**](docs/EmailCampaignsApi.md#update_campaign_status) | **PUT** /emailCampaigns/{campaignId}/status | Update an email campaign status
*Brevo::EmailCampaignsApi* | [**update_email_campaign**](docs/EmailCampaignsApi.md#update_email_campaign) | **PUT** /emailCampaigns/{campaignId} | Update an email campaign
*Brevo::EmailCampaignsApi* | [**upload_image_to_gallery**](docs/EmailCampaignsApi.md#upload_image_to_gallery) | **POST** /emailCampaigns/images | Upload an image to your account's image gallery
*Brevo::FoldersApi* | [**create_folder**](docs/FoldersApi.md#create_folder) | **POST** /contacts/folders | Create a folder
*Brevo::FoldersApi* | [**delete_folder**](docs/FoldersApi.md#delete_folder) | **DELETE** /contacts/folders/{folderId} | Delete a folder (and all its lists)
*Brevo::FoldersApi* | [**get_folder**](docs/FoldersApi.md#get_folder) | **GET** /contacts/folders/{folderId} | Returns a folder's details
*Brevo::FoldersApi* | [**get_folder_lists**](docs/FoldersApi.md#get_folder_lists) | **GET** /contacts/folders/{folderId}/lists | Get lists in a folder
*Brevo::FoldersApi* | [**get_folders**](docs/FoldersApi.md#get_folders) | **GET** /contacts/folders | Get all folders
*Brevo::FoldersApi* | [**update_folder**](docs/FoldersApi.md#update_folder) | **PUT** /contacts/folders/{folderId} | Update a folder
*Brevo::ListsApi* | [**add_contact_to_list**](docs/ListsApi.md#add_contact_to_list) | **POST** /contacts/lists/{listId}/contacts/add | Add existing contacts to a list
*Brevo::ListsApi* | [**create_list**](docs/ListsApi.md#create_list) | **POST** /contacts/lists | Create a list
*Brevo::ListsApi* | [**delete_list**](docs/ListsApi.md#delete_list) | **DELETE** /contacts/lists/{listId} | Delete a list
*Brevo::ListsApi* | [**get_contacts_from_list**](docs/ListsApi.md#get_contacts_from_list) | **GET** /contacts/lists/{listId}/contacts | Get contacts in a list
*Brevo::ListsApi* | [**get_folder_lists**](docs/ListsApi.md#get_folder_lists) | **GET** /contacts/folders/{folderId}/lists | Get lists in a folder
*Brevo::ListsApi* | [**get_list**](docs/ListsApi.md#get_list) | **GET** /contacts/lists/{listId} | Get a list's details
*Brevo::ListsApi* | [**get_lists**](docs/ListsApi.md#get_lists) | **GET** /contacts/lists | Get all the lists
*Brevo::ListsApi* | [**remove_contact_from_list**](docs/ListsApi.md#remove_contact_from_list) | **POST** /contacts/lists/{listId}/contacts/remove | Delete a contact from a list
*Brevo::ListsApi* | [**update_list**](docs/ListsApi.md#update_list) | **PUT** /contacts/lists/{listId} | Update a list
*Brevo::ProcessApi* | [**get_process**](docs/ProcessApi.md#get_process) | **GET** /processes/{processId} | Return the informations for a process
*Brevo::ProcessApi* | [**get_processes**](docs/ProcessApi.md#get_processes) | **GET** /processes | Return all the processes for your account
*Brevo::ResellerApi* | [**add_credits**](docs/ResellerApi.md#add_credits) | **POST** /reseller/children/{childIdentifier}/credits/add | Add Email and/or SMS credits to a specific child account
*Brevo::ResellerApi* | [**associate_ip_to_child**](docs/ResellerApi.md#associate_ip_to_child) | **POST** /reseller/children/{childIdentifier}/ips/associate | Associate a dedicated IP to the child
*Brevo::ResellerApi* | [**create_child_domain**](docs/ResellerApi.md#create_child_domain) | **POST** /reseller/children/{childIdentifier}/domains | Create a domain for a child account
*Brevo::ResellerApi* | [**create_reseller_child**](docs/ResellerApi.md#create_reseller_child) | **POST** /reseller/children | Creates a reseller child
*Brevo::ResellerApi* | [**delete_child_domain**](docs/ResellerApi.md#delete_child_domain) | **DELETE** /reseller/children/{childIdentifier}/domains/{domainName} | Delete the sender domain of the reseller child based on the childIdentifier and domainName passed
*Brevo::ResellerApi* | [**delete_reseller_child**](docs/ResellerApi.md#delete_reseller_child) | **DELETE** /reseller/children/{childIdentifier} | Delete a single reseller child based on the child identifier supplied
*Brevo::ResellerApi* | [**dissociate_ip_from_child**](docs/ResellerApi.md#dissociate_ip_from_child) | **POST** /reseller/children/{childIdentifier}/ips/dissociate | Dissociate a dedicated IP to the child
*Brevo::ResellerApi* | [**get_child_account_creation_status**](docs/ResellerApi.md#get_child_account_creation_status) | **GET** /reseller/children/{childIdentifier}/accountCreationStatus | Get the status of a reseller's child account creation, whether it is successfully created (exists) or not based on the childIdentifier supplied
*Brevo::ResellerApi* | [**get_child_domains**](docs/ResellerApi.md#get_child_domains) | **GET** /reseller/children/{childIdentifier}/domains | Get all sender domains for a specific child account
*Brevo::ResellerApi* | [**get_child_info**](docs/ResellerApi.md#get_child_info) | **GET** /reseller/children/{childIdentifier} | Get a child account's details
*Brevo::ResellerApi* | [**get_reseller_childs**](docs/ResellerApi.md#get_reseller_childs) | **GET** /reseller/children | Get the list of all children accounts
*Brevo::ResellerApi* | [**get_sso_token**](docs/ResellerApi.md#get_sso_token) | **GET** /reseller/children/{childIdentifier}/auth | Get session token to access Sendinblue (SSO)
*Brevo::ResellerApi* | [**remove_credits**](docs/ResellerApi.md#remove_credits) | **POST** /reseller/children/{childIdentifier}/credits/remove | Remove Email and/or SMS credits from a specific child account
*Brevo::ResellerApi* | [**update_child_account_status**](docs/ResellerApi.md#update_child_account_status) | **PUT** /reseller/children/{childIdentifier}/accountStatus | Update info of reseller's child account status based on the identifier supplied
*Brevo::ResellerApi* | [**update_child_domain**](docs/ResellerApi.md#update_child_domain) | **PUT** /reseller/children/{childIdentifier}/domains/{domainName} | Update the sender domain of reseller's child based on the childIdentifier and domainName passed
*Brevo::ResellerApi* | [**update_reseller_child**](docs/ResellerApi.md#update_reseller_child) | **PUT** /reseller/children/{childIdentifier} | Update info of reseller's child based on the child identifier supplied
*Brevo::SMSCampaignsApi* | [**create_sms_campaign**](docs/SMSCampaignsApi.md#create_sms_campaign) | **POST** /smsCampaigns | Creates an SMS campaign
*Brevo::SMSCampaignsApi* | [**delete_sms_campaign**](docs/SMSCampaignsApi.md#delete_sms_campaign) | **DELETE** /smsCampaigns/{campaignId} | Delete an SMS campaign
*Brevo::SMSCampaignsApi* | [**get_sms_campaign**](docs/SMSCampaignsApi.md#get_sms_campaign) | **GET** /smsCampaigns/{campaignId} | Get an SMS campaign
*Brevo::SMSCampaignsApi* | [**get_sms_campaigns**](docs/SMSCampaignsApi.md#get_sms_campaigns) | **GET** /smsCampaigns | Returns the information for all your created SMS campaigns
*Brevo::SMSCampaignsApi* | [**request_sms_recipient_export**](docs/SMSCampaignsApi.md#request_sms_recipient_export) | **POST** /smsCampaigns/{campaignId}/exportRecipients | Export an SMS campaign's recipients
*Brevo::SMSCampaignsApi* | [**send_sms_campaign_now**](docs/SMSCampaignsApi.md#send_sms_campaign_now) | **POST** /smsCampaigns/{campaignId}/sendNow | Send your SMS campaign immediately
*Brevo::SMSCampaignsApi* | [**send_sms_report**](docs/SMSCampaignsApi.md#send_sms_report) | **POST** /smsCampaigns/{campaignId}/sendReport | Send an SMS campaign's report
*Brevo::SMSCampaignsApi* | [**send_test_sms**](docs/SMSCampaignsApi.md#send_test_sms) | **POST** /smsCampaigns/{campaignId}/sendTest | Send a test SMS campaign
*Brevo::SMSCampaignsApi* | [**update_sms_campaign**](docs/SMSCampaignsApi.md#update_sms_campaign) | **PUT** /smsCampaigns/{campaignId} | Update an SMS campaign
*Brevo::SMSCampaignsApi* | [**update_sms_campaign_status**](docs/SMSCampaignsApi.md#update_sms_campaign_status) | **PUT** /smsCampaigns/{campaignId}/status | Update a campaign's status
*Brevo::SMTPApi* | [**block_new_domain**](docs/SMTPApi.md#block_new_domain) | **POST** /smtp/blockedDomains | Add a new domain to the list of blocked domains
*Brevo::SMTPApi* | [**create_smtp_template**](docs/SMTPApi.md#create_smtp_template) | **POST** /smtp/templates | Create an email template
*Brevo::SMTPApi* | [**delete_blocked_domain**](docs/SMTPApi.md#delete_blocked_domain) | **DELETE** /smtp/blockedDomains/{domain} | Unblock an existing domain from the list of blocked domains
*Brevo::SMTPApi* | [**delete_hardbounces**](docs/SMTPApi.md#delete_hardbounces) | **POST** /smtp/deleteHardbounces | Delete hardbounces
*Brevo::SMTPApi* | [**delete_smtp_template**](docs/SMTPApi.md#delete_smtp_template) | **DELETE** /smtp/templates/{templateId} | Delete an inactive email template
*Brevo::SMTPApi* | [**get_aggregated_smtp_report**](docs/SMTPApi.md#get_aggregated_smtp_report) | **GET** /smtp/statistics/aggregatedReport | Get your transactional email activity aggregated over a period of time
*Brevo::SMTPApi* | [**get_blocked_domains**](docs/SMTPApi.md#get_blocked_domains) | **GET** /smtp/blockedDomains | Get the list of blocked domains
*Brevo::SMTPApi* | [**get_email_event_report**](docs/SMTPApi.md#get_email_event_report) | **GET** /smtp/statistics/events | Get all your transactional email activity (unaggregated events)
*Brevo::SMTPApi* | [**get_smtp_report**](docs/SMTPApi.md#get_smtp_report) | **GET** /smtp/statistics/reports | Get your transactional email activity aggregated per day
*Brevo::SMTPApi* | [**get_smtp_template**](docs/SMTPApi.md#get_smtp_template) | **GET** /smtp/templates/{templateId} | Returns the template information
*Brevo::SMTPApi* | [**get_smtp_templates**](docs/SMTPApi.md#get_smtp_templates) | **GET** /smtp/templates | Get the list of email templates
*Brevo::SMTPApi* | [**get_transac_blocked_contacts**](docs/SMTPApi.md#get_transac_blocked_contacts) | **GET** /smtp/blockedContacts | Get the list of blocked or unsubscribed transactional contacts
*Brevo::SMTPApi* | [**get_transac_email_content**](docs/SMTPApi.md#get_transac_email_content) | **GET** /smtp/emails/{uuid} | Get the personalized content of a sent transactional email
*Brevo::SMTPApi* | [**get_transac_emails_list**](docs/SMTPApi.md#get_transac_emails_list) | **GET** /smtp/emails | Get the list of transactional emails on the basis of allowed filters
*Brevo::SMTPApi* | [**send_template**](docs/SMTPApi.md#send_template) | **POST** /smtp/templates/{templateId}/send | Send a template
*Brevo::SMTPApi* | [**send_test_template**](docs/SMTPApi.md#send_test_template) | **POST** /smtp/templates/{templateId}/sendTest | Send a template to your test list
*Brevo::SMTPApi* | [**send_transac_email**](docs/SMTPApi.md#send_transac_email) | **POST** /smtp/email | Send a transactional email
*Brevo::SMTPApi* | [**smtp_blocked_contacts_email_delete**](docs/SMTPApi.md#smtp_blocked_contacts_email_delete) | **DELETE** /smtp/blockedContacts/{email} | Unblock or resubscribe a transactional contact
*Brevo::SMTPApi* | [**smtp_log_message_id_delete**](docs/SMTPApi.md#smtp_log_message_id_delete) | **DELETE** /smtp/log/{messageId} | Delete an SMTP transactional log
*Brevo::SMTPApi* | [**update_smtp_template**](docs/SMTPApi.md#update_smtp_template) | **PUT** /smtp/templates/{templateId} | Update an email template
*Brevo::SendersApi* | [**create_sender**](docs/SendersApi.md#create_sender) | **POST** /senders | Create a new sender
*Brevo::SendersApi* | [**delete_sender**](docs/SendersApi.md#delete_sender) | **DELETE** /senders/{senderId} | Delete a sender
*Brevo::SendersApi* | [**get_ips**](docs/SendersApi.md#get_ips) | **GET** /senders/ips | Get all the dedicated IPs for your account
*Brevo::SendersApi* | [**get_ips_from_sender**](docs/SendersApi.md#get_ips_from_sender) | **GET** /senders/{senderId}/ips | Get all the dedicated IPs for a sender
*Brevo::SendersApi* | [**get_senders**](docs/SendersApi.md#get_senders) | **GET** /senders | Get the list of all your senders
*Brevo::SendersApi* | [**update_sender**](docs/SendersApi.md#update_sender) | **PUT** /senders/{senderId} | Update a sender
*Brevo::TransactionalSMSApi* | [**get_sms_events**](docs/TransactionalSMSApi.md#get_sms_events) | **GET** /transactionalSMS/statistics/events | Get all your SMS activity (unaggregated events)
*Brevo::TransactionalSMSApi* | [**get_transac_aggregated_sms_report**](docs/TransactionalSMSApi.md#get_transac_aggregated_sms_report) | **GET** /transactionalSMS/statistics/aggregatedReport | Get your SMS activity aggregated over a period of time
*Brevo::TransactionalSMSApi* | [**get_transac_sms_report**](docs/TransactionalSMSApi.md#get_transac_sms_report) | **GET** /transactionalSMS/statistics/reports | Get your SMS activity aggregated per day
*Brevo::TransactionalSMSApi* | [**send_transac_sms**](docs/TransactionalSMSApi.md#send_transac_sms) | **POST** /transactionalSMS/sms | Send SMS message to a mobile number
*Brevo::WebhooksApi* | [**create_webhook**](docs/WebhooksApi.md#create_webhook) | **POST** /webhooks | Create a webhook
*Brevo::WebhooksApi* | [**delete_webhook**](docs/WebhooksApi.md#delete_webhook) | **DELETE** /webhooks/{webhookId} | Delete a webhook
*Brevo::WebhooksApi* | [**get_webhook**](docs/WebhooksApi.md#get_webhook) | **GET** /webhooks/{webhookId} | Get a webhook details
*Brevo::WebhooksApi* | [**get_webhooks**](docs/WebhooksApi.md#get_webhooks) | **GET** /webhooks | Get all webhooks
*Brevo::WebhooksApi* | [**update_webhook**](docs/WebhooksApi.md#update_webhook) | **PUT** /webhooks/{webhookId} | Update a webhook
*Brevo::WhatsAppCampaignsApi* | [**delete_whats_app_campaign**](docs/WhatsAppCampaignsApi.md#delete_whats_app_campaign) | **DELETE** /whatsappCampaigns/{campaignId} | Delete a WhatsApp campaign
*Brevo::WhatsAppCampaignsApi* | [**get_whats_app_campaign**](docs/WhatsAppCampaignsApi.md#get_whats_app_campaign) | **GET** /whatsappCampaigns/{campaignId} | Get a WhatsApp campaign
*Brevo::WhatsAppCampaignsApi* | [**get_whats_app_campaigns**](docs/WhatsAppCampaignsApi.md#get_whats_app_campaigns) | **GET** /whatsappCampaigns | Return all your created WhatsApp campaigns
*Brevo::WhatsAppCampaignsApi* | [**get_whats_app_templates**](docs/WhatsAppCampaignsApi.md#get_whats_app_templates) | **GET** /whatsappCampaigns/template-list | Return all your created WhatsApp templates


## Documentation for Models

 - [Brevo::AbTestCampaignResult](docs/AbTestCampaignResult.md)
 - [Brevo::AbTestCampaignResultClickedLinks](docs/AbTestCampaignResultClickedLinks.md)
 - [Brevo::AbTestCampaignResultStatistics](docs/AbTestCampaignResultStatistics.md)
 - [Brevo::AbTestVersionClicksInner](docs/AbTestVersionClicksInner.md)
 - [Brevo::AbTestVersionStats](docs/AbTestVersionStats.md)
 - [Brevo::AddChildDomain](docs/AddChildDomain.md)
 - [Brevo::AddContactToList](docs/AddContactToList.md)
 - [Brevo::AddCredits](docs/AddCredits.md)
 - [Brevo::BlockDomain](docs/BlockDomain.md)
 - [Brevo::ComponentItems](docs/ComponentItems.md)
 - [Brevo::CreateAttribute](docs/CreateAttribute.md)
 - [Brevo::CreateAttributeEnumerationInner](docs/CreateAttributeEnumerationInner.md)
 - [Brevo::CreateChild](docs/CreateChild.md)
 - [Brevo::CreateContact](docs/CreateContact.md)
 - [Brevo::CreateDoiContact](docs/CreateDoiContact.md)
 - [Brevo::CreateEmailCampaign](docs/CreateEmailCampaign.md)
 - [Brevo::CreateEmailCampaignRecipients](docs/CreateEmailCampaignRecipients.md)
 - [Brevo::CreateEmailCampaignSender](docs/CreateEmailCampaignSender.md)
 - [Brevo::CreateList](docs/CreateList.md)
 - [Brevo::CreateModel](docs/CreateModel.md)
 - [Brevo::CreateReseller](docs/CreateReseller.md)
 - [Brevo::CreateSender](docs/CreateSender.md)
 - [Brevo::CreateSenderIpsInner](docs/CreateSenderIpsInner.md)
 - [Brevo::CreateSenderModel](docs/CreateSenderModel.md)
 - [Brevo::CreateSmsCampaign](docs/CreateSmsCampaign.md)
 - [Brevo::CreateSmsCampaignRecipients](docs/CreateSmsCampaignRecipients.md)
 - [Brevo::CreateSmtpEmail](docs/CreateSmtpEmail.md)
 - [Brevo::CreateSmtpTemplate](docs/CreateSmtpTemplate.md)
 - [Brevo::CreateSmtpTemplateSender](docs/CreateSmtpTemplateSender.md)
 - [Brevo::CreateUpdateContactModel](docs/CreateUpdateContactModel.md)
 - [Brevo::CreateUpdateFolder](docs/CreateUpdateFolder.md)
 - [Brevo::CreateWebhook](docs/CreateWebhook.md)
 - [Brevo::CreatedProcessId](docs/CreatedProcessId.md)
 - [Brevo::DeleteHardbounces](docs/DeleteHardbounces.md)
 - [Brevo::EmailExportRecipients](docs/EmailExportRecipients.md)
 - [Brevo::ErrorModel](docs/ErrorModel.md)
 - [Brevo::GetAccount](docs/GetAccount.md)
 - [Brevo::GetAccountAllOfMarketingAutomation](docs/GetAccountAllOfMarketingAutomation.md)
 - [Brevo::GetAccountAllOfPlan](docs/GetAccountAllOfPlan.md)
 - [Brevo::GetAccountAllOfRelay](docs/GetAccountAllOfRelay.md)
 - [Brevo::GetAccountAllOfRelayData](docs/GetAccountAllOfRelayData.md)
 - [Brevo::GetAggregatedReport](docs/GetAggregatedReport.md)
 - [Brevo::GetAttributes](docs/GetAttributes.md)
 - [Brevo::GetAttributesAttributesInner](docs/GetAttributesAttributesInner.md)
 - [Brevo::GetAttributesAttributesInnerEnumerationInner](docs/GetAttributesAttributesInnerEnumerationInner.md)
 - [Brevo::GetBlockedDomains](docs/GetBlockedDomains.md)
 - [Brevo::GetCampaignOverview](docs/GetCampaignOverview.md)
 - [Brevo::GetCampaignRecipients](docs/GetCampaignRecipients.md)
 - [Brevo::GetCampaignStats](docs/GetCampaignStats.md)
 - [Brevo::GetChildAccountCreationStatus](docs/GetChildAccountCreationStatus.md)
 - [Brevo::GetChildDomain](docs/GetChildDomain.md)
 - [Brevo::GetChildInfo](docs/GetChildInfo.md)
 - [Brevo::GetChildInfoAllOfApiKeys](docs/GetChildInfoAllOfApiKeys.md)
 - [Brevo::GetChildInfoAllOfApiKeysV2](docs/GetChildInfoAllOfApiKeysV2.md)
 - [Brevo::GetChildInfoAllOfApiKeysV3](docs/GetChildInfoAllOfApiKeysV3.md)
 - [Brevo::GetChildInfoAllOfCredits](docs/GetChildInfoAllOfCredits.md)
 - [Brevo::GetChildInfoAllOfStatistics](docs/GetChildInfoAllOfStatistics.md)
 - [Brevo::GetChildrenList](docs/GetChildrenList.md)
 - [Brevo::GetChildrenListChildrenInner](docs/GetChildrenListChildrenInner.md)
 - [Brevo::GetClient](docs/GetClient.md)
 - [Brevo::GetContactCampaignStats](docs/GetContactCampaignStats.md)
 - [Brevo::GetContactCampaignStatsClickedInner](docs/GetContactCampaignStatsClickedInner.md)
 - [Brevo::GetContactCampaignStatsOpenedInner](docs/GetContactCampaignStatsOpenedInner.md)
 - [Brevo::GetContactCampaignStatsTransacAttributesInner](docs/GetContactCampaignStatsTransacAttributesInner.md)
 - [Brevo::GetContactCampaignStatsUnsubscriptions](docs/GetContactCampaignStatsUnsubscriptions.md)
 - [Brevo::GetContactDetails](docs/GetContactDetails.md)
 - [Brevo::GetContacts](docs/GetContacts.md)
 - [Brevo::GetDeviceBrowserStats](docs/GetDeviceBrowserStats.md)
 - [Brevo::GetEmailCampaign](docs/GetEmailCampaign.md)
 - [Brevo::GetEmailCampaigns](docs/GetEmailCampaigns.md)
 - [Brevo::GetEmailCampaignsCampaignsInner](docs/GetEmailCampaignsCampaignsInner.md)
 - [Brevo::GetEmailEventReport](docs/GetEmailEventReport.md)
 - [Brevo::GetEmailEventReportEventsInner](docs/GetEmailEventReportEventsInner.md)
 - [Brevo::GetExtendedCampaignOverview](docs/GetExtendedCampaignOverview.md)
 - [Brevo::GetExtendedCampaignOverviewAllOfSender](docs/GetExtendedCampaignOverviewAllOfSender.md)
 - [Brevo::GetExtendedCampaignStats](docs/GetExtendedCampaignStats.md)
 - [Brevo::GetExtendedClient](docs/GetExtendedClient.md)
 - [Brevo::GetExtendedClientAllOfAddress](docs/GetExtendedClientAllOfAddress.md)
 - [Brevo::GetExtendedContactDetails](docs/GetExtendedContactDetails.md)
 - [Brevo::GetExtendedContactDetailsAllOfStatistics](docs/GetExtendedContactDetailsAllOfStatistics.md)
 - [Brevo::GetExtendedContactDetailsAllOfStatisticsClicked](docs/GetExtendedContactDetailsAllOfStatisticsClicked.md)
 - [Brevo::GetExtendedContactDetailsAllOfStatisticsLinks](docs/GetExtendedContactDetailsAllOfStatisticsLinks.md)
 - [Brevo::GetExtendedContactDetailsAllOfStatisticsMessagesSent](docs/GetExtendedContactDetailsAllOfStatisticsMessagesSent.md)
 - [Brevo::GetExtendedContactDetailsAllOfStatisticsOpened](docs/GetExtendedContactDetailsAllOfStatisticsOpened.md)
 - [Brevo::GetExtendedContactDetailsAllOfStatisticsUnsubscriptions](docs/GetExtendedContactDetailsAllOfStatisticsUnsubscriptions.md)
 - [Brevo::GetExtendedContactDetailsAllOfStatisticsUnsubscriptionsAdminUnsubscription](docs/GetExtendedContactDetailsAllOfStatisticsUnsubscriptionsAdminUnsubscription.md)
 - [Brevo::GetExtendedContactDetailsAllOfStatisticsUnsubscriptionsUserUnsubscription](docs/GetExtendedContactDetailsAllOfStatisticsUnsubscriptionsUserUnsubscription.md)
 - [Brevo::GetExtendedList](docs/GetExtendedList.md)
 - [Brevo::GetExtendedListAllOfCampaignStats](docs/GetExtendedListAllOfCampaignStats.md)
 - [Brevo::GetFolder](docs/GetFolder.md)
 - [Brevo::GetFolderLists](docs/GetFolderLists.md)
 - [Brevo::GetFolders](docs/GetFolders.md)
 - [Brevo::GetIp](docs/GetIp.md)
 - [Brevo::GetIpFromSender](docs/GetIpFromSender.md)
 - [Brevo::GetIps](docs/GetIps.md)
 - [Brevo::GetIpsFromSender](docs/GetIpsFromSender.md)
 - [Brevo::GetList](docs/GetList.md)
 - [Brevo::GetLists](docs/GetLists.md)
 - [Brevo::GetListsListsInner](docs/GetListsListsInner.md)
 - [Brevo::GetProcess](docs/GetProcess.md)
 - [Brevo::GetProcesses](docs/GetProcesses.md)
 - [Brevo::GetReports](docs/GetReports.md)
 - [Brevo::GetReportsReportsInner](docs/GetReportsReportsInner.md)
 - [Brevo::GetSegments](docs/GetSegments.md)
 - [Brevo::GetSegmentsSegments](docs/GetSegmentsSegments.md)
 - [Brevo::GetSendersList](docs/GetSendersList.md)
 - [Brevo::GetSendersListSendersInner](docs/GetSendersListSendersInner.md)
 - [Brevo::GetSendersListSendersInnerIpsInner](docs/GetSendersListSendersInnerIpsInner.md)
 - [Brevo::GetSharedTemplateUrl](docs/GetSharedTemplateUrl.md)
 - [Brevo::GetSmsCampaign](docs/GetSmsCampaign.md)
 - [Brevo::GetSmsCampaignOverview](docs/GetSmsCampaignOverview.md)
 - [Brevo::GetSmsCampaignStats](docs/GetSmsCampaignStats.md)
 - [Brevo::GetSmsCampaigns](docs/GetSmsCampaigns.md)
 - [Brevo::GetSmsCampaignsCampaignsInner](docs/GetSmsCampaignsCampaignsInner.md)
 - [Brevo::GetSmsEventReport](docs/GetSmsEventReport.md)
 - [Brevo::GetSmsEventReportEventsInner](docs/GetSmsEventReportEventsInner.md)
 - [Brevo::GetSmtpTemplateOverview](docs/GetSmtpTemplateOverview.md)
 - [Brevo::GetSmtpTemplateOverviewSender](docs/GetSmtpTemplateOverviewSender.md)
 - [Brevo::GetSmtpTemplates](docs/GetSmtpTemplates.md)
 - [Brevo::GetSsoToken](docs/GetSsoToken.md)
 - [Brevo::GetStatsByDevice](docs/GetStatsByDevice.md)
 - [Brevo::GetTransacAggregatedSmsReport](docs/GetTransacAggregatedSmsReport.md)
 - [Brevo::GetTransacBlockedContacts](docs/GetTransacBlockedContacts.md)
 - [Brevo::GetTransacBlockedContactsContactsInner](docs/GetTransacBlockedContactsContactsInner.md)
 - [Brevo::GetTransacBlockedContactsContactsInnerReason](docs/GetTransacBlockedContactsContactsInnerReason.md)
 - [Brevo::GetTransacEmailContent](docs/GetTransacEmailContent.md)
 - [Brevo::GetTransacEmailContentEventsInner](docs/GetTransacEmailContentEventsInner.md)
 - [Brevo::GetTransacEmailsList](docs/GetTransacEmailsList.md)
 - [Brevo::GetTransacEmailsListTransactionalEmailsInner](docs/GetTransacEmailsListTransactionalEmailsInner.md)
 - [Brevo::GetTransacSmsReport](docs/GetTransacSmsReport.md)
 - [Brevo::GetTransacSmsReportReportsInner](docs/GetTransacSmsReportReportsInner.md)
 - [Brevo::GetWATemplates](docs/GetWATemplates.md)
 - [Brevo::GetWATemplatesTemplatesInner](docs/GetWATemplatesTemplatesInner.md)
 - [Brevo::GetWebhook](docs/GetWebhook.md)
 - [Brevo::GetWebhooks](docs/GetWebhooks.md)
 - [Brevo::GetWhatsappCampaignOverview](docs/GetWhatsappCampaignOverview.md)
 - [Brevo::GetWhatsappCampaigns](docs/GetWhatsappCampaigns.md)
 - [Brevo::GetWhatsappCampaignsCampaignsInner](docs/GetWhatsappCampaignsCampaignsInner.md)
 - [Brevo::ManageIp](docs/ManageIp.md)
 - [Brevo::PostContactInfo](docs/PostContactInfo.md)
 - [Brevo::PostContactInfoContacts](docs/PostContactInfoContacts.md)
 - [Brevo::PostSendFailed](docs/PostSendFailed.md)
 - [Brevo::PostSendSmsTestFailed](docs/PostSendSmsTestFailed.md)
 - [Brevo::RemainingCreditModel](docs/RemainingCreditModel.md)
 - [Brevo::RemainingCreditModelChild](docs/RemainingCreditModelChild.md)
 - [Brevo::RemainingCreditModelReseller](docs/RemainingCreditModelReseller.md)
 - [Brevo::RemoveContactFromList](docs/RemoveContactFromList.md)
 - [Brevo::RemoveCredits](docs/RemoveCredits.md)
 - [Brevo::RequestContactExport](docs/RequestContactExport.md)
 - [Brevo::RequestContactExportCustomContactFilter](docs/RequestContactExportCustomContactFilter.md)
 - [Brevo::RequestContactImport](docs/RequestContactImport.md)
 - [Brevo::RequestContactImportNewList](docs/RequestContactImportNewList.md)
 - [Brevo::RequestSmsRecipientExport](docs/RequestSmsRecipientExport.md)
 - [Brevo::SendEmail](docs/SendEmail.md)
 - [Brevo::SendEmailAttachmentInner](docs/SendEmailAttachmentInner.md)
 - [Brevo::SendReport](docs/SendReport.md)
 - [Brevo::SendReportEmail](docs/SendReportEmail.md)
 - [Brevo::SendSms](docs/SendSms.md)
 - [Brevo::SendSmtpEmail](docs/SendSmtpEmail.md)
 - [Brevo::SendSmtpEmailAttachmentInner](docs/SendSmtpEmailAttachmentInner.md)
 - [Brevo::SendSmtpEmailBccInner](docs/SendSmtpEmailBccInner.md)
 - [Brevo::SendSmtpEmailCcInner](docs/SendSmtpEmailCcInner.md)
 - [Brevo::SendSmtpEmailReplyTo](docs/SendSmtpEmailReplyTo.md)
 - [Brevo::SendSmtpEmailSender](docs/SendSmtpEmailSender.md)
 - [Brevo::SendSmtpEmailToInner](docs/SendSmtpEmailToInner.md)
 - [Brevo::SendTemplateEmail](docs/SendTemplateEmail.md)
 - [Brevo::SendTestEmail](docs/SendTestEmail.md)
 - [Brevo::SendTestSms](docs/SendTestSms.md)
 - [Brevo::SendTransacSms](docs/SendTransacSms.md)
 - [Brevo::UpdateAttribute](docs/UpdateAttribute.md)
 - [Brevo::UpdateAttributeEnumerationInner](docs/UpdateAttributeEnumerationInner.md)
 - [Brevo::UpdateCampaignStatus](docs/UpdateCampaignStatus.md)
 - [Brevo::UpdateChild](docs/UpdateChild.md)
 - [Brevo::UpdateChildAccountStatus](docs/UpdateChildAccountStatus.md)
 - [Brevo::UpdateChildDomain](docs/UpdateChildDomain.md)
 - [Brevo::UpdateContact](docs/UpdateContact.md)
 - [Brevo::UpdateEmailCampaign](docs/UpdateEmailCampaign.md)
 - [Brevo::UpdateEmailCampaignRecipients](docs/UpdateEmailCampaignRecipients.md)
 - [Brevo::UpdateEmailCampaignSender](docs/UpdateEmailCampaignSender.md)
 - [Brevo::UpdateList](docs/UpdateList.md)
 - [Brevo::UpdateSender](docs/UpdateSender.md)
 - [Brevo::UpdateSmsCampaign](docs/UpdateSmsCampaign.md)
 - [Brevo::UpdateSmtpTemplate](docs/UpdateSmtpTemplate.md)
 - [Brevo::UpdateSmtpTemplateSender](docs/UpdateSmtpTemplateSender.md)
 - [Brevo::UpdateWebhook](docs/UpdateWebhook.md)
 - [Brevo::UploadImageToGallery](docs/UploadImageToGallery.md)
 - [Brevo::VariablesItems](docs/VariablesItems.md)
 - [Brevo::WhatsappCampStats](docs/WhatsappCampStats.md)
 - [Brevo::WhatsappCampTemplate](docs/WhatsappCampTemplate.md)


## Documentation for Authorization


Authentication schemes defined for the API:
### api-key


- **Type**: API key
- **API key parameter name**: api-key
- **Location**: HTTP header

