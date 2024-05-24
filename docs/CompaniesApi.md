# Brevo::CompaniesApi

All URIs are relative to *https://api.brevo.com/v3*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**companies_attributes_get**](CompaniesApi.md#companies_attributes_get) | **GET** /companies/attributes | Get company attributes |
| [**companies_get**](CompaniesApi.md#companies_get) | **GET** /companies | Get all Companies |
| [**companies_id_delete**](CompaniesApi.md#companies_id_delete) | **DELETE** /companies/{id} | Delete a company |
| [**companies_id_get**](CompaniesApi.md#companies_id_get) | **GET** /companies/{id} | Get a company |
| [**companies_id_patch**](CompaniesApi.md#companies_id_patch) | **PATCH** /companies/{id} | Update a company |
| [**companies_link_unlink_id_patch**](CompaniesApi.md#companies_link_unlink_id_patch) | **PATCH** /companies/link-unlink/{id} | Link and Unlink company with contact and deal |
| [**companies_post**](CompaniesApi.md#companies_post) | **POST** /companies | Create a company |


## companies_attributes_get

> <Array<CompanyAttributesInner>> companies_attributes_get

Get company attributes

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

api_instance = Brevo::CompaniesApi.new

begin
  # Get company attributes
  result = api_instance.companies_attributes_get
  p result
rescue Brevo::ApiError => e
  puts "Error when calling CompaniesApi->companies_attributes_get: #{e}"
end
```

#### Using the companies_attributes_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<CompanyAttributesInner>>, Integer, Hash)> companies_attributes_get_with_http_info

```ruby
begin
  # Get company attributes
  data, status_code, headers = api_instance.companies_attributes_get_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<CompanyAttributesInner>>
rescue Brevo::ApiError => e
  puts "Error when calling CompaniesApi->companies_attributes_get_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;CompanyAttributesInner&gt;**](CompanyAttributesInner.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## companies_get

> <CompaniesList> companies_get(opts)

Get all Companies

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

api_instance = Brevo::CompaniesApi.new
opts = {
  filters: 'filters_example', # String | Filter by attrbutes. If you have filter for owner on your side please send it as {\"attributes.owner\":\"6299dcf3874a14eacbc65c46\"}
  linked_contacts_ids: 789, # Integer | Filter by linked contacts ids
  linked_deals_ids: 'linked_deals_ids_example', # String | Filter by linked Deals ids
  page: 789, # Integer | Index of the first document of the page
  limit: 789, # Integer | Number of documents per page
  sort: 'asc', # String | Sort the results in the ascending/descending order. Default order is **descending** by creation if `sort` is not passed
  sort_by: 'sort_by_example' # String | The field used to sort field names.
}

begin
  # Get all Companies
  result = api_instance.companies_get(opts)
  p result
rescue Brevo::ApiError => e
  puts "Error when calling CompaniesApi->companies_get: #{e}"
end
```

#### Using the companies_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CompaniesList>, Integer, Hash)> companies_get_with_http_info(opts)

```ruby
begin
  # Get all Companies
  data, status_code, headers = api_instance.companies_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CompaniesList>
rescue Brevo::ApiError => e
  puts "Error when calling CompaniesApi->companies_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filters** | **String** | Filter by attrbutes. If you have filter for owner on your side please send it as {\&quot;attributes.owner\&quot;:\&quot;6299dcf3874a14eacbc65c46\&quot;} | [optional] |
| **linked_contacts_ids** | **Integer** | Filter by linked contacts ids | [optional] |
| **linked_deals_ids** | **String** | Filter by linked Deals ids | [optional] |
| **page** | **Integer** | Index of the first document of the page | [optional] |
| **limit** | **Integer** | Number of documents per page | [optional] |
| **sort** | **String** | Sort the results in the ascending/descending order. Default order is **descending** by creation if &#x60;sort&#x60; is not passed | [optional] |
| **sort_by** | **String** | The field used to sort field names. | [optional] |

### Return type

[**CompaniesList**](CompaniesList.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## companies_id_delete

> companies_id_delete(id)

Delete a company

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

api_instance = Brevo::CompaniesApi.new
id = 'id_example' # String | Company ID to delete

begin
  # Delete a company
  api_instance.companies_id_delete(id)
rescue Brevo::ApiError => e
  puts "Error when calling CompaniesApi->companies_id_delete: #{e}"
end
```

#### Using the companies_id_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> companies_id_delete_with_http_info(id)

```ruby
begin
  # Delete a company
  data, status_code, headers = api_instance.companies_id_delete_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Brevo::ApiError => e
  puts "Error when calling CompaniesApi->companies_id_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Company ID to delete |  |

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## companies_id_get

> <Company> companies_id_get(id)

Get a company

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

api_instance = Brevo::CompaniesApi.new
id = 'id_example' # String | Get Company Details

begin
  # Get a company
  result = api_instance.companies_id_get(id)
  p result
rescue Brevo::ApiError => e
  puts "Error when calling CompaniesApi->companies_id_get: #{e}"
end
```

#### Using the companies_id_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Company>, Integer, Hash)> companies_id_get_with_http_info(id)

```ruby
begin
  # Get a company
  data, status_code, headers = api_instance.companies_id_get_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Company>
rescue Brevo::ApiError => e
  puts "Error when calling CompaniesApi->companies_id_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Get Company Details |  |

### Return type

[**Company**](Company.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## companies_id_patch

> <Company> companies_id_patch(id, companies_id_patch_request)

Update a company

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

api_instance = Brevo::CompaniesApi.new
id = 'id_example' # String | 
companies_id_patch_request = Brevo::CompaniesIdPatchRequest.new # CompaniesIdPatchRequest | Updated company details.

begin
  # Update a company
  result = api_instance.companies_id_patch(id, companies_id_patch_request)
  p result
rescue Brevo::ApiError => e
  puts "Error when calling CompaniesApi->companies_id_patch: #{e}"
end
```

#### Using the companies_id_patch_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Company>, Integer, Hash)> companies_id_patch_with_http_info(id, companies_id_patch_request)

```ruby
begin
  # Update a company
  data, status_code, headers = api_instance.companies_id_patch_with_http_info(id, companies_id_patch_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Company>
rescue Brevo::ApiError => e
  puts "Error when calling CompaniesApi->companies_id_patch_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **companies_id_patch_request** | [**CompaniesIdPatchRequest**](CompaniesIdPatchRequest.md) | Updated company details. |  |

### Return type

[**Company**](Company.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## companies_link_unlink_id_patch

> companies_link_unlink_id_patch(id, companies_link_unlink_id_patch_request)

Link and Unlink company with contact and deal

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

api_instance = Brevo::CompaniesApi.new
id = 'id_example' # String | 
companies_link_unlink_id_patch_request = Brevo::CompaniesLinkUnlinkIdPatchRequest.new # CompaniesLinkUnlinkIdPatchRequest | Linked / Unlinked contacts and deals ids.

begin
  # Link and Unlink company with contact and deal
  api_instance.companies_link_unlink_id_patch(id, companies_link_unlink_id_patch_request)
rescue Brevo::ApiError => e
  puts "Error when calling CompaniesApi->companies_link_unlink_id_patch: #{e}"
end
```

#### Using the companies_link_unlink_id_patch_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> companies_link_unlink_id_patch_with_http_info(id, companies_link_unlink_id_patch_request)

```ruby
begin
  # Link and Unlink company with contact and deal
  data, status_code, headers = api_instance.companies_link_unlink_id_patch_with_http_info(id, companies_link_unlink_id_patch_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Brevo::ApiError => e
  puts "Error when calling CompaniesApi->companies_link_unlink_id_patch_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **companies_link_unlink_id_patch_request** | [**CompaniesLinkUnlinkIdPatchRequest**](CompaniesLinkUnlinkIdPatchRequest.md) | Linked / Unlinked contacts and deals ids. |  |

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## companies_post

> <CompaniesPost200Response> companies_post(companies_post_request)

Create a company

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

api_instance = Brevo::CompaniesApi.new
companies_post_request = Brevo::CompaniesPostRequest.new({name: 'company'}) # CompaniesPostRequest | Company create data.

begin
  # Create a company
  result = api_instance.companies_post(companies_post_request)
  p result
rescue Brevo::ApiError => e
  puts "Error when calling CompaniesApi->companies_post: #{e}"
end
```

#### Using the companies_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CompaniesPost200Response>, Integer, Hash)> companies_post_with_http_info(companies_post_request)

```ruby
begin
  # Create a company
  data, status_code, headers = api_instance.companies_post_with_http_info(companies_post_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CompaniesPost200Response>
rescue Brevo::ApiError => e
  puts "Error when calling CompaniesApi->companies_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **companies_post_request** | [**CompaniesPostRequest**](CompaniesPostRequest.md) | Company create data. |  |

### Return type

[**CompaniesPost200Response**](CompaniesPost200Response.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

