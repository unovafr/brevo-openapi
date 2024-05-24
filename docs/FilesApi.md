# Brevo::FilesApi

All URIs are relative to *https://api.brevo.com/v3*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**crm_files_get**](FilesApi.md#crm_files_get) | **GET** /crm/files | Get all files |
| [**crm_files_id_data_get**](FilesApi.md#crm_files_id_data_get) | **GET** /crm/files/{id}/data | Get file details |
| [**crm_files_id_delete**](FilesApi.md#crm_files_id_delete) | **DELETE** /crm/files/{id} | Delete a file |
| [**crm_files_id_get**](FilesApi.md#crm_files_id_get) | **GET** /crm/files/{id} | Download a file |
| [**crm_files_post**](FilesApi.md#crm_files_post) | **POST** /crm/files | Upload a file |


## crm_files_get

> <Array<FileData>> crm_files_get(opts)

Get all files

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

api_instance = Brevo::FilesApi.new
opts = {
  entity: 'companies', # String | Filter by file entity type
  entity_ids: 'entity_ids_example', # String | Filter by file entity IDs
  date_from: 56, # Integer | dateFrom to date range filter type (timestamp in milliseconds)
  date_to: 56, # Integer | dateTo to date range filter type (timestamp in milliseconds)
  offset: 789, # Integer | Index of the first document of the page
  limit: 789, # Integer | Number of documents per page
  sort: 'asc' # String | Sort the results in the ascending/descending order. Default order is **descending** by creation if `sort` is not passed
}

begin
  # Get all files
  result = api_instance.crm_files_get(opts)
  p result
rescue Brevo::ApiError => e
  puts "Error when calling FilesApi->crm_files_get: #{e}"
end
```

#### Using the crm_files_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<FileData>>, Integer, Hash)> crm_files_get_with_http_info(opts)

```ruby
begin
  # Get all files
  data, status_code, headers = api_instance.crm_files_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<FileData>>
rescue Brevo::ApiError => e
  puts "Error when calling FilesApi->crm_files_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **entity** | **String** | Filter by file entity type | [optional] |
| **entity_ids** | **String** | Filter by file entity IDs | [optional] |
| **date_from** | **Integer** | dateFrom to date range filter type (timestamp in milliseconds) | [optional] |
| **date_to** | **Integer** | dateTo to date range filter type (timestamp in milliseconds) | [optional] |
| **offset** | **Integer** | Index of the first document of the page | [optional] |
| **limit** | **Integer** | Number of documents per page | [optional][default to 50] |
| **sort** | **String** | Sort the results in the ascending/descending order. Default order is **descending** by creation if &#x60;sort&#x60; is not passed | [optional] |

### Return type

[**Array&lt;FileData&gt;**](FileData.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## crm_files_id_data_get

> <FileData> crm_files_id_data_get(id)

Get file details

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

api_instance = Brevo::FilesApi.new
id = 'id_example' # String | File id to get file data.

begin
  # Get file details
  result = api_instance.crm_files_id_data_get(id)
  p result
rescue Brevo::ApiError => e
  puts "Error when calling FilesApi->crm_files_id_data_get: #{e}"
end
```

#### Using the crm_files_id_data_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FileData>, Integer, Hash)> crm_files_id_data_get_with_http_info(id)

```ruby
begin
  # Get file details
  data, status_code, headers = api_instance.crm_files_id_data_get_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FileData>
rescue Brevo::ApiError => e
  puts "Error when calling FilesApi->crm_files_id_data_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | File id to get file data. |  |

### Return type

[**FileData**](FileData.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## crm_files_id_delete

> crm_files_id_delete(id)

Delete a file

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

api_instance = Brevo::FilesApi.new
id = 'id_example' # String | File id to delete.

begin
  # Delete a file
  api_instance.crm_files_id_delete(id)
rescue Brevo::ApiError => e
  puts "Error when calling FilesApi->crm_files_id_delete: #{e}"
end
```

#### Using the crm_files_id_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> crm_files_id_delete_with_http_info(id)

```ruby
begin
  # Delete a file
  data, status_code, headers = api_instance.crm_files_id_delete_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Brevo::ApiError => e
  puts "Error when calling FilesApi->crm_files_id_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | File id to delete. |  |

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## crm_files_id_get

> <FileDownloadableLink> crm_files_id_get(id)

Download a file

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

api_instance = Brevo::FilesApi.new
id = 'id_example' # String | File id to download.

begin
  # Download a file
  result = api_instance.crm_files_id_get(id)
  p result
rescue Brevo::ApiError => e
  puts "Error when calling FilesApi->crm_files_id_get: #{e}"
end
```

#### Using the crm_files_id_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FileDownloadableLink>, Integer, Hash)> crm_files_id_get_with_http_info(id)

```ruby
begin
  # Download a file
  data, status_code, headers = api_instance.crm_files_id_get_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FileDownloadableLink>
rescue Brevo::ApiError => e
  puts "Error when calling FilesApi->crm_files_id_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | File id to download. |  |

### Return type

[**FileDownloadableLink**](FileDownloadableLink.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## crm_files_post

> <FileData> crm_files_post(file, opts)

Upload a file

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

api_instance = Brevo::FilesApi.new
file = File.new('/path/to/some/file') # File | File data to create a file.
opts = {
  deal_id: 'deal_id_example', # String | 
  contact_id: 789, # Integer | 
  company_id: 'company_id_example' # String | 
}

begin
  # Upload a file
  result = api_instance.crm_files_post(file, opts)
  p result
rescue Brevo::ApiError => e
  puts "Error when calling FilesApi->crm_files_post: #{e}"
end
```

#### Using the crm_files_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FileData>, Integer, Hash)> crm_files_post_with_http_info(file, opts)

```ruby
begin
  # Upload a file
  data, status_code, headers = api_instance.crm_files_post_with_http_info(file, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FileData>
rescue Brevo::ApiError => e
  puts "Error when calling FilesApi->crm_files_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file** | **File** | File data to create a file. |  |
| **deal_id** | **String** |  | [optional] |
| **contact_id** | **Integer** |  | [optional] |
| **company_id** | **String** |  | [optional] |

### Return type

[**FileData**](FileData.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: application/json

