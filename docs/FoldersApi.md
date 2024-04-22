# Brevo::FoldersApi

All URIs are relative to *https://api.sendinblue.com/v3*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_folder**](FoldersApi.md#create_folder) | **POST** /contacts/folders | Create a folder |
| [**delete_folder**](FoldersApi.md#delete_folder) | **DELETE** /contacts/folders/{folderId} | Delete a folder (and all its lists) |
| [**get_folder**](FoldersApi.md#get_folder) | **GET** /contacts/folders/{folderId} | Returns a folder&#39;s details |
| [**get_folder_lists**](FoldersApi.md#get_folder_lists) | **GET** /contacts/folders/{folderId}/lists | Get lists in a folder |
| [**get_folders**](FoldersApi.md#get_folders) | **GET** /contacts/folders | Get all folders |
| [**update_folder**](FoldersApi.md#update_folder) | **PUT** /contacts/folders/{folderId} | Update a folder |


## create_folder

> <CreateModel> create_folder(create_folder)

Create a folder

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

api_instance = Brevo::FoldersApi.new
create_folder = Brevo::CreateUpdateFolder.new # CreateUpdateFolder | Name of the folder

begin
  # Create a folder
  result = api_instance.create_folder(create_folder)
  p result
rescue Brevo::ApiError => e
  puts "Error when calling FoldersApi->create_folder: #{e}"
end
```

#### Using the create_folder_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateModel>, Integer, Hash)> create_folder_with_http_info(create_folder)

```ruby
begin
  # Create a folder
  data, status_code, headers = api_instance.create_folder_with_http_info(create_folder)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateModel>
rescue Brevo::ApiError => e
  puts "Error when calling FoldersApi->create_folder_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_folder** | [**CreateUpdateFolder**](CreateUpdateFolder.md) | Name of the folder |  |

### Return type

[**CreateModel**](CreateModel.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_folder

> delete_folder(folder_id)

Delete a folder (and all its lists)

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

api_instance = Brevo::FoldersApi.new
folder_id = 789 # Integer | Id of the folder

begin
  # Delete a folder (and all its lists)
  api_instance.delete_folder(folder_id)
rescue Brevo::ApiError => e
  puts "Error when calling FoldersApi->delete_folder: #{e}"
end
```

#### Using the delete_folder_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_folder_with_http_info(folder_id)

```ruby
begin
  # Delete a folder (and all its lists)
  data, status_code, headers = api_instance.delete_folder_with_http_info(folder_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Brevo::ApiError => e
  puts "Error when calling FoldersApi->delete_folder_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **folder_id** | **Integer** | Id of the folder |  |

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_folder

> <GetFolder> get_folder(folder_id)

Returns a folder's details

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

api_instance = Brevo::FoldersApi.new
folder_id = 789 # Integer | id of the folder

begin
  # Returns a folder's details
  result = api_instance.get_folder(folder_id)
  p result
rescue Brevo::ApiError => e
  puts "Error when calling FoldersApi->get_folder: #{e}"
end
```

#### Using the get_folder_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetFolder>, Integer, Hash)> get_folder_with_http_info(folder_id)

```ruby
begin
  # Returns a folder's details
  data, status_code, headers = api_instance.get_folder_with_http_info(folder_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetFolder>
rescue Brevo::ApiError => e
  puts "Error when calling FoldersApi->get_folder_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **folder_id** | **Integer** | id of the folder |  |

### Return type

[**GetFolder**](GetFolder.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_folder_lists

> <GetFolderLists> get_folder_lists(folder_id, opts)

Get lists in a folder

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

api_instance = Brevo::FoldersApi.new
folder_id = 789 # Integer | Id of the folder
opts = {
  limit: 789, # Integer | Number of documents per page
  offset: 789, # Integer | Index of the first document of the page
  sort: 'asc' # String | Sort the results in the ascending/descending order of record creation
}

begin
  # Get lists in a folder
  result = api_instance.get_folder_lists(folder_id, opts)
  p result
rescue Brevo::ApiError => e
  puts "Error when calling FoldersApi->get_folder_lists: #{e}"
end
```

#### Using the get_folder_lists_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetFolderLists>, Integer, Hash)> get_folder_lists_with_http_info(folder_id, opts)

```ruby
begin
  # Get lists in a folder
  data, status_code, headers = api_instance.get_folder_lists_with_http_info(folder_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetFolderLists>
rescue Brevo::ApiError => e
  puts "Error when calling FoldersApi->get_folder_lists_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **folder_id** | **Integer** | Id of the folder |  |
| **limit** | **Integer** | Number of documents per page | [optional][default to 10] |
| **offset** | **Integer** | Index of the first document of the page | [optional][default to 0] |
| **sort** | **String** | Sort the results in the ascending/descending order of record creation | [optional][default to &#39;desc&#39;] |

### Return type

[**GetFolderLists**](GetFolderLists.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_folders

> <GetFolders> get_folders(limit, offset, opts)

Get all folders

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

api_instance = Brevo::FoldersApi.new
limit = 789 # Integer | Number of documents per page
offset = 789 # Integer | Index of the first document of the page
opts = {
  sort: 'asc' # String | Sort the results in the ascending/descending order of record creation
}

begin
  # Get all folders
  result = api_instance.get_folders(limit, offset, opts)
  p result
rescue Brevo::ApiError => e
  puts "Error when calling FoldersApi->get_folders: #{e}"
end
```

#### Using the get_folders_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetFolders>, Integer, Hash)> get_folders_with_http_info(limit, offset, opts)

```ruby
begin
  # Get all folders
  data, status_code, headers = api_instance.get_folders_with_http_info(limit, offset, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetFolders>
rescue Brevo::ApiError => e
  puts "Error when calling FoldersApi->get_folders_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | Number of documents per page | [default to 10] |
| **offset** | **Integer** | Index of the first document of the page | [default to 0] |
| **sort** | **String** | Sort the results in the ascending/descending order of record creation | [optional][default to &#39;desc&#39;] |

### Return type

[**GetFolders**](GetFolders.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_folder

> update_folder(folder_id, update_folder)

Update a folder

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

api_instance = Brevo::FoldersApi.new
folder_id = 789 # Integer | Id of the folder
update_folder = Brevo::CreateUpdateFolder.new # CreateUpdateFolder | Name of the folder

begin
  # Update a folder
  api_instance.update_folder(folder_id, update_folder)
rescue Brevo::ApiError => e
  puts "Error when calling FoldersApi->update_folder: #{e}"
end
```

#### Using the update_folder_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_folder_with_http_info(folder_id, update_folder)

```ruby
begin
  # Update a folder
  data, status_code, headers = api_instance.update_folder_with_http_info(folder_id, update_folder)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Brevo::ApiError => e
  puts "Error when calling FoldersApi->update_folder_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **folder_id** | **Integer** | Id of the folder |  |
| **update_folder** | [**CreateUpdateFolder**](CreateUpdateFolder.md) | Name of the folder |  |

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

