# Brevo::WhatsAppCampaignsApi

All URIs are relative to *https://api.sendinblue.com/v3*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_whats_app_campaign**](WhatsAppCampaignsApi.md#delete_whats_app_campaign) | **DELETE** /whatsappCampaigns/{campaignId} | Delete a WhatsApp campaign |
| [**get_whats_app_campaign**](WhatsAppCampaignsApi.md#get_whats_app_campaign) | **GET** /whatsappCampaigns/{campaignId} | Get a WhatsApp campaign |
| [**get_whats_app_campaigns**](WhatsAppCampaignsApi.md#get_whats_app_campaigns) | **GET** /whatsappCampaigns | Return all your created WhatsApp campaigns |
| [**get_whats_app_templates**](WhatsAppCampaignsApi.md#get_whats_app_templates) | **GET** /whatsappCampaigns/template-list | Return all your created WhatsApp templates |


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
  start_date: 'start_date_example', # String | **Mandatory if endDate is used**. Starting (urlencoded) UTC date-time (YYYY-MM-DDTHH:mm:ss.SSSZ) to filter the campaigns created. **Prefer to pass your timezone in date-time format for accurate result** 
  end_date: 'end_date_example', # String | **Mandatory if startDate is used**. Ending (urlencoded) UTC date-time (YYYY-MM-DDTHH:mm:ss.SSSZ) to filter the campaigns created. **Prefer to pass your timezone in date-time format for accurate result** 
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
| **start_date** | **String** | **Mandatory if endDate is used**. Starting (urlencoded) UTC date-time (YYYY-MM-DDTHH:mm:ss.SSSZ) to filter the campaigns created. **Prefer to pass your timezone in date-time format for accurate result**  | [optional] |
| **end_date** | **String** | **Mandatory if startDate is used**. Ending (urlencoded) UTC date-time (YYYY-MM-DDTHH:mm:ss.SSSZ) to filter the campaigns created. **Prefer to pass your timezone in date-time format for accurate result**  | [optional] |
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


## get_whats_app_templates

> <GetWATemplates> get_whats_app_templates(opts)

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
  sort: 'asc' # String | Sort the results in the ascending/descending order of record modification. Default order is **descending** if `sort` is not passed
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

> <Array(<GetWATemplates>, Integer, Hash)> get_whats_app_templates_with_http_info(opts)

```ruby
begin
  # Return all your created WhatsApp templates
  data, status_code, headers = api_instance.get_whats_app_templates_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWATemplates>
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

### Return type

[**GetWATemplates**](GetWATemplates.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

