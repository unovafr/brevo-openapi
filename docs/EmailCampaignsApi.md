# Brevo::EmailCampaignsApi

All URIs are relative to *https://api.sendinblue.com/v3*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_email_campaign**](EmailCampaignsApi.md#create_email_campaign) | **POST** /emailCampaigns | Create an email campaign |
| [**delete_email_campaign**](EmailCampaignsApi.md#delete_email_campaign) | **DELETE** /emailCampaigns/{campaignId} | Delete an email campaign |
| [**email_export_recipients**](EmailCampaignsApi.md#email_export_recipients) | **POST** /emailCampaigns/{campaignId}/exportRecipients | Export the recipients of an email campaign |
| [**get_ab_test_campaign_result**](EmailCampaignsApi.md#get_ab_test_campaign_result) | **GET** /emailCampaigns/{campaignId}/abTestCampaignResult | Get an A/B test email campaign results |
| [**get_email_campaign**](EmailCampaignsApi.md#get_email_campaign) | **GET** /emailCampaigns/{campaignId} | Get an email campaign report |
| [**get_email_campaigns**](EmailCampaignsApi.md#get_email_campaigns) | **GET** /emailCampaigns | Return all your created email campaigns |
| [**get_shared_template_url**](EmailCampaignsApi.md#get_shared_template_url) | **GET** /emailCampaigns/{campaignId}/sharedUrl | Get a shared template url |
| [**send_email_campaign_now**](EmailCampaignsApi.md#send_email_campaign_now) | **POST** /emailCampaigns/{campaignId}/sendNow | Send an email campaign immediately, based on campaignId |
| [**send_report**](EmailCampaignsApi.md#send_report) | **POST** /emailCampaigns/{campaignId}/sendReport | Send the report of a campaign |
| [**send_test_email**](EmailCampaignsApi.md#send_test_email) | **POST** /emailCampaigns/{campaignId}/sendTest | Send an email campaign to your test list |
| [**update_campaign_status**](EmailCampaignsApi.md#update_campaign_status) | **PUT** /emailCampaigns/{campaignId}/status | Update an email campaign status |
| [**update_email_campaign**](EmailCampaignsApi.md#update_email_campaign) | **PUT** /emailCampaigns/{campaignId} | Update an email campaign |
| [**upload_image_to_gallery**](EmailCampaignsApi.md#upload_image_to_gallery) | **POST** /emailCampaigns/images | Upload an image to your account&#39;s image gallery |


## create_email_campaign

> <CreateModel> create_email_campaign(email_campaigns)

Create an email campaign

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

api_instance = Brevo::EmailCampaignsApi.new
email_campaigns = Brevo::CreateEmailCampaign.new({sender: Brevo::CreateEmailCampaignSender.new, name: 'Newsletter - May 2017'}) # CreateEmailCampaign | Values to create a campaign

begin
  # Create an email campaign
  result = api_instance.create_email_campaign(email_campaigns)
  p result
rescue Brevo::ApiError => e
  puts "Error when calling EmailCampaignsApi->create_email_campaign: #{e}"
end
```

#### Using the create_email_campaign_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateModel>, Integer, Hash)> create_email_campaign_with_http_info(email_campaigns)

```ruby
begin
  # Create an email campaign
  data, status_code, headers = api_instance.create_email_campaign_with_http_info(email_campaigns)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateModel>
rescue Brevo::ApiError => e
  puts "Error when calling EmailCampaignsApi->create_email_campaign_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email_campaigns** | [**CreateEmailCampaign**](CreateEmailCampaign.md) | Values to create a campaign |  |

### Return type

[**CreateModel**](CreateModel.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_email_campaign

> delete_email_campaign(campaign_id)

Delete an email campaign

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

api_instance = Brevo::EmailCampaignsApi.new
campaign_id = 789 # Integer | id of the campaign

begin
  # Delete an email campaign
  api_instance.delete_email_campaign(campaign_id)
rescue Brevo::ApiError => e
  puts "Error when calling EmailCampaignsApi->delete_email_campaign: #{e}"
end
```

#### Using the delete_email_campaign_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_email_campaign_with_http_info(campaign_id)

```ruby
begin
  # Delete an email campaign
  data, status_code, headers = api_instance.delete_email_campaign_with_http_info(campaign_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Brevo::ApiError => e
  puts "Error when calling EmailCampaignsApi->delete_email_campaign_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_id** | **Integer** | id of the campaign |  |

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## email_export_recipients

> <CreatedProcessId> email_export_recipients(campaign_id, opts)

Export the recipients of an email campaign

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

api_instance = Brevo::EmailCampaignsApi.new
campaign_id = 789 # Integer | Id of the campaign
opts = {
  recipient_export: Brevo::EmailExportRecipients.new({recipients_type: 'all'}) # EmailExportRecipients | Values to send for a recipient export request
}

begin
  # Export the recipients of an email campaign
  result = api_instance.email_export_recipients(campaign_id, opts)
  p result
rescue Brevo::ApiError => e
  puts "Error when calling EmailCampaignsApi->email_export_recipients: #{e}"
end
```

#### Using the email_export_recipients_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreatedProcessId>, Integer, Hash)> email_export_recipients_with_http_info(campaign_id, opts)

```ruby
begin
  # Export the recipients of an email campaign
  data, status_code, headers = api_instance.email_export_recipients_with_http_info(campaign_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreatedProcessId>
rescue Brevo::ApiError => e
  puts "Error when calling EmailCampaignsApi->email_export_recipients_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_id** | **Integer** | Id of the campaign |  |
| **recipient_export** | [**EmailExportRecipients**](EmailExportRecipients.md) | Values to send for a recipient export request | [optional] |

### Return type

[**CreatedProcessId**](CreatedProcessId.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_ab_test_campaign_result

> <AbTestCampaignResult> get_ab_test_campaign_result(campaign_id)

Get an A/B test email campaign results

Obtain winning version of an A/B test email campaign

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

api_instance = Brevo::EmailCampaignsApi.new
campaign_id = 789 # Integer | Id of the A/B test campaign

begin
  # Get an A/B test email campaign results
  result = api_instance.get_ab_test_campaign_result(campaign_id)
  p result
rescue Brevo::ApiError => e
  puts "Error when calling EmailCampaignsApi->get_ab_test_campaign_result: #{e}"
end
```

#### Using the get_ab_test_campaign_result_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AbTestCampaignResult>, Integer, Hash)> get_ab_test_campaign_result_with_http_info(campaign_id)

```ruby
begin
  # Get an A/B test email campaign results
  data, status_code, headers = api_instance.get_ab_test_campaign_result_with_http_info(campaign_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AbTestCampaignResult>
rescue Brevo::ApiError => e
  puts "Error when calling EmailCampaignsApi->get_ab_test_campaign_result_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_id** | **Integer** | Id of the A/B test campaign |  |

### Return type

[**AbTestCampaignResult**](AbTestCampaignResult.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_email_campaign

> <GetEmailCampaign> get_email_campaign(campaign_id, opts)

Get an email campaign report

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

api_instance = Brevo::EmailCampaignsApi.new
campaign_id = 789 # Integer | Id of the campaign
opts = {
  statistics: 'globalStats' # String | Filter on type of the statistics required. Example **globalStats** value will only fetch globalStats info of the campaign in returned response.
}

begin
  # Get an email campaign report
  result = api_instance.get_email_campaign(campaign_id, opts)
  p result
rescue Brevo::ApiError => e
  puts "Error when calling EmailCampaignsApi->get_email_campaign: #{e}"
end
```

#### Using the get_email_campaign_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetEmailCampaign>, Integer, Hash)> get_email_campaign_with_http_info(campaign_id, opts)

```ruby
begin
  # Get an email campaign report
  data, status_code, headers = api_instance.get_email_campaign_with_http_info(campaign_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetEmailCampaign>
rescue Brevo::ApiError => e
  puts "Error when calling EmailCampaignsApi->get_email_campaign_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_id** | **Integer** | Id of the campaign |  |
| **statistics** | **String** | Filter on type of the statistics required. Example **globalStats** value will only fetch globalStats info of the campaign in returned response. | [optional] |

### Return type

[**GetEmailCampaign**](GetEmailCampaign.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_email_campaigns

> <GetEmailCampaigns> get_email_campaigns(opts)

Return all your created email campaigns

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

api_instance = Brevo::EmailCampaignsApi.new
opts = {
  type: 'classic', # String | Filter on the type of the campaigns
  status: 'suspended', # String | Filter on the status of the campaign
  statistics: 'globalStats', # String | Filter on type of the statistics required. Example **globalStats** value will only fetch globalStats info of the campaign in returned response.
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Mandatory if endDate is used. Starting (urlencoded) UTC date-time (YYYY-MM-DDTHH:mm:ss.SSSZ) to filter the sent email campaigns. Prefer to pass your timezone in date-time format for accurate result ( only available if either 'status' not passed and if passed is set to 'sent' )
  end_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Mandatory if startDate is used. Ending (urlencoded) UTC date-time (YYYY-MM-DDTHH:mm:ss.SSSZ) to filter the sent email campaigns. Prefer to pass your timezone in date-time format for accurate result ( only available if either 'status' not passed and if passed is set to 'sent' )
  limit: 789, # Integer | Number of documents per page
  offset: 789, # Integer | Index of the first document in the page
  exclude_html_content: true # Boolean | Use this flag to exclude htmlContent from the response body. If set to **true**, htmlContent field will be returned as empty string in the response body
}

begin
  # Return all your created email campaigns
  result = api_instance.get_email_campaigns(opts)
  p result
rescue Brevo::ApiError => e
  puts "Error when calling EmailCampaignsApi->get_email_campaigns: #{e}"
end
```

#### Using the get_email_campaigns_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetEmailCampaigns>, Integer, Hash)> get_email_campaigns_with_http_info(opts)

```ruby
begin
  # Return all your created email campaigns
  data, status_code, headers = api_instance.get_email_campaigns_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetEmailCampaigns>
rescue Brevo::ApiError => e
  puts "Error when calling EmailCampaignsApi->get_email_campaigns_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | Filter on the type of the campaigns | [optional] |
| **status** | **String** | Filter on the status of the campaign | [optional] |
| **statistics** | **String** | Filter on type of the statistics required. Example **globalStats** value will only fetch globalStats info of the campaign in returned response. | [optional] |
| **start_date** | **Time** | Mandatory if endDate is used. Starting (urlencoded) UTC date-time (YYYY-MM-DDTHH:mm:ss.SSSZ) to filter the sent email campaigns. Prefer to pass your timezone in date-time format for accurate result ( only available if either &#39;status&#39; not passed and if passed is set to &#39;sent&#39; ) | [optional] |
| **end_date** | **Time** | Mandatory if startDate is used. Ending (urlencoded) UTC date-time (YYYY-MM-DDTHH:mm:ss.SSSZ) to filter the sent email campaigns. Prefer to pass your timezone in date-time format for accurate result ( only available if either &#39;status&#39; not passed and if passed is set to &#39;sent&#39; ) | [optional] |
| **limit** | **Integer** | Number of documents per page | [optional][default to 500] |
| **offset** | **Integer** | Index of the first document in the page | [optional][default to 0] |
| **exclude_html_content** | **Boolean** | Use this flag to exclude htmlContent from the response body. If set to **true**, htmlContent field will be returned as empty string in the response body | [optional] |

### Return type

[**GetEmailCampaigns**](GetEmailCampaigns.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, applications/json


## get_shared_template_url

> <GetSharedTemplateUrl> get_shared_template_url(campaign_id)

Get a shared template url

Get a unique URL to share & import an email template from one Sendinblue account to another.

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

api_instance = Brevo::EmailCampaignsApi.new
campaign_id = 789 # Integer | Id of the campaign or template

begin
  # Get a shared template url
  result = api_instance.get_shared_template_url(campaign_id)
  p result
rescue Brevo::ApiError => e
  puts "Error when calling EmailCampaignsApi->get_shared_template_url: #{e}"
end
```

#### Using the get_shared_template_url_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetSharedTemplateUrl>, Integer, Hash)> get_shared_template_url_with_http_info(campaign_id)

```ruby
begin
  # Get a shared template url
  data, status_code, headers = api_instance.get_shared_template_url_with_http_info(campaign_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetSharedTemplateUrl>
rescue Brevo::ApiError => e
  puts "Error when calling EmailCampaignsApi->get_shared_template_url_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_id** | **Integer** | Id of the campaign or template |  |

### Return type

[**GetSharedTemplateUrl**](GetSharedTemplateUrl.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## send_email_campaign_now

> send_email_campaign_now(campaign_id)

Send an email campaign immediately, based on campaignId

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

api_instance = Brevo::EmailCampaignsApi.new
campaign_id = 789 # Integer | Id of the campaign

begin
  # Send an email campaign immediately, based on campaignId
  api_instance.send_email_campaign_now(campaign_id)
rescue Brevo::ApiError => e
  puts "Error when calling EmailCampaignsApi->send_email_campaign_now: #{e}"
end
```

#### Using the send_email_campaign_now_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> send_email_campaign_now_with_http_info(campaign_id)

```ruby
begin
  # Send an email campaign immediately, based on campaignId
  data, status_code, headers = api_instance.send_email_campaign_now_with_http_info(campaign_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Brevo::ApiError => e
  puts "Error when calling EmailCampaignsApi->send_email_campaign_now_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_id** | **Integer** | Id of the campaign |  |

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## send_report

> send_report(campaign_id, send_report)

Send the report of a campaign

A PDF will be sent to the specified email addresses

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

api_instance = Brevo::EmailCampaignsApi.new
campaign_id = 789 # Integer | Id of the campaign
send_report = Brevo::SendReport.new({email: Brevo::SendReportEmail.new({to: ['jim.suehan@example.com'], body: 'Please find attached the report of our last email campaign.'})}) # SendReport | Values for send a report

begin
  # Send the report of a campaign
  api_instance.send_report(campaign_id, send_report)
rescue Brevo::ApiError => e
  puts "Error when calling EmailCampaignsApi->send_report: #{e}"
end
```

#### Using the send_report_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> send_report_with_http_info(campaign_id, send_report)

```ruby
begin
  # Send the report of a campaign
  data, status_code, headers = api_instance.send_report_with_http_info(campaign_id, send_report)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Brevo::ApiError => e
  puts "Error when calling EmailCampaignsApi->send_report_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_id** | **Integer** | Id of the campaign |  |
| **send_report** | [**SendReport**](SendReport.md) | Values for send a report |  |

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## send_test_email

> send_test_email(campaign_id, email_to)

Send an email campaign to your test list

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

api_instance = Brevo::EmailCampaignsApi.new
campaign_id = 789 # Integer | Id of the campaign
email_to = Brevo::SendTestEmail.new # SendTestEmail | 

begin
  # Send an email campaign to your test list
  api_instance.send_test_email(campaign_id, email_to)
rescue Brevo::ApiError => e
  puts "Error when calling EmailCampaignsApi->send_test_email: #{e}"
end
```

#### Using the send_test_email_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> send_test_email_with_http_info(campaign_id, email_to)

```ruby
begin
  # Send an email campaign to your test list
  data, status_code, headers = api_instance.send_test_email_with_http_info(campaign_id, email_to)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Brevo::ApiError => e
  puts "Error when calling EmailCampaignsApi->send_test_email_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_id** | **Integer** | Id of the campaign |  |
| **email_to** | [**SendTestEmail**](SendTestEmail.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_campaign_status

> update_campaign_status(campaign_id, status)

Update an email campaign status

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

api_instance = Brevo::EmailCampaignsApi.new
campaign_id = 789 # Integer | Id of the campaign
status = Brevo::UpdateCampaignStatus.new # UpdateCampaignStatus | Status of the campaign

begin
  # Update an email campaign status
  api_instance.update_campaign_status(campaign_id, status)
rescue Brevo::ApiError => e
  puts "Error when calling EmailCampaignsApi->update_campaign_status: #{e}"
end
```

#### Using the update_campaign_status_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_campaign_status_with_http_info(campaign_id, status)

```ruby
begin
  # Update an email campaign status
  data, status_code, headers = api_instance.update_campaign_status_with_http_info(campaign_id, status)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Brevo::ApiError => e
  puts "Error when calling EmailCampaignsApi->update_campaign_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_id** | **Integer** | Id of the campaign |  |
| **status** | [**UpdateCampaignStatus**](UpdateCampaignStatus.md) | Status of the campaign |  |

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_email_campaign

> update_email_campaign(campaign_id, email_campaign)

Update an email campaign

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

api_instance = Brevo::EmailCampaignsApi.new
campaign_id = 789 # Integer | Id of the campaign
email_campaign = Brevo::UpdateEmailCampaign.new # UpdateEmailCampaign | Values to update a campaign

begin
  # Update an email campaign
  api_instance.update_email_campaign(campaign_id, email_campaign)
rescue Brevo::ApiError => e
  puts "Error when calling EmailCampaignsApi->update_email_campaign: #{e}"
end
```

#### Using the update_email_campaign_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_email_campaign_with_http_info(campaign_id, email_campaign)

```ruby
begin
  # Update an email campaign
  data, status_code, headers = api_instance.update_email_campaign_with_http_info(campaign_id, email_campaign)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Brevo::ApiError => e
  puts "Error when calling EmailCampaignsApi->update_email_campaign_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_id** | **Integer** | Id of the campaign |  |
| **email_campaign** | [**UpdateEmailCampaign**](UpdateEmailCampaign.md) | Values to update a campaign |  |

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## upload_image_to_gallery

> upload_image_to_gallery(upload_image)

Upload an image to your account's image gallery

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

api_instance = Brevo::EmailCampaignsApi.new
upload_image = Brevo::UploadImageToGallery.new({image_url: 'https://somedomain.com/image1.jpg'}) # UploadImageToGallery | Parameters to upload an image

begin
  # Upload an image to your account's image gallery
  api_instance.upload_image_to_gallery(upload_image)
rescue Brevo::ApiError => e
  puts "Error when calling EmailCampaignsApi->upload_image_to_gallery: #{e}"
end
```

#### Using the upload_image_to_gallery_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> upload_image_to_gallery_with_http_info(upload_image)

```ruby
begin
  # Upload an image to your account's image gallery
  data, status_code, headers = api_instance.upload_image_to_gallery_with_http_info(upload_image)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Brevo::ApiError => e
  puts "Error when calling EmailCampaignsApi->upload_image_to_gallery_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **upload_image** | [**UploadImageToGallery**](UploadImageToGallery.md) | Parameters to upload an image |  |

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

