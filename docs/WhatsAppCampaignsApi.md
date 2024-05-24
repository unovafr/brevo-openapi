# Brevo::WhatsAppCampaignsApi

All URIs are relative to *https://api.brevo.com/v3*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_whats_app_campaign**](WhatsAppCampaignsApi.md#create_whats_app_campaign) | **POST** /whatsappCampaigns | Create and Send a WhatsApp campaign |
| [**create_whats_app_template**](WhatsAppCampaignsApi.md#create_whats_app_template) | **POST** /whatsappCampaigns/template | Create a WhatsApp template |
| [**delete_whats_app_campaign**](WhatsAppCampaignsApi.md#delete_whats_app_campaign) | **DELETE** /whatsappCampaigns/{campaignId} | Delete a WhatsApp campaign |
| [**get_whats_app_campaign**](WhatsAppCampaignsApi.md#get_whats_app_campaign) | **GET** /whatsappCampaigns/{campaignId} | Get a WhatsApp campaign |
| [**get_whats_app_campaigns**](WhatsAppCampaignsApi.md#get_whats_app_campaigns) | **GET** /whatsappCampaigns | Return all your created WhatsApp campaigns |
| [**get_whats_app_config**](WhatsAppCampaignsApi.md#get_whats_app_config) | **GET** /whatsappCampaigns/config | Get your WhatsApp API account information |
| [**get_whats_app_templates**](WhatsAppCampaignsApi.md#get_whats_app_templates) | **GET** /whatsappCampaigns/template-list | Return all your created WhatsApp templates |
| [**send_whats_app_template_approval**](WhatsAppCampaignsApi.md#send_whats_app_template_approval) | **POST** /whatsappCampaigns/template/approval/{templateId} | Send your WhatsApp template for approval |
| [**update_whats_app_campaign**](WhatsAppCampaignsApi.md#update_whats_app_campaign) | **PUT** /whatsappCampaigns/{campaignId} | Update a WhatsApp campaign |


## create_whats_app_campaign

> <CreateModel> create_whats_app_campaign(create_whats_app_campaign)

Create and Send a WhatsApp campaign

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

api_instance = Brevo::WhatsAppCampaignsApi.new
create_whats_app_campaign = Brevo::CreateWhatsAppCampaign.new({name: 'Test Campaign', template_id: 19, scheduled_at: '2017-06-01T12:30:00+02:00', recipients: Brevo::CreateWhatsAppCampaignRecipients.new}) # CreateWhatsAppCampaign | Values to create a WhatsApp Campaign

begin
  # Create and Send a WhatsApp campaign
  result = api_instance.create_whats_app_campaign(create_whats_app_campaign)
  p result
rescue Brevo::ApiError => e
  puts "Error when calling WhatsAppCampaignsApi->create_whats_app_campaign: #{e}"
end
```

#### Using the create_whats_app_campaign_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateModel>, Integer, Hash)> create_whats_app_campaign_with_http_info(create_whats_app_campaign)

```ruby
begin
  # Create and Send a WhatsApp campaign
  data, status_code, headers = api_instance.create_whats_app_campaign_with_http_info(create_whats_app_campaign)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateModel>
rescue Brevo::ApiError => e
  puts "Error when calling WhatsAppCampaignsApi->create_whats_app_campaign_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_whats_app_campaign** | [**CreateWhatsAppCampaign**](CreateWhatsAppCampaign.md) | Values to create a WhatsApp Campaign |  |

### Return type

[**CreateModel**](CreateModel.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_whats_app_template

> <CreateModel> create_whats_app_template(create_whats_app_template)

Create a WhatsApp template

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

api_instance = Brevo::WhatsAppCampaignsApi.new
create_whats_app_template = Brevo::CreateWhatsAppTemplate.new({name: 'Test template', language: 'en', category: 'MARKETING', body_text: 'making it look like readable English'}) # CreateWhatsAppTemplate | Values to create a WhatsApp template

begin
  # Create a WhatsApp template
  result = api_instance.create_whats_app_template(create_whats_app_template)
  p result
rescue Brevo::ApiError => e
  puts "Error when calling WhatsAppCampaignsApi->create_whats_app_template: #{e}"
end
```

#### Using the create_whats_app_template_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateModel>, Integer, Hash)> create_whats_app_template_with_http_info(create_whats_app_template)

```ruby
begin
  # Create a WhatsApp template
  data, status_code, headers = api_instance.create_whats_app_template_with_http_info(create_whats_app_template)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateModel>
rescue Brevo::ApiError => e
  puts "Error when calling WhatsAppCampaignsApi->create_whats_app_template_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_whats_app_template** | [**CreateWhatsAppTemplate**](CreateWhatsAppTemplate.md) | Values to create a WhatsApp template |  |

### Return type

[**CreateModel**](CreateModel.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_whats_app_campaign

> delete_whats_app_campaign(campaign_id)

Delete a WhatsApp campaign

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

api_instance = Brevo::WhatsAppCampaignsApi.new
campaign_id = 789 # Integer | id of the campaign

begin
  # Delete a WhatsApp campaign
  api_instance.delete_whats_app_campaign(campaign_id)
rescue Brevo::ApiError => e
  puts "Error when calling WhatsAppCampaignsApi->delete_whats_app_campaign: #{e}"
end
```

#### Using the delete_whats_app_campaign_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_whats_app_campaign_with_http_info(campaign_id)

```ruby
begin
  # Delete a WhatsApp campaign
  data, status_code, headers = api_instance.delete_whats_app_campaign_with_http_info(campaign_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Brevo::ApiError => e
  puts "Error when calling WhatsAppCampaignsApi->delete_whats_app_campaign_with_http_info: #{e}"
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


## get_whats_app_campaign

> <GetWhatsappCampaignOverview> get_whats_app_campaign(campaign_id)

Get a WhatsApp campaign

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

api_instance = Brevo::WhatsAppCampaignsApi.new
campaign_id = 789 # Integer | Id of the campaign

begin
  # Get a WhatsApp campaign
  result = api_instance.get_whats_app_campaign(campaign_id)
  p result
rescue Brevo::ApiError => e
  puts "Error when calling WhatsAppCampaignsApi->get_whats_app_campaign: #{e}"
end
```

#### Using the get_whats_app_campaign_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWhatsappCampaignOverview>, Integer, Hash)> get_whats_app_campaign_with_http_info(campaign_id)

```ruby
begin
  # Get a WhatsApp campaign
  data, status_code, headers = api_instance.get_whats_app_campaign_with_http_info(campaign_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWhatsappCampaignOverview>
rescue Brevo::ApiError => e
  puts "Error when calling WhatsAppCampaignsApi->get_whats_app_campaign_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_id** | **Integer** | Id of the campaign |  |

### Return type

[**GetWhatsappCampaignOverview**](GetWhatsappCampaignOverview.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_whats_app_campaigns

> <GetWhatsappCampaigns> get_whats_app_campaigns(opts)

Return all your created WhatsApp campaigns

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

api_instance = Brevo::WhatsAppCampaignsApi.new
opts = {
  start_date: 'start_date_example', # String | **Mandatory if endDate is used**. Starting (urlencoded) UTC date-time (YYYY-MM-DDTHH:mm:ss.SSSZ) to filter the WhatsApp campaigns created. **Prefer to pass your timezone in date-time format for accurate result** 
  end_date: 'end_date_example', # String | **Mandatory if startDate is used**. Ending (urlencoded) UTC date-time (YYYY-MM-DDTHH:mm:ss.SSSZ) to filter the WhatsApp campaigns created. **Prefer to pass your timezone in date-time format for accurate result** 
  limit: 789, # Integer | Number of documents per page
  offset: 789, # Integer | Index of the first document in the page
  sort: 'asc' # String | Sort the results in the ascending/descending order of record modification. Default order is **descending** if `sort` is not passed
}

begin
  # Return all your created WhatsApp campaigns
  result = api_instance.get_whats_app_campaigns(opts)
  p result
rescue Brevo::ApiError => e
  puts "Error when calling WhatsAppCampaignsApi->get_whats_app_campaigns: #{e}"
end
```

#### Using the get_whats_app_campaigns_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWhatsappCampaigns>, Integer, Hash)> get_whats_app_campaigns_with_http_info(opts)

```ruby
begin
  # Return all your created WhatsApp campaigns
  data, status_code, headers = api_instance.get_whats_app_campaigns_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWhatsappCampaigns>
rescue Brevo::ApiError => e
  puts "Error when calling WhatsAppCampaignsApi->get_whats_app_campaigns_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_date** | **String** | **Mandatory if endDate is used**. Starting (urlencoded) UTC date-time (YYYY-MM-DDTHH:mm:ss.SSSZ) to filter the WhatsApp campaigns created. **Prefer to pass your timezone in date-time format for accurate result**  | [optional] |
| **end_date** | **String** | **Mandatory if startDate is used**. Ending (urlencoded) UTC date-time (YYYY-MM-DDTHH:mm:ss.SSSZ) to filter the WhatsApp campaigns created. **Prefer to pass your timezone in date-time format for accurate result**  | [optional] |
| **limit** | **Integer** | Number of documents per page | [optional][default to 50] |
| **offset** | **Integer** | Index of the first document in the page | [optional][default to 0] |
| **sort** | **String** | Sort the results in the ascending/descending order of record modification. Default order is **descending** if &#x60;sort&#x60; is not passed | [optional][default to &#39;desc&#39;] |

### Return type

[**GetWhatsappCampaigns**](GetWhatsappCampaigns.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_whats_app_config

> <GetWhatsAppConfig> get_whats_app_config

Get your WhatsApp API account information

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

api_instance = Brevo::WhatsAppCampaignsApi.new

begin
  # Get your WhatsApp API account information
  result = api_instance.get_whats_app_config
  p result
rescue Brevo::ApiError => e
  puts "Error when calling WhatsAppCampaignsApi->get_whats_app_config: #{e}"
end
```

#### Using the get_whats_app_config_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWhatsAppConfig>, Integer, Hash)> get_whats_app_config_with_http_info

```ruby
begin
  # Get your WhatsApp API account information
  data, status_code, headers = api_instance.get_whats_app_config_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWhatsAppConfig>
rescue Brevo::ApiError => e
  puts "Error when calling WhatsAppCampaignsApi->get_whats_app_config_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**GetWhatsAppConfig**](GetWhatsAppConfig.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_whats_app_templates

> <GetWhatsappTemplates> get_whats_app_templates(opts)

Return all your created WhatsApp templates

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

api_instance = Brevo::WhatsAppCampaignsApi.new
opts = {
  start_date: 'start_date_example', # String | **Mandatory if endDate is used**. Starting (urlencoded) UTC date-time (YYYY-MM-DDTHH:mm:ss.SSSZ) to filter the templates created. **Prefer to pass your timezone in date-time format for accurate result** 
  end_date: 'end_date_example', # String | **Mandatory if startDate is used**. Ending (urlencoded) UTC date-time (YYYY-MM-DDTHH:mm:ss.SSSZ) to filter the templates created. **Prefer to pass your timezone in date-time format for accurate result** 
  limit: 789, # Integer | Number of documents per page
  offset: 789, # Integer | Index of the first document in the page
  sort: 'asc', # String | Sort the results in the ascending/descending order of record modification. Default order is **descending** if `sort` is not passed
  source: 'Automation' # String | source of the template
}

begin
  # Return all your created WhatsApp templates
  result = api_instance.get_whats_app_templates(opts)
  p result
rescue Brevo::ApiError => e
  puts "Error when calling WhatsAppCampaignsApi->get_whats_app_templates: #{e}"
end
```

#### Using the get_whats_app_templates_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWhatsappTemplates>, Integer, Hash)> get_whats_app_templates_with_http_info(opts)

```ruby
begin
  # Return all your created WhatsApp templates
  data, status_code, headers = api_instance.get_whats_app_templates_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWhatsappTemplates>
rescue Brevo::ApiError => e
  puts "Error when calling WhatsAppCampaignsApi->get_whats_app_templates_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_date** | **String** | **Mandatory if endDate is used**. Starting (urlencoded) UTC date-time (YYYY-MM-DDTHH:mm:ss.SSSZ) to filter the templates created. **Prefer to pass your timezone in date-time format for accurate result**  | [optional] |
| **end_date** | **String** | **Mandatory if startDate is used**. Ending (urlencoded) UTC date-time (YYYY-MM-DDTHH:mm:ss.SSSZ) to filter the templates created. **Prefer to pass your timezone in date-time format for accurate result**  | [optional] |
| **limit** | **Integer** | Number of documents per page | [optional][default to 50] |
| **offset** | **Integer** | Index of the first document in the page | [optional][default to 0] |
| **sort** | **String** | Sort the results in the ascending/descending order of record modification. Default order is **descending** if &#x60;sort&#x60; is not passed | [optional][default to &#39;desc&#39;] |
| **source** | **String** | source of the template | [optional] |

### Return type

[**GetWhatsappTemplates**](GetWhatsappTemplates.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## send_whats_app_template_approval

> send_whats_app_template_approval(template_id)

Send your WhatsApp template for approval

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

api_instance = Brevo::WhatsAppCampaignsApi.new
template_id = 789 # Integer | id of the template

begin
  # Send your WhatsApp template for approval
  api_instance.send_whats_app_template_approval(template_id)
rescue Brevo::ApiError => e
  puts "Error when calling WhatsAppCampaignsApi->send_whats_app_template_approval: #{e}"
end
```

#### Using the send_whats_app_template_approval_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> send_whats_app_template_approval_with_http_info(template_id)

```ruby
begin
  # Send your WhatsApp template for approval
  data, status_code, headers = api_instance.send_whats_app_template_approval_with_http_info(template_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Brevo::ApiError => e
  puts "Error when calling WhatsAppCampaignsApi->send_whats_app_template_approval_with_http_info: #{e}"
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


## update_whats_app_campaign

> update_whats_app_campaign(campaign_id, update_whats_app_campaign)

Update a WhatsApp campaign

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

api_instance = Brevo::WhatsAppCampaignsApi.new
campaign_id = 789 # Integer | id of the campaign
update_whats_app_campaign = Brevo::UpdateWhatsAppCampaign.new # UpdateWhatsAppCampaign | Values to update a WhatsApp Campaign

begin
  # Update a WhatsApp campaign
  api_instance.update_whats_app_campaign(campaign_id, update_whats_app_campaign)
rescue Brevo::ApiError => e
  puts "Error when calling WhatsAppCampaignsApi->update_whats_app_campaign: #{e}"
end
```

#### Using the update_whats_app_campaign_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_whats_app_campaign_with_http_info(campaign_id, update_whats_app_campaign)

```ruby
begin
  # Update a WhatsApp campaign
  data, status_code, headers = api_instance.update_whats_app_campaign_with_http_info(campaign_id, update_whats_app_campaign)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Brevo::ApiError => e
  puts "Error when calling WhatsAppCampaignsApi->update_whats_app_campaign_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_id** | **Integer** | id of the campaign |  |
| **update_whats_app_campaign** | [**UpdateWhatsAppCampaign**](UpdateWhatsAppCampaign.md) | Values to update a WhatsApp Campaign |  |

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

