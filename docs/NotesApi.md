# Brevo::NotesApi

All URIs are relative to *https://api.brevo.com/v3*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**crm_notes_get**](NotesApi.md#crm_notes_get) | **GET** /crm/notes | Get all notes |
| [**crm_notes_id_delete**](NotesApi.md#crm_notes_id_delete) | **DELETE** /crm/notes/{id} | Delete a note |
| [**crm_notes_id_get**](NotesApi.md#crm_notes_id_get) | **GET** /crm/notes/{id} | Get a note |
| [**crm_notes_id_patch**](NotesApi.md#crm_notes_id_patch) | **PATCH** /crm/notes/{id} | Update a note |
| [**crm_notes_post**](NotesApi.md#crm_notes_post) | **POST** /crm/notes | Create a note |


## crm_notes_get

> <Array<Note>> crm_notes_get(opts)

Get all notes

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

api_instance = Brevo::NotesApi.new
opts = {
  entity: 'companies', # String | Filter by note entity type
  entity_ids: 'entity_ids_example', # String | Filter by note entity IDs
  date_from: 56, # Integer | dateFrom to date range filter type (timestamp in milliseconds)
  date_to: 56, # Integer | dateTo to date range filter type (timestamp in milliseconds)
  offset: 789, # Integer | Index of the first document of the page
  limit: 789, # Integer | Number of documents per page
  sort: 'asc' # String | Sort the results in the ascending/descending order. Default order is **descending** by creation if `sort` is not passed
}

begin
  # Get all notes
  result = api_instance.crm_notes_get(opts)
  p result
rescue Brevo::ApiError => e
  puts "Error when calling NotesApi->crm_notes_get: #{e}"
end
```

#### Using the crm_notes_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Note>>, Integer, Hash)> crm_notes_get_with_http_info(opts)

```ruby
begin
  # Get all notes
  data, status_code, headers = api_instance.crm_notes_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Note>>
rescue Brevo::ApiError => e
  puts "Error when calling NotesApi->crm_notes_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **entity** | **String** | Filter by note entity type | [optional] |
| **entity_ids** | **String** | Filter by note entity IDs | [optional] |
| **date_from** | **Integer** | dateFrom to date range filter type (timestamp in milliseconds) | [optional] |
| **date_to** | **Integer** | dateTo to date range filter type (timestamp in milliseconds) | [optional] |
| **offset** | **Integer** | Index of the first document of the page | [optional] |
| **limit** | **Integer** | Number of documents per page | [optional][default to 50] |
| **sort** | **String** | Sort the results in the ascending/descending order. Default order is **descending** by creation if &#x60;sort&#x60; is not passed | [optional] |

### Return type

[**Array&lt;Note&gt;**](Note.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## crm_notes_id_delete

> crm_notes_id_delete(id)

Delete a note

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

api_instance = Brevo::NotesApi.new
id = 'id_example' # String | Note ID to delete

begin
  # Delete a note
  api_instance.crm_notes_id_delete(id)
rescue Brevo::ApiError => e
  puts "Error when calling NotesApi->crm_notes_id_delete: #{e}"
end
```

#### Using the crm_notes_id_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> crm_notes_id_delete_with_http_info(id)

```ruby
begin
  # Delete a note
  data, status_code, headers = api_instance.crm_notes_id_delete_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Brevo::ApiError => e
  puts "Error when calling NotesApi->crm_notes_id_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Note ID to delete |  |

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## crm_notes_id_get

> <Note> crm_notes_id_get(id)

Get a note

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

api_instance = Brevo::NotesApi.new
id = 'id_example' # String | Note ID to get

begin
  # Get a note
  result = api_instance.crm_notes_id_get(id)
  p result
rescue Brevo::ApiError => e
  puts "Error when calling NotesApi->crm_notes_id_get: #{e}"
end
```

#### Using the crm_notes_id_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Note>, Integer, Hash)> crm_notes_id_get_with_http_info(id)

```ruby
begin
  # Get a note
  data, status_code, headers = api_instance.crm_notes_id_get_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Note>
rescue Brevo::ApiError => e
  puts "Error when calling NotesApi->crm_notes_id_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Note ID to get |  |

### Return type

[**Note**](Note.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## crm_notes_id_patch

> crm_notes_id_patch(id, note_data)

Update a note

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

api_instance = Brevo::NotesApi.new
id = 'id_example' # String | Note ID to update
note_data = Brevo::NoteData.new({text: 'In communication with client for resolution of queries.'}) # NoteData | Note data to update a note.

begin
  # Update a note
  api_instance.crm_notes_id_patch(id, note_data)
rescue Brevo::ApiError => e
  puts "Error when calling NotesApi->crm_notes_id_patch: #{e}"
end
```

#### Using the crm_notes_id_patch_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> crm_notes_id_patch_with_http_info(id, note_data)

```ruby
begin
  # Update a note
  data, status_code, headers = api_instance.crm_notes_id_patch_with_http_info(id, note_data)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Brevo::ApiError => e
  puts "Error when calling NotesApi->crm_notes_id_patch_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Note ID to update |  |
| **note_data** | [**NoteData**](NoteData.md) | Note data to update a note. |  |

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## crm_notes_post

> <NoteId> crm_notes_post(note_data)

Create a note

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

api_instance = Brevo::NotesApi.new
note_data = Brevo::NoteData.new({text: 'In communication with client for resolution of queries.'}) # NoteData | Note data to create a note.

begin
  # Create a note
  result = api_instance.crm_notes_post(note_data)
  p result
rescue Brevo::ApiError => e
  puts "Error when calling NotesApi->crm_notes_post: #{e}"
end
```

#### Using the crm_notes_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NoteId>, Integer, Hash)> crm_notes_post_with_http_info(note_data)

```ruby
begin
  # Create a note
  data, status_code, headers = api_instance.crm_notes_post_with_http_info(note_data)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NoteId>
rescue Brevo::ApiError => e
  puts "Error when calling NotesApi->crm_notes_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **note_data** | [**NoteData**](NoteData.md) | Note data to create a note. |  |

### Return type

[**NoteId**](NoteId.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

