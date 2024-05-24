# Brevo::TasksApi

All URIs are relative to *https://api.brevo.com/v3*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**crm_tasks_get**](TasksApi.md#crm_tasks_get) | **GET** /crm/tasks | Get all tasks |
| [**crm_tasks_id_delete**](TasksApi.md#crm_tasks_id_delete) | **DELETE** /crm/tasks/{id} | Delete a task |
| [**crm_tasks_id_get**](TasksApi.md#crm_tasks_id_get) | **GET** /crm/tasks/{id} | Get a task |
| [**crm_tasks_id_patch**](TasksApi.md#crm_tasks_id_patch) | **PATCH** /crm/tasks/{id} | Update a task |
| [**crm_tasks_post**](TasksApi.md#crm_tasks_post) | **POST** /crm/tasks | Create a task |
| [**crm_tasktypes_get**](TasksApi.md#crm_tasktypes_get) | **GET** /crm/tasktypes | Get all task types |


## crm_tasks_get

> <TaskList> crm_tasks_get(opts)

Get all tasks

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

api_instance = Brevo::TasksApi.new
opts = {
  filter_type: 'filter_type_example', # String | Filter by task type (ID)
  filter_status: 'done', # String | Filter by task status
  filter_date: 'overdue', # String | Filter by date
  filter_assign_to: 'filter_assign_to_example', # String | Filter by the \"assignTo\" ID. You can utilize account emails for the \"assignTo\" attribute.
  filter_contacts: 'filter_contacts_example', # String | Filter by contact ids
  filter_deals: 'filter_deals_example', # String | Filter by deals ids
  filter_companies: 'filter_companies_example', # String | Filter by companies ids
  date_from: 56, # Integer | dateFrom to date range filter type (timestamp in milliseconds)
  date_to: 56, # Integer | dateTo to date range filter type (timestamp in milliseconds)
  offset: 789, # Integer | Index of the first document of the page
  limit: 789, # Integer | Number of documents per page
  sort: 'asc', # String | Sort the results in the ascending/descending order. Default order is **descending** by creation if `sort` is not passed
  sort_by: 'name' # String | The field used to sort field names.
}

begin
  # Get all tasks
  result = api_instance.crm_tasks_get(opts)
  p result
rescue Brevo::ApiError => e
  puts "Error when calling TasksApi->crm_tasks_get: #{e}"
end
```

#### Using the crm_tasks_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TaskList>, Integer, Hash)> crm_tasks_get_with_http_info(opts)

```ruby
begin
  # Get all tasks
  data, status_code, headers = api_instance.crm_tasks_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TaskList>
rescue Brevo::ApiError => e
  puts "Error when calling TasksApi->crm_tasks_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter_type** | **String** | Filter by task type (ID) | [optional] |
| **filter_status** | **String** | Filter by task status | [optional] |
| **filter_date** | **String** | Filter by date | [optional] |
| **filter_assign_to** | **String** | Filter by the \&quot;assignTo\&quot; ID. You can utilize account emails for the \&quot;assignTo\&quot; attribute. | [optional] |
| **filter_contacts** | **String** | Filter by contact ids | [optional] |
| **filter_deals** | **String** | Filter by deals ids | [optional] |
| **filter_companies** | **String** | Filter by companies ids | [optional] |
| **date_from** | **Integer** | dateFrom to date range filter type (timestamp in milliseconds) | [optional] |
| **date_to** | **Integer** | dateTo to date range filter type (timestamp in milliseconds) | [optional] |
| **offset** | **Integer** | Index of the first document of the page | [optional] |
| **limit** | **Integer** | Number of documents per page | [optional][default to 50] |
| **sort** | **String** | Sort the results in the ascending/descending order. Default order is **descending** by creation if &#x60;sort&#x60; is not passed | [optional] |
| **sort_by** | **String** | The field used to sort field names. | [optional] |

### Return type

[**TaskList**](TaskList.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## crm_tasks_id_delete

> crm_tasks_id_delete(id)

Delete a task

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

api_instance = Brevo::TasksApi.new
id = 'id_example' # String | 

begin
  # Delete a task
  api_instance.crm_tasks_id_delete(id)
rescue Brevo::ApiError => e
  puts "Error when calling TasksApi->crm_tasks_id_delete: #{e}"
end
```

#### Using the crm_tasks_id_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> crm_tasks_id_delete_with_http_info(id)

```ruby
begin
  # Delete a task
  data, status_code, headers = api_instance.crm_tasks_id_delete_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Brevo::ApiError => e
  puts "Error when calling TasksApi->crm_tasks_id_delete_with_http_info: #{e}"
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


## crm_tasks_id_get

> <Task> crm_tasks_id_get(id)

Get a task

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

api_instance = Brevo::TasksApi.new
id = 'id_example' # String | 

begin
  # Get a task
  result = api_instance.crm_tasks_id_get(id)
  p result
rescue Brevo::ApiError => e
  puts "Error when calling TasksApi->crm_tasks_id_get: #{e}"
end
```

#### Using the crm_tasks_id_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Task>, Integer, Hash)> crm_tasks_id_get_with_http_info(id)

```ruby
begin
  # Get a task
  data, status_code, headers = api_instance.crm_tasks_id_get_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Task>
rescue Brevo::ApiError => e
  puts "Error when calling TasksApi->crm_tasks_id_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

[**Task**](Task.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## crm_tasks_id_patch

> crm_tasks_id_patch(id, crm_tasks_id_patch_request)

Update a task

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

api_instance = Brevo::TasksApi.new
id = 'id_example' # String | 
crm_tasks_id_patch_request = Brevo::CrmTasksIdPatchRequest.new # CrmTasksIdPatchRequest | Updated task details.

begin
  # Update a task
  api_instance.crm_tasks_id_patch(id, crm_tasks_id_patch_request)
rescue Brevo::ApiError => e
  puts "Error when calling TasksApi->crm_tasks_id_patch: #{e}"
end
```

#### Using the crm_tasks_id_patch_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> crm_tasks_id_patch_with_http_info(id, crm_tasks_id_patch_request)

```ruby
begin
  # Update a task
  data, status_code, headers = api_instance.crm_tasks_id_patch_with_http_info(id, crm_tasks_id_patch_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Brevo::ApiError => e
  puts "Error when calling TasksApi->crm_tasks_id_patch_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **crm_tasks_id_patch_request** | [**CrmTasksIdPatchRequest**](CrmTasksIdPatchRequest.md) | Updated task details. |  |

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## crm_tasks_post

> <CrmTasksPost201Response> crm_tasks_post(crm_tasks_post_request)

Create a task

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

api_instance = Brevo::TasksApi.new
crm_tasks_post_request = Brevo::CrmTasksPostRequest.new({name: 'Task: Connect with client', task_type_id: '61a5cd07ca1347c82306ad09', date: Time.parse('2021-11-01T17:44:54.668Z')}) # CrmTasksPostRequest | Task name.

begin
  # Create a task
  result = api_instance.crm_tasks_post(crm_tasks_post_request)
  p result
rescue Brevo::ApiError => e
  puts "Error when calling TasksApi->crm_tasks_post: #{e}"
end
```

#### Using the crm_tasks_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CrmTasksPost201Response>, Integer, Hash)> crm_tasks_post_with_http_info(crm_tasks_post_request)

```ruby
begin
  # Create a task
  data, status_code, headers = api_instance.crm_tasks_post_with_http_info(crm_tasks_post_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CrmTasksPost201Response>
rescue Brevo::ApiError => e
  puts "Error when calling TasksApi->crm_tasks_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **crm_tasks_post_request** | [**CrmTasksPostRequest**](CrmTasksPostRequest.md) | Task name. |  |

### Return type

[**CrmTasksPost201Response**](CrmTasksPost201Response.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## crm_tasktypes_get

> <TaskTypes> crm_tasktypes_get

Get all task types

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

api_instance = Brevo::TasksApi.new

begin
  # Get all task types
  result = api_instance.crm_tasktypes_get
  p result
rescue Brevo::ApiError => e
  puts "Error when calling TasksApi->crm_tasktypes_get: #{e}"
end
```

#### Using the crm_tasktypes_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TaskTypes>, Integer, Hash)> crm_tasktypes_get_with_http_info

```ruby
begin
  # Get all task types
  data, status_code, headers = api_instance.crm_tasktypes_get_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TaskTypes>
rescue Brevo::ApiError => e
  puts "Error when calling TasksApi->crm_tasktypes_get_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**TaskTypes**](TaskTypes.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

