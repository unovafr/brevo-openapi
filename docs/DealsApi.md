# Brevo::DealsApi

All URIs are relative to *https://api.brevo.com/v3*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**crm_attributes_deals_get**](DealsApi.md#crm_attributes_deals_get) | **GET** /crm/attributes/deals | Get deal attributes |
| [**crm_deals_get**](DealsApi.md#crm_deals_get) | **GET** /crm/deals | Get all deals |
| [**crm_deals_id_delete**](DealsApi.md#crm_deals_id_delete) | **DELETE** /crm/deals/{id} | Delete a deal |
| [**crm_deals_id_get**](DealsApi.md#crm_deals_id_get) | **GET** /crm/deals/{id} | Get a deal |
| [**crm_deals_id_patch**](DealsApi.md#crm_deals_id_patch) | **PATCH** /crm/deals/{id} | Update a deal |
| [**crm_deals_link_unlink_id_patch**](DealsApi.md#crm_deals_link_unlink_id_patch) | **PATCH** /crm/deals/link-unlink/{id} | Link and Unlink a deal with contacts and companies |
| [**crm_deals_post**](DealsApi.md#crm_deals_post) | **POST** /crm/deals | Create a deal |
| [**crm_pipeline_details_all_get**](DealsApi.md#crm_pipeline_details_all_get) | **GET** /crm/pipeline/details/all | Get all pipelines |
| [**crm_pipeline_details_get**](DealsApi.md#crm_pipeline_details_get) | **GET** /crm/pipeline/details | Get pipeline stages |
| [**crm_pipeline_details_pipeline_id_get**](DealsApi.md#crm_pipeline_details_pipeline_id_get) | **GET** /crm/pipeline/details/{pipelineID} | Get a pipeline |


## crm_attributes_deals_get

> <Array<DealAttributesInner>> crm_attributes_deals_get

Get deal attributes

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

api_instance = Brevo::DealsApi.new

begin
  # Get deal attributes
  result = api_instance.crm_attributes_deals_get
  p result
rescue Brevo::ApiError => e
  puts "Error when calling DealsApi->crm_attributes_deals_get: #{e}"
end
```

#### Using the crm_attributes_deals_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<DealAttributesInner>>, Integer, Hash)> crm_attributes_deals_get_with_http_info

```ruby
begin
  # Get deal attributes
  data, status_code, headers = api_instance.crm_attributes_deals_get_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<DealAttributesInner>>
rescue Brevo::ApiError => e
  puts "Error when calling DealsApi->crm_attributes_deals_get_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;DealAttributesInner&gt;**](DealAttributesInner.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## crm_deals_get

> <DealsList> crm_deals_get(opts)

Get all deals

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

api_instance = Brevo::DealsApi.new
opts = {
  filters_attributes_deal_name: 'filters_attributes_deal_name_example', # String | Filter by attributes. If you have a filter for the owner on your end, please send it as filters[attributes.deal_owner] and utilize the account email for the filtering.
  filters_linked_companies_ids: 'filters_linked_companies_ids_example', # String | Filter by linked companies ids
  filters_linked_contacts_ids: 'filters_linked_contacts_ids_example', # String | Filter by linked companies ids
  offset: 789, # Integer | Index of the first document of the page
  limit: 789, # Integer | Number of documents per page
  sort: 'asc' # String | Sort the results in the ascending/descending order. Default order is **descending** by creation if `sort` is not passed
}

begin
  # Get all deals
  result = api_instance.crm_deals_get(opts)
  p result
rescue Brevo::ApiError => e
  puts "Error when calling DealsApi->crm_deals_get: #{e}"
end
```

#### Using the crm_deals_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DealsList>, Integer, Hash)> crm_deals_get_with_http_info(opts)

```ruby
begin
  # Get all deals
  data, status_code, headers = api_instance.crm_deals_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DealsList>
rescue Brevo::ApiError => e
  puts "Error when calling DealsApi->crm_deals_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filters_attributes_deal_name** | **String** | Filter by attributes. If you have a filter for the owner on your end, please send it as filters[attributes.deal_owner] and utilize the account email for the filtering. | [optional] |
| **filters_linked_companies_ids** | **String** | Filter by linked companies ids | [optional] |
| **filters_linked_contacts_ids** | **String** | Filter by linked companies ids | [optional] |
| **offset** | **Integer** | Index of the first document of the page | [optional] |
| **limit** | **Integer** | Number of documents per page | [optional] |
| **sort** | **String** | Sort the results in the ascending/descending order. Default order is **descending** by creation if &#x60;sort&#x60; is not passed | [optional] |

### Return type

[**DealsList**](DealsList.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## crm_deals_id_delete

> crm_deals_id_delete(id)

Delete a deal

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

api_instance = Brevo::DealsApi.new
id = 'id_example' # String | 

begin
  # Delete a deal
  api_instance.crm_deals_id_delete(id)
rescue Brevo::ApiError => e
  puts "Error when calling DealsApi->crm_deals_id_delete: #{e}"
end
```

#### Using the crm_deals_id_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> crm_deals_id_delete_with_http_info(id)

```ruby
begin
  # Delete a deal
  data, status_code, headers = api_instance.crm_deals_id_delete_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Brevo::ApiError => e
  puts "Error when calling DealsApi->crm_deals_id_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## crm_deals_id_get

> <Deal> crm_deals_id_get(id)

Get a deal

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

api_instance = Brevo::DealsApi.new
id = 'id_example' # String | 

begin
  # Get a deal
  result = api_instance.crm_deals_id_get(id)
  p result
rescue Brevo::ApiError => e
  puts "Error when calling DealsApi->crm_deals_id_get: #{e}"
end
```

#### Using the crm_deals_id_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Deal>, Integer, Hash)> crm_deals_id_get_with_http_info(id)

```ruby
begin
  # Get a deal
  data, status_code, headers = api_instance.crm_deals_id_get_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Deal>
rescue Brevo::ApiError => e
  puts "Error when calling DealsApi->crm_deals_id_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

[**Deal**](Deal.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## crm_deals_id_patch

> crm_deals_id_patch(id, crm_deals_id_patch_request)

Update a deal

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

api_instance = Brevo::DealsApi.new
id = 'id_example' # String | 
crm_deals_id_patch_request = Brevo::CrmDealsIdPatchRequest.new # CrmDealsIdPatchRequest | Updated deal details.

begin
  # Update a deal
  api_instance.crm_deals_id_patch(id, crm_deals_id_patch_request)
rescue Brevo::ApiError => e
  puts "Error when calling DealsApi->crm_deals_id_patch: #{e}"
end
```

#### Using the crm_deals_id_patch_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> crm_deals_id_patch_with_http_info(id, crm_deals_id_patch_request)

```ruby
begin
  # Update a deal
  data, status_code, headers = api_instance.crm_deals_id_patch_with_http_info(id, crm_deals_id_patch_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Brevo::ApiError => e
  puts "Error when calling DealsApi->crm_deals_id_patch_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **crm_deals_id_patch_request** | [**CrmDealsIdPatchRequest**](CrmDealsIdPatchRequest.md) | Updated deal details. |  |

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## crm_deals_link_unlink_id_patch

> crm_deals_link_unlink_id_patch(id, crm_deals_link_unlink_id_patch_request)

Link and Unlink a deal with contacts and companies

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

api_instance = Brevo::DealsApi.new
id = 'id_example' # String | 
crm_deals_link_unlink_id_patch_request = Brevo::CrmDealsLinkUnlinkIdPatchRequest.new # CrmDealsLinkUnlinkIdPatchRequest | Linked / Unlinked contacts and companies ids.

begin
  # Link and Unlink a deal with contacts and companies
  api_instance.crm_deals_link_unlink_id_patch(id, crm_deals_link_unlink_id_patch_request)
rescue Brevo::ApiError => e
  puts "Error when calling DealsApi->crm_deals_link_unlink_id_patch: #{e}"
end
```

#### Using the crm_deals_link_unlink_id_patch_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> crm_deals_link_unlink_id_patch_with_http_info(id, crm_deals_link_unlink_id_patch_request)

```ruby
begin
  # Link and Unlink a deal with contacts and companies
  data, status_code, headers = api_instance.crm_deals_link_unlink_id_patch_with_http_info(id, crm_deals_link_unlink_id_patch_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Brevo::ApiError => e
  puts "Error when calling DealsApi->crm_deals_link_unlink_id_patch_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **crm_deals_link_unlink_id_patch_request** | [**CrmDealsLinkUnlinkIdPatchRequest**](CrmDealsLinkUnlinkIdPatchRequest.md) | Linked / Unlinked contacts and companies ids. |  |

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## crm_deals_post

> <CrmDealsPost201Response> crm_deals_post(crm_deals_post_request)

Create a deal

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

api_instance = Brevo::DealsApi.new
crm_deals_post_request = Brevo::CrmDealsPostRequest.new({name: 'Deal: Connect with company'}) # CrmDealsPostRequest | Deal create data.

begin
  # Create a deal
  result = api_instance.crm_deals_post(crm_deals_post_request)
  p result
rescue Brevo::ApiError => e
  puts "Error when calling DealsApi->crm_deals_post: #{e}"
end
```

#### Using the crm_deals_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CrmDealsPost201Response>, Integer, Hash)> crm_deals_post_with_http_info(crm_deals_post_request)

```ruby
begin
  # Create a deal
  data, status_code, headers = api_instance.crm_deals_post_with_http_info(crm_deals_post_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CrmDealsPost201Response>
rescue Brevo::ApiError => e
  puts "Error when calling DealsApi->crm_deals_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **crm_deals_post_request** | [**CrmDealsPostRequest**](CrmDealsPostRequest.md) | Deal create data. |  |

### Return type

[**CrmDealsPost201Response**](CrmDealsPost201Response.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## crm_pipeline_details_all_get

> <Array<Pipeline>> crm_pipeline_details_all_get

Get all pipelines

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

api_instance = Brevo::DealsApi.new

begin
  # Get all pipelines
  result = api_instance.crm_pipeline_details_all_get
  p result
rescue Brevo::ApiError => e
  puts "Error when calling DealsApi->crm_pipeline_details_all_get: #{e}"
end
```

#### Using the crm_pipeline_details_all_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Pipeline>>, Integer, Hash)> crm_pipeline_details_all_get_with_http_info

```ruby
begin
  # Get all pipelines
  data, status_code, headers = api_instance.crm_pipeline_details_all_get_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Pipeline>>
rescue Brevo::ApiError => e
  puts "Error when calling DealsApi->crm_pipeline_details_all_get_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;Pipeline&gt;**](Pipeline.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## crm_pipeline_details_get

> <Pipeline> crm_pipeline_details_get

Get pipeline stages

This endpoint is deprecated. Prefer /crm/pipeline/details/{pipelineID} instead.

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

api_instance = Brevo::DealsApi.new

begin
  # Get pipeline stages
  result = api_instance.crm_pipeline_details_get
  p result
rescue Brevo::ApiError => e
  puts "Error when calling DealsApi->crm_pipeline_details_get: #{e}"
end
```

#### Using the crm_pipeline_details_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Pipeline>, Integer, Hash)> crm_pipeline_details_get_with_http_info

```ruby
begin
  # Get pipeline stages
  data, status_code, headers = api_instance.crm_pipeline_details_get_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Pipeline>
rescue Brevo::ApiError => e
  puts "Error when calling DealsApi->crm_pipeline_details_get_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Pipeline**](Pipeline.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## crm_pipeline_details_pipeline_id_get

> <Array<Pipeline>> crm_pipeline_details_pipeline_id_get(pipeline_id)

Get a pipeline

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

api_instance = Brevo::DealsApi.new
pipeline_id = 'pipeline_id_example' # String | 

begin
  # Get a pipeline
  result = api_instance.crm_pipeline_details_pipeline_id_get(pipeline_id)
  p result
rescue Brevo::ApiError => e
  puts "Error when calling DealsApi->crm_pipeline_details_pipeline_id_get: #{e}"
end
```

#### Using the crm_pipeline_details_pipeline_id_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Pipeline>>, Integer, Hash)> crm_pipeline_details_pipeline_id_get_with_http_info(pipeline_id)

```ruby
begin
  # Get a pipeline
  data, status_code, headers = api_instance.crm_pipeline_details_pipeline_id_get_with_http_info(pipeline_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Pipeline>>
rescue Brevo::ApiError => e
  puts "Error when calling DealsApi->crm_pipeline_details_pipeline_id_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pipeline_id** | **String** |  |  |

### Return type

[**Array&lt;Pipeline&gt;**](Pipeline.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

