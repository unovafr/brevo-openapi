# Brevo::SMTPApi

All URIs are relative to *https://api.sendinblue.com/v3*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**block_new_domain**](SMTPApi.md#block_new_domain) | **POST** /smtp/blockedDomains | Add a new domain to the list of blocked domains |
| [**create_smtp_template**](SMTPApi.md#create_smtp_template) | **POST** /smtp/templates | Create an email template |
| [**delete_blocked_domain**](SMTPApi.md#delete_blocked_domain) | **DELETE** /smtp/blockedDomains/{domain} | Unblock an existing domain from the list of blocked domains |
| [**delete_hardbounces**](SMTPApi.md#delete_hardbounces) | **POST** /smtp/deleteHardbounces | Delete hardbounces |
| [**delete_smtp_template**](SMTPApi.md#delete_smtp_template) | **DELETE** /smtp/templates/{templateId} | Delete an inactive email template |
| [**get_aggregated_smtp_report**](SMTPApi.md#get_aggregated_smtp_report) | **GET** /smtp/statistics/aggregatedReport | Get your transactional email activity aggregated over a period of time |
| [**get_blocked_domains**](SMTPApi.md#get_blocked_domains) | **GET** /smtp/blockedDomains | Get the list of blocked domains |
| [**get_email_event_report**](SMTPApi.md#get_email_event_report) | **GET** /smtp/statistics/events | Get all your transactional email activity (unaggregated events) |
| [**get_smtp_report**](SMTPApi.md#get_smtp_report) | **GET** /smtp/statistics/reports | Get your transactional email activity aggregated per day |
| [**get_smtp_template**](SMTPApi.md#get_smtp_template) | **GET** /smtp/templates/{templateId} | Returns the template information |
| [**get_smtp_templates**](SMTPApi.md#get_smtp_templates) | **GET** /smtp/templates | Get the list of email templates |
| [**get_transac_blocked_contacts**](SMTPApi.md#get_transac_blocked_contacts) | **GET** /smtp/blockedContacts | Get the list of blocked or unsubscribed transactional contacts |
| [**get_transac_email_content**](SMTPApi.md#get_transac_email_content) | **GET** /smtp/emails/{uuid} | Get the personalized content of a sent transactional email |
| [**get_transac_emails_list**](SMTPApi.md#get_transac_emails_list) | **GET** /smtp/emails | Get the list of transactional emails on the basis of allowed filters |
| [**send_template**](SMTPApi.md#send_template) | **POST** /smtp/templates/{templateId}/send | Send a template |
| [**send_test_template**](SMTPApi.md#send_test_template) | **POST** /smtp/templates/{templateId}/sendTest | Send a template to your test list |
| [**send_transac_email**](SMTPApi.md#send_transac_email) | **POST** /smtp/email | Send a transactional email |
| [**smtp_blocked_contacts_email_delete**](SMTPApi.md#smtp_blocked_contacts_email_delete) | **DELETE** /smtp/blockedContacts/{email} | Unblock or resubscribe a transactional contact |
| [**smtp_log_message_id_delete**](SMTPApi.md#smtp_log_message_id_delete) | **DELETE** /smtp/log/{messageId} | Delete an SMTP transactional log |
| [**update_smtp_template**](SMTPApi.md#update_smtp_template) | **PUT** /smtp/templates/{templateId} | Update an email template |


## block_new_domain

> block_new_domain(block_domain)

Add a new domain to the list of blocked domains

Blocks a new domain in order to avoid messages being sent to the same

### Examples

```ruby
require 'time'
require 'brevo'
# setup authorization
Brevo.configure do |config|
  # Configure API key authorization: api-key
  config.api_key['api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api-key'] = 'Bearer'
end

api_instance = Brevo::SMTPApi.new
block_domain = Brevo::BlockDomain.new({domain: 'example.com'}) # BlockDomain | 

begin
  # Add a new domain to the list of blocked domains
  api_instance.block_new_domain(block_domain)
rescue Brevo::ApiError => e
  puts "Error when calling SMTPApi->block_new_domain: #{e}"
end
```

#### Using the block_new_domain_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> block_new_domain_with_http_info(block_domain)

```ruby
begin
  # Add a new domain to the list of blocked domains
  data, status_code, headers = api_instance.block_new_domain_with_http_info(block_domain)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Brevo::ApiError => e
  puts "Error when calling SMTPApi->block_new_domain_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **block_domain** | [**BlockDomain**](BlockDomain.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_smtp_template

> <CreateModel> create_smtp_template(smtp_template)

Create an email template

### Examples

```ruby
require 'time'
require 'brevo'
# setup authorization
Brevo.configure do |config|
  # Configure API key authorization: api-key
  config.api_key['api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api-key'] = 'Bearer'
end

api_instance = Brevo::SMTPApi.new
smtp_template = Brevo::CreateSmtpTemplate.new({sender: Brevo::CreateSmtpTemplateSender.new, template_name: 'Order Confirmation - EN', subject: 'Thanks for your purchase !'}) # CreateSmtpTemplate | values to update in transactional email template

begin
  # Create an email template
  result = api_instance.create_smtp_template(smtp_template)
  p result
rescue Brevo::ApiError => e
  puts "Error when calling SMTPApi->create_smtp_template: #{e}"
end
```

#### Using the create_smtp_template_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateModel>, Integer, Hash)> create_smtp_template_with_http_info(smtp_template)

```ruby
begin
  # Create an email template
  data, status_code, headers = api_instance.create_smtp_template_with_http_info(smtp_template)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateModel>
rescue Brevo::ApiError => e
  puts "Error when calling SMTPApi->create_smtp_template_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **smtp_template** | [**CreateSmtpTemplate**](CreateSmtpTemplate.md) | values to update in transactional email template |  |

### Return type

[**CreateModel**](CreateModel.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_blocked_domain

> delete_blocked_domain(domain)

Unblock an existing domain from the list of blocked domains

Unblocks an existing domain from the list of blocked domains

### Examples

```ruby
require 'time'
require 'brevo'
# setup authorization
Brevo.configure do |config|
  # Configure API key authorization: api-key
  config.api_key['api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api-key'] = 'Bearer'
end

api_instance = Brevo::SMTPApi.new
domain = 'domain_example' # String | The name of the domain to be deleted

begin
  # Unblock an existing domain from the list of blocked domains
  api_instance.delete_blocked_domain(domain)
rescue Brevo::ApiError => e
  puts "Error when calling SMTPApi->delete_blocked_domain: #{e}"
end
```

#### Using the delete_blocked_domain_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_blocked_domain_with_http_info(domain)

```ruby
begin
  # Unblock an existing domain from the list of blocked domains
  data, status_code, headers = api_instance.delete_blocked_domain_with_http_info(domain)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Brevo::ApiError => e
  puts "Error when calling SMTPApi->delete_blocked_domain_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **domain** | **String** | The name of the domain to be deleted |  |

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_hardbounces

> delete_hardbounces(opts)

Delete hardbounces

Delete hardbounces. To use carefully (e.g. in case of temporary ISP failures)

### Examples

```ruby
require 'time'
require 'brevo'
# setup authorization
Brevo.configure do |config|
  # Configure API key authorization: api-key
  config.api_key['api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api-key'] = 'Bearer'
end

api_instance = Brevo::SMTPApi.new
opts = {
  delete_hardbounces: Brevo::DeleteHardbounces.new # DeleteHardbounces | values to delete hardbounces
}

begin
  # Delete hardbounces
  api_instance.delete_hardbounces(opts)
rescue Brevo::ApiError => e
  puts "Error when calling SMTPApi->delete_hardbounces: #{e}"
end
```

#### Using the delete_hardbounces_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_hardbounces_with_http_info(opts)

```ruby
begin
  # Delete hardbounces
  data, status_code, headers = api_instance.delete_hardbounces_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Brevo::ApiError => e
  puts "Error when calling SMTPApi->delete_hardbounces_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **delete_hardbounces** | [**DeleteHardbounces**](DeleteHardbounces.md) | values to delete hardbounces | [optional] |

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_smtp_template

> delete_smtp_template(template_id)

Delete an inactive email template

### Examples

```ruby
require 'time'
require 'brevo'
# setup authorization
Brevo.configure do |config|
  # Configure API key authorization: api-key
  config.api_key['api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api-key'] = 'Bearer'
end

api_instance = Brevo::SMTPApi.new
template_id = 789 # Integer | id of the template

begin
  # Delete an inactive email template
  api_instance.delete_smtp_template(template_id)
rescue Brevo::ApiError => e
  puts "Error when calling SMTPApi->delete_smtp_template: #{e}"
end
```

#### Using the delete_smtp_template_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_smtp_template_with_http_info(template_id)

```ruby
begin
  # Delete an inactive email template
  data, status_code, headers = api_instance.delete_smtp_template_with_http_info(template_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Brevo::ApiError => e
  puts "Error when calling SMTPApi->delete_smtp_template_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **template_id** | **Integer** | id of the template |  |

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_aggregated_smtp_report

> <GetAggregatedReport> get_aggregated_smtp_report(opts)

Get your transactional email activity aggregated over a period of time

### Examples

```ruby
require 'time'
require 'brevo'
# setup authorization
Brevo.configure do |config|
  # Configure API key authorization: api-key
  config.api_key['api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api-key'] = 'Bearer'
end

api_instance = Brevo::SMTPApi.new
opts = {
  start_date: 'start_date_example', # String | Mandatory if endDate is used. Starting date of the report (YYYY-MM-DD). Must be lower than equal to endDate
  end_date: 'end_date_example', # String | Mandatory if startDate is used. Ending date of the report (YYYY-MM-DD). Must be greater than equal to startDate
  days: 56, # Integer | Number of days in the past including today (positive integer). Not compatible with 'startDate' and 'endDate'
  tag: 'tag_example' # String | Tag of the emails
}

begin
  # Get your transactional email activity aggregated over a period of time
  result = api_instance.get_aggregated_smtp_report(opts)
  p result
rescue Brevo::ApiError => e
  puts "Error when calling SMTPApi->get_aggregated_smtp_report: #{e}"
end
```

#### Using the get_aggregated_smtp_report_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAggregatedReport>, Integer, Hash)> get_aggregated_smtp_report_with_http_info(opts)

```ruby
begin
  # Get your transactional email activity aggregated over a period of time
  data, status_code, headers = api_instance.get_aggregated_smtp_report_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAggregatedReport>
rescue Brevo::ApiError => e
  puts "Error when calling SMTPApi->get_aggregated_smtp_report_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_date** | **String** | Mandatory if endDate is used. Starting date of the report (YYYY-MM-DD). Must be lower than equal to endDate | [optional] |
| **end_date** | **String** | Mandatory if startDate is used. Ending date of the report (YYYY-MM-DD). Must be greater than equal to startDate | [optional] |
| **days** | **Integer** | Number of days in the past including today (positive integer). Not compatible with &#39;startDate&#39; and &#39;endDate&#39; | [optional] |
| **tag** | **String** | Tag of the emails | [optional] |

### Return type

[**GetAggregatedReport**](GetAggregatedReport.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_blocked_domains

> <GetBlockedDomains> get_blocked_domains

Get the list of blocked domains

Get the list of blocked domains

### Examples

```ruby
require 'time'
require 'brevo'
# setup authorization
Brevo.configure do |config|
  # Configure API key authorization: api-key
  config.api_key['api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api-key'] = 'Bearer'
end

api_instance = Brevo::SMTPApi.new

begin
  # Get the list of blocked domains
  result = api_instance.get_blocked_domains
  p result
rescue Brevo::ApiError => e
  puts "Error when calling SMTPApi->get_blocked_domains: #{e}"
end
```

#### Using the get_blocked_domains_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetBlockedDomains>, Integer, Hash)> get_blocked_domains_with_http_info

```ruby
begin
  # Get the list of blocked domains
  data, status_code, headers = api_instance.get_blocked_domains_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetBlockedDomains>
rescue Brevo::ApiError => e
  puts "Error when calling SMTPApi->get_blocked_domains_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**GetBlockedDomains**](GetBlockedDomains.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_email_event_report

> <GetEmailEventReport> get_email_event_report(opts)

Get all your transactional email activity (unaggregated events)

### Examples

```ruby
require 'time'
require 'brevo'
# setup authorization
Brevo.configure do |config|
  # Configure API key authorization: api-key
  config.api_key['api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api-key'] = 'Bearer'
end

api_instance = Brevo::SMTPApi.new
opts = {
  limit: 789, # Integer | Number limitation for the result returned
  offset: 789, # Integer | Beginning point in the list to retrieve from.
  start_date: 'start_date_example', # String | Mandatory if endDate is used. Starting date of the report (YYYY-MM-DD). Must be lower than equal to endDate
  end_date: 'end_date_example', # String | Mandatory if startDate is used. Ending date of the report (YYYY-MM-DD). Must be greater than equal to startDate
  days: 56, # Integer | Number of days in the past including today (positive integer). Not compatible with 'startDate' and 'endDate'
  email: 'email_example', # String | Filter the report for a specific email addresses
  event: 'bounces', # String | Filter the report for a specific event type
  tags: 'tags_example', # String | Filter the report for tags (serialized and urlencoded array)
  message_id: 'message_id_example', # String | Filter on a specific message id
  template_id: 789 # Integer | Filter on a specific template id
}

begin
  # Get all your transactional email activity (unaggregated events)
  result = api_instance.get_email_event_report(opts)
  p result
rescue Brevo::ApiError => e
  puts "Error when calling SMTPApi->get_email_event_report: #{e}"
end
```

#### Using the get_email_event_report_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetEmailEventReport>, Integer, Hash)> get_email_event_report_with_http_info(opts)

```ruby
begin
  # Get all your transactional email activity (unaggregated events)
  data, status_code, headers = api_instance.get_email_event_report_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetEmailEventReport>
rescue Brevo::ApiError => e
  puts "Error when calling SMTPApi->get_email_event_report_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | Number limitation for the result returned | [optional][default to 50] |
| **offset** | **Integer** | Beginning point in the list to retrieve from. | [optional][default to 0] |
| **start_date** | **String** | Mandatory if endDate is used. Starting date of the report (YYYY-MM-DD). Must be lower than equal to endDate | [optional] |
| **end_date** | **String** | Mandatory if startDate is used. Ending date of the report (YYYY-MM-DD). Must be greater than equal to startDate | [optional] |
| **days** | **Integer** | Number of days in the past including today (positive integer). Not compatible with &#39;startDate&#39; and &#39;endDate&#39; | [optional] |
| **email** | **String** | Filter the report for a specific email addresses | [optional] |
| **event** | **String** | Filter the report for a specific event type | [optional] |
| **tags** | **String** | Filter the report for tags (serialized and urlencoded array) | [optional] |
| **message_id** | **String** | Filter on a specific message id | [optional] |
| **template_id** | **Integer** | Filter on a specific template id | [optional] |

### Return type

[**GetEmailEventReport**](GetEmailEventReport.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_smtp_report

> <GetReports> get_smtp_report(opts)

Get your transactional email activity aggregated per day

### Examples

```ruby
require 'time'
require 'brevo'
# setup authorization
Brevo.configure do |config|
  # Configure API key authorization: api-key
  config.api_key['api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api-key'] = 'Bearer'
end

api_instance = Brevo::SMTPApi.new
opts = {
  limit: 789, # Integer | Number of documents returned per page
  offset: 789, # Integer | Index of the first document on the page
  start_date: 'start_date_example', # String | Mandatory if endDate is used. Starting date of the report (YYYY-MM-DD)
  end_date: 'end_date_example', # String | Mandatory if startDate is used. Ending date of the report (YYYY-MM-DD)
  days: 56, # Integer | Number of days in the past including today (positive integer). Not compatible with 'startDate' and 'endDate'
  tag: 'tag_example' # String | Tag of the emails
}

begin
  # Get your transactional email activity aggregated per day
  result = api_instance.get_smtp_report(opts)
  p result
rescue Brevo::ApiError => e
  puts "Error when calling SMTPApi->get_smtp_report: #{e}"
end
```

#### Using the get_smtp_report_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetReports>, Integer, Hash)> get_smtp_report_with_http_info(opts)

```ruby
begin
  # Get your transactional email activity aggregated per day
  data, status_code, headers = api_instance.get_smtp_report_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetReports>
rescue Brevo::ApiError => e
  puts "Error when calling SMTPApi->get_smtp_report_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | Number of documents returned per page | [optional][default to 10] |
| **offset** | **Integer** | Index of the first document on the page | [optional][default to 0] |
| **start_date** | **String** | Mandatory if endDate is used. Starting date of the report (YYYY-MM-DD) | [optional] |
| **end_date** | **String** | Mandatory if startDate is used. Ending date of the report (YYYY-MM-DD) | [optional] |
| **days** | **Integer** | Number of days in the past including today (positive integer). Not compatible with &#39;startDate&#39; and &#39;endDate&#39; | [optional] |
| **tag** | **String** | Tag of the emails | [optional] |

### Return type

[**GetReports**](GetReports.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_smtp_template

> <GetSmtpTemplateOverview> get_smtp_template(template_id)

Returns the template information

### Examples

```ruby
require 'time'
require 'brevo'
# setup authorization
Brevo.configure do |config|
  # Configure API key authorization: api-key
  config.api_key['api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api-key'] = 'Bearer'
end

api_instance = Brevo::SMTPApi.new
template_id = 789 # Integer | id of the template

begin
  # Returns the template information
  result = api_instance.get_smtp_template(template_id)
  p result
rescue Brevo::ApiError => e
  puts "Error when calling SMTPApi->get_smtp_template: #{e}"
end
```

#### Using the get_smtp_template_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetSmtpTemplateOverview>, Integer, Hash)> get_smtp_template_with_http_info(template_id)

```ruby
begin
  # Returns the template information
  data, status_code, headers = api_instance.get_smtp_template_with_http_info(template_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetSmtpTemplateOverview>
rescue Brevo::ApiError => e
  puts "Error when calling SMTPApi->get_smtp_template_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **template_id** | **Integer** | id of the template |  |

### Return type

[**GetSmtpTemplateOverview**](GetSmtpTemplateOverview.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_smtp_templates

> <GetSmtpTemplates> get_smtp_templates(opts)

Get the list of email templates

### Examples

```ruby
require 'time'
require 'brevo'
# setup authorization
Brevo.configure do |config|
  # Configure API key authorization: api-key
  config.api_key['api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api-key'] = 'Bearer'
end

api_instance = Brevo::SMTPApi.new
opts = {
  template_status: true, # Boolean | Filter on the status of the template. Active = true, inactive = false
  limit: 789, # Integer | Number of documents returned per page
  offset: 789 # Integer | Index of the first document in the page
}

begin
  # Get the list of email templates
  result = api_instance.get_smtp_templates(opts)
  p result
rescue Brevo::ApiError => e
  puts "Error when calling SMTPApi->get_smtp_templates: #{e}"
end
```

#### Using the get_smtp_templates_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetSmtpTemplates>, Integer, Hash)> get_smtp_templates_with_http_info(opts)

```ruby
begin
  # Get the list of email templates
  data, status_code, headers = api_instance.get_smtp_templates_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetSmtpTemplates>
rescue Brevo::ApiError => e
  puts "Error when calling SMTPApi->get_smtp_templates_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **template_status** | **Boolean** | Filter on the status of the template. Active &#x3D; true, inactive &#x3D; false | [optional] |
| **limit** | **Integer** | Number of documents returned per page | [optional][default to 50] |
| **offset** | **Integer** | Index of the first document in the page | [optional][default to 0] |

### Return type

[**GetSmtpTemplates**](GetSmtpTemplates.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_transac_blocked_contacts

> <GetTransacBlockedContacts> get_transac_blocked_contacts(opts)

Get the list of blocked or unsubscribed transactional contacts

### Examples

```ruby
require 'time'
require 'brevo'
# setup authorization
Brevo.configure do |config|
  # Configure API key authorization: api-key
  config.api_key['api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api-key'] = 'Bearer'
end

api_instance = Brevo::SMTPApi.new
opts = {
  start_date: 'start_date_example', # String | Mandatory if endDate is used. Starting date (YYYY-MM-DD) from which you want to fetch the blocked or unsubscribed contacts
  end_date: 'end_date_example', # String | Mandatory if startDate is used. Ending date (YYYY-MM-DD) till which you want to fetch the blocked or unsubscribed contacts
  limit: 789, # Integer | Number of documents returned per page
  offset: 789, # Integer | Index of the first document on the page
  senders: ['inner_example'] # Array<String> | Comma separated list of emails of the senders from which contacts are blocked or unsubscribed
}

begin
  # Get the list of blocked or unsubscribed transactional contacts
  result = api_instance.get_transac_blocked_contacts(opts)
  p result
rescue Brevo::ApiError => e
  puts "Error when calling SMTPApi->get_transac_blocked_contacts: #{e}"
end
```

#### Using the get_transac_blocked_contacts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetTransacBlockedContacts>, Integer, Hash)> get_transac_blocked_contacts_with_http_info(opts)

```ruby
begin
  # Get the list of blocked or unsubscribed transactional contacts
  data, status_code, headers = api_instance.get_transac_blocked_contacts_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetTransacBlockedContacts>
rescue Brevo::ApiError => e
  puts "Error when calling SMTPApi->get_transac_blocked_contacts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_date** | **String** | Mandatory if endDate is used. Starting date (YYYY-MM-DD) from which you want to fetch the blocked or unsubscribed contacts | [optional] |
| **end_date** | **String** | Mandatory if startDate is used. Ending date (YYYY-MM-DD) till which you want to fetch the blocked or unsubscribed contacts | [optional] |
| **limit** | **Integer** | Number of documents returned per page | [optional][default to 50] |
| **offset** | **Integer** | Index of the first document on the page | [optional][default to 0] |
| **senders** | [**Array&lt;String&gt;**](String.md) | Comma separated list of emails of the senders from which contacts are blocked or unsubscribed | [optional] |

### Return type

[**GetTransacBlockedContacts**](GetTransacBlockedContacts.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_transac_email_content

> <GetTransacEmailContent> get_transac_email_content(uuid)

Get the personalized content of a sent transactional email

### Examples

```ruby
require 'time'
require 'brevo'
# setup authorization
Brevo.configure do |config|
  # Configure API key authorization: api-key
  config.api_key['api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api-key'] = 'Bearer'
end

api_instance = Brevo::SMTPApi.new
uuid = 'uuid_example' # String | Unique id of the transactional email that has been sent to a particular contact

begin
  # Get the personalized content of a sent transactional email
  result = api_instance.get_transac_email_content(uuid)
  p result
rescue Brevo::ApiError => e
  puts "Error when calling SMTPApi->get_transac_email_content: #{e}"
end
```

#### Using the get_transac_email_content_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetTransacEmailContent>, Integer, Hash)> get_transac_email_content_with_http_info(uuid)

```ruby
begin
  # Get the personalized content of a sent transactional email
  data, status_code, headers = api_instance.get_transac_email_content_with_http_info(uuid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetTransacEmailContent>
rescue Brevo::ApiError => e
  puts "Error when calling SMTPApi->get_transac_email_content_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **uuid** | **String** | Unique id of the transactional email that has been sent to a particular contact |  |

### Return type

[**GetTransacEmailContent**](GetTransacEmailContent.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_transac_emails_list

> <GetTransacEmailsList> get_transac_emails_list(opts)

Get the list of transactional emails on the basis of allowed filters

This endpoint will show the list of emails for past 30 days by default. To retrieve emails before that time, please pass startDate and endDate in query filters.

### Examples

```ruby
require 'time'
require 'brevo'
# setup authorization
Brevo.configure do |config|
  # Configure API key authorization: api-key
  config.api_key['api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api-key'] = 'Bearer'
end

api_instance = Brevo::SMTPApi.new
opts = {
  email: 'email_example', # String | Mandatory if templateId and messageId are not passed in query filters. Email address to which transactional email has been sent.
  template_id: 789, # Integer | Mandatory if email and messageId are not passed in query filters. Id of the template that was used to compose transactional email.
  message_id: 'message_id_example', # String | Mandatory if templateId and email are not passed in query filters. Message ID of the transactional email sent.
  start_date: Date.parse('2013-10-20'), # Date | Mandatory if endDate is used. Starting date (YYYY-MM-DD) from which you want to fetch the list. Maximum time period that can be selected is one month.
  end_date: Date.parse('2013-10-20') # Date | Mandatory if startDate is used. Ending date (YYYY-MM-DD) till which you want to fetch the list. Maximum time period that can be selected is one month.
}

begin
  # Get the list of transactional emails on the basis of allowed filters
  result = api_instance.get_transac_emails_list(opts)
  p result
rescue Brevo::ApiError => e
  puts "Error when calling SMTPApi->get_transac_emails_list: #{e}"
end
```

#### Using the get_transac_emails_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetTransacEmailsList>, Integer, Hash)> get_transac_emails_list_with_http_info(opts)

```ruby
begin
  # Get the list of transactional emails on the basis of allowed filters
  data, status_code, headers = api_instance.get_transac_emails_list_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetTransacEmailsList>
rescue Brevo::ApiError => e
  puts "Error when calling SMTPApi->get_transac_emails_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | **String** | Mandatory if templateId and messageId are not passed in query filters. Email address to which transactional email has been sent. | [optional] |
| **template_id** | **Integer** | Mandatory if email and messageId are not passed in query filters. Id of the template that was used to compose transactional email. | [optional] |
| **message_id** | **String** | Mandatory if templateId and email are not passed in query filters. Message ID of the transactional email sent. | [optional] |
| **start_date** | **Date** | Mandatory if endDate is used. Starting date (YYYY-MM-DD) from which you want to fetch the list. Maximum time period that can be selected is one month. | [optional] |
| **end_date** | **Date** | Mandatory if startDate is used. Ending date (YYYY-MM-DD) till which you want to fetch the list. Maximum time period that can be selected is one month. | [optional] |

### Return type

[**GetTransacEmailsList**](GetTransacEmailsList.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## send_template

> <SendTemplateEmail> send_template(template_id, send_email)

Send a template

This endpoint is deprecated. Prefer v3/smtp/email instead.

### Examples

```ruby
require 'time'
require 'brevo'
# setup authorization
Brevo.configure do |config|
  # Configure API key authorization: api-key
  config.api_key['api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api-key'] = 'Bearer'
end

api_instance = Brevo::SMTPApi.new
template_id = 789 # Integer | Id of the template
send_email = Brevo::SendEmail.new({email_to: ['john.smith@example.com']}) # SendEmail | 

begin
  # Send a template
  result = api_instance.send_template(template_id, send_email)
  p result
rescue Brevo::ApiError => e
  puts "Error when calling SMTPApi->send_template: #{e}"
end
```

#### Using the send_template_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SendTemplateEmail>, Integer, Hash)> send_template_with_http_info(template_id, send_email)

```ruby
begin
  # Send a template
  data, status_code, headers = api_instance.send_template_with_http_info(template_id, send_email)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SendTemplateEmail>
rescue Brevo::ApiError => e
  puts "Error when calling SMTPApi->send_template_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **template_id** | **Integer** | Id of the template |  |
| **send_email** | [**SendEmail**](SendEmail.md) |  |  |

### Return type

[**SendTemplateEmail**](SendTemplateEmail.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## send_test_template

> send_test_template(template_id, send_test_email)

Send a template to your test list

### Examples

```ruby
require 'time'
require 'brevo'
# setup authorization
Brevo.configure do |config|
  # Configure API key authorization: api-key
  config.api_key['api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api-key'] = 'Bearer'
end

api_instance = Brevo::SMTPApi.new
template_id = 789 # Integer | Id of the template
send_test_email = Brevo::SendTestEmail.new # SendTestEmail | 

begin
  # Send a template to your test list
  api_instance.send_test_template(template_id, send_test_email)
rescue Brevo::ApiError => e
  puts "Error when calling SMTPApi->send_test_template: #{e}"
end
```

#### Using the send_test_template_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> send_test_template_with_http_info(template_id, send_test_email)

```ruby
begin
  # Send a template to your test list
  data, status_code, headers = api_instance.send_test_template_with_http_info(template_id, send_test_email)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Brevo::ApiError => e
  puts "Error when calling SMTPApi->send_test_template_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **template_id** | **Integer** | Id of the template |  |
| **send_test_email** | [**SendTestEmail**](SendTestEmail.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## send_transac_email

> <CreateSmtpEmail> send_transac_email(send_smtp_email)

Send a transactional email

### Examples

```ruby
require 'time'
require 'brevo'
# setup authorization
Brevo.configure do |config|
  # Configure API key authorization: api-key
  config.api_key['api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api-key'] = 'Bearer'
end

api_instance = Brevo::SMTPApi.new
send_smtp_email = Brevo::SendSmtpEmail.new({to: [Brevo::SendSmtpEmailToInner.new({email: 'jimmy98@example.com'})]}) # SendSmtpEmail | Values to send a transactional email

begin
  # Send a transactional email
  result = api_instance.send_transac_email(send_smtp_email)
  p result
rescue Brevo::ApiError => e
  puts "Error when calling SMTPApi->send_transac_email: #{e}"
end
```

#### Using the send_transac_email_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateSmtpEmail>, Integer, Hash)> send_transac_email_with_http_info(send_smtp_email)

```ruby
begin
  # Send a transactional email
  data, status_code, headers = api_instance.send_transac_email_with_http_info(send_smtp_email)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateSmtpEmail>
rescue Brevo::ApiError => e
  puts "Error when calling SMTPApi->send_transac_email_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **send_smtp_email** | [**SendSmtpEmail**](SendSmtpEmail.md) | Values to send a transactional email |  |

### Return type

[**CreateSmtpEmail**](CreateSmtpEmail.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## smtp_blocked_contacts_email_delete

> smtp_blocked_contacts_email_delete(email)

Unblock or resubscribe a transactional contact

### Examples

```ruby
require 'time'
require 'brevo'
# setup authorization
Brevo.configure do |config|
  # Configure API key authorization: api-key
  config.api_key['api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api-key'] = 'Bearer'
end

api_instance = Brevo::SMTPApi.new
email = 'email_example' # String | contact email (urlencoded) to unblock.

begin
  # Unblock or resubscribe a transactional contact
  api_instance.smtp_blocked_contacts_email_delete(email)
rescue Brevo::ApiError => e
  puts "Error when calling SMTPApi->smtp_blocked_contacts_email_delete: #{e}"
end
```

#### Using the smtp_blocked_contacts_email_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> smtp_blocked_contacts_email_delete_with_http_info(email)

```ruby
begin
  # Unblock or resubscribe a transactional contact
  data, status_code, headers = api_instance.smtp_blocked_contacts_email_delete_with_http_info(email)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Brevo::ApiError => e
  puts "Error when calling SMTPApi->smtp_blocked_contacts_email_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | **String** | contact email (urlencoded) to unblock. |  |

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## smtp_log_message_id_delete

> smtp_log_message_id_delete(message_id)

Delete an SMTP transactional log

### Examples

```ruby
require 'time'
require 'brevo'
# setup authorization
Brevo.configure do |config|
  # Configure API key authorization: api-key
  config.api_key['api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api-key'] = 'Bearer'
end

api_instance = Brevo::SMTPApi.new
message_id = 'message_id_example' # String | MessageId of the transactional log to delete

begin
  # Delete an SMTP transactional log
  api_instance.smtp_log_message_id_delete(message_id)
rescue Brevo::ApiError => e
  puts "Error when calling SMTPApi->smtp_log_message_id_delete: #{e}"
end
```

#### Using the smtp_log_message_id_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> smtp_log_message_id_delete_with_http_info(message_id)

```ruby
begin
  # Delete an SMTP transactional log
  data, status_code, headers = api_instance.smtp_log_message_id_delete_with_http_info(message_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Brevo::ApiError => e
  puts "Error when calling SMTPApi->smtp_log_message_id_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **message_id** | **String** | MessageId of the transactional log to delete |  |

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_smtp_template

> update_smtp_template(template_id, smtp_template)

Update an email template

### Examples

```ruby
require 'time'
require 'brevo'
# setup authorization
Brevo.configure do |config|
  # Configure API key authorization: api-key
  config.api_key['api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api-key'] = 'Bearer'
end

api_instance = Brevo::SMTPApi.new
template_id = 789 # Integer | id of the template
smtp_template = Brevo::UpdateSmtpTemplate.new # UpdateSmtpTemplate | values to update in transactional email template

begin
  # Update an email template
  api_instance.update_smtp_template(template_id, smtp_template)
rescue Brevo::ApiError => e
  puts "Error when calling SMTPApi->update_smtp_template: #{e}"
end
```

#### Using the update_smtp_template_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_smtp_template_with_http_info(template_id, smtp_template)

```ruby
begin
  # Update an email template
  data, status_code, headers = api_instance.update_smtp_template_with_http_info(template_id, smtp_template)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Brevo::ApiError => e
  puts "Error when calling SMTPApi->update_smtp_template_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **template_id** | **Integer** | id of the template |  |
| **smtp_template** | [**UpdateSmtpTemplate**](UpdateSmtpTemplate.md) | values to update in transactional email template |  |

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

