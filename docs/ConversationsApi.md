# Brevo::ConversationsApi

All URIs are relative to *https://api.brevo.com/v3*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**conversations_agent_online_ping_post**](ConversationsApi.md#conversations_agent_online_ping_post) | **POST** /conversations/agentOnlinePing | Sets agent’s status to online for 2-3 minutes |
| [**conversations_messages_id_delete**](ConversationsApi.md#conversations_messages_id_delete) | **DELETE** /conversations/messages/{id} | Delete a message sent by an agent |
| [**conversations_messages_id_get**](ConversationsApi.md#conversations_messages_id_get) | **GET** /conversations/messages/{id} | Get a message |
| [**conversations_messages_id_put**](ConversationsApi.md#conversations_messages_id_put) | **PUT** /conversations/messages/{id} | Update a message sent by an agent |
| [**conversations_messages_post**](ConversationsApi.md#conversations_messages_post) | **POST** /conversations/messages | Send a message as an agent |
| [**conversations_pushed_messages_id_delete**](ConversationsApi.md#conversations_pushed_messages_id_delete) | **DELETE** /conversations/pushedMessages/{id} | Delete an automated message |
| [**conversations_pushed_messages_id_get**](ConversationsApi.md#conversations_pushed_messages_id_get) | **GET** /conversations/pushedMessages/{id} | Get an automated message |
| [**conversations_pushed_messages_id_put**](ConversationsApi.md#conversations_pushed_messages_id_put) | **PUT** /conversations/pushedMessages/{id} | Update an automated message |
| [**conversations_pushed_messages_post**](ConversationsApi.md#conversations_pushed_messages_post) | **POST** /conversations/pushedMessages | Send an automated message to a visitor |


## conversations_agent_online_ping_post

> conversations_agent_online_ping_post(conversations_agent_online_ping_post_request)

Sets agent’s status to online for 2-3 minutes

We recommend pinging this endpoint every minute for as long as the agent has to be considered online.

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

api_instance = Brevo::ConversationsApi.new
conversations_agent_online_ping_post_request = Brevo::ConversationsAgentOnlinePingPostRequest.new # ConversationsAgentOnlinePingPostRequest | 

begin
  # Sets agent’s status to online for 2-3 minutes
  api_instance.conversations_agent_online_ping_post(conversations_agent_online_ping_post_request)
rescue Brevo::ApiError => e
  puts "Error when calling ConversationsApi->conversations_agent_online_ping_post: #{e}"
end
```

#### Using the conversations_agent_online_ping_post_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> conversations_agent_online_ping_post_with_http_info(conversations_agent_online_ping_post_request)

```ruby
begin
  # Sets agent’s status to online for 2-3 minutes
  data, status_code, headers = api_instance.conversations_agent_online_ping_post_with_http_info(conversations_agent_online_ping_post_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Brevo::ApiError => e
  puts "Error when calling ConversationsApi->conversations_agent_online_ping_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **conversations_agent_online_ping_post_request** | [**ConversationsAgentOnlinePingPostRequest**](ConversationsAgentOnlinePingPostRequest.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## conversations_messages_id_delete

> conversations_messages_id_delete(id)

Delete a message sent by an agent

Only agents’ messages can be deleted.

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

api_instance = Brevo::ConversationsApi.new
id = 'id_example' # String | ID of the message

begin
  # Delete a message sent by an agent
  api_instance.conversations_messages_id_delete(id)
rescue Brevo::ApiError => e
  puts "Error when calling ConversationsApi->conversations_messages_id_delete: #{e}"
end
```

#### Using the conversations_messages_id_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> conversations_messages_id_delete_with_http_info(id)

```ruby
begin
  # Delete a message sent by an agent
  data, status_code, headers = api_instance.conversations_messages_id_delete_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Brevo::ApiError => e
  puts "Error when calling ConversationsApi->conversations_messages_id_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | ID of the message |  |

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## conversations_messages_id_get

> <ConversationsMessage> conversations_messages_id_get(id)

Get a message

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

api_instance = Brevo::ConversationsApi.new
id = 'id_example' # String | ID of the message

begin
  # Get a message
  result = api_instance.conversations_messages_id_get(id)
  p result
rescue Brevo::ApiError => e
  puts "Error when calling ConversationsApi->conversations_messages_id_get: #{e}"
end
```

#### Using the conversations_messages_id_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ConversationsMessage>, Integer, Hash)> conversations_messages_id_get_with_http_info(id)

```ruby
begin
  # Get a message
  data, status_code, headers = api_instance.conversations_messages_id_get_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ConversationsMessage>
rescue Brevo::ApiError => e
  puts "Error when calling ConversationsApi->conversations_messages_id_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | ID of the message |  |

### Return type

[**ConversationsMessage**](ConversationsMessage.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## conversations_messages_id_put

> <ConversationsMessage> conversations_messages_id_put(id, conversations_messages_id_put_request)

Update a message sent by an agent

Only agents’ messages can be edited.

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

api_instance = Brevo::ConversationsApi.new
id = 'id_example' # String | ID of the message
conversations_messages_id_put_request = Brevo::ConversationsMessagesIdPutRequest.new({text: 'text_example'}) # ConversationsMessagesIdPutRequest | 

begin
  # Update a message sent by an agent
  result = api_instance.conversations_messages_id_put(id, conversations_messages_id_put_request)
  p result
rescue Brevo::ApiError => e
  puts "Error when calling ConversationsApi->conversations_messages_id_put: #{e}"
end
```

#### Using the conversations_messages_id_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ConversationsMessage>, Integer, Hash)> conversations_messages_id_put_with_http_info(id, conversations_messages_id_put_request)

```ruby
begin
  # Update a message sent by an agent
  data, status_code, headers = api_instance.conversations_messages_id_put_with_http_info(id, conversations_messages_id_put_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ConversationsMessage>
rescue Brevo::ApiError => e
  puts "Error when calling ConversationsApi->conversations_messages_id_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | ID of the message |  |
| **conversations_messages_id_put_request** | [**ConversationsMessagesIdPutRequest**](ConversationsMessagesIdPutRequest.md) |  |  |

### Return type

[**ConversationsMessage**](ConversationsMessage.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## conversations_messages_post

> <ConversationsMessage> conversations_messages_post(conversations_messages_post_request)

Send a message as an agent

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

api_instance = Brevo::ConversationsApi.new
conversations_messages_post_request = Brevo::ConversationsMessagesPostRequest.new({visitor_id: 3.56, text: 3.56}) # ConversationsMessagesPostRequest | 

begin
  # Send a message as an agent
  result = api_instance.conversations_messages_post(conversations_messages_post_request)
  p result
rescue Brevo::ApiError => e
  puts "Error when calling ConversationsApi->conversations_messages_post: #{e}"
end
```

#### Using the conversations_messages_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ConversationsMessage>, Integer, Hash)> conversations_messages_post_with_http_info(conversations_messages_post_request)

```ruby
begin
  # Send a message as an agent
  data, status_code, headers = api_instance.conversations_messages_post_with_http_info(conversations_messages_post_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ConversationsMessage>
rescue Brevo::ApiError => e
  puts "Error when calling ConversationsApi->conversations_messages_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **conversations_messages_post_request** | [**ConversationsMessagesPostRequest**](ConversationsMessagesPostRequest.md) |  |  |

### Return type

[**ConversationsMessage**](ConversationsMessage.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## conversations_pushed_messages_id_delete

> conversations_pushed_messages_id_delete(id)

Delete an automated message

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

api_instance = Brevo::ConversationsApi.new
id = 'id_example' # String | ID of the message

begin
  # Delete an automated message
  api_instance.conversations_pushed_messages_id_delete(id)
rescue Brevo::ApiError => e
  puts "Error when calling ConversationsApi->conversations_pushed_messages_id_delete: #{e}"
end
```

#### Using the conversations_pushed_messages_id_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> conversations_pushed_messages_id_delete_with_http_info(id)

```ruby
begin
  # Delete an automated message
  data, status_code, headers = api_instance.conversations_pushed_messages_id_delete_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Brevo::ApiError => e
  puts "Error when calling ConversationsApi->conversations_pushed_messages_id_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | ID of the message |  |

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## conversations_pushed_messages_id_get

> <ConversationsMessage> conversations_pushed_messages_id_get(id)

Get an automated message

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

api_instance = Brevo::ConversationsApi.new
id = 'id_example' # String | ID of the message sent previously

begin
  # Get an automated message
  result = api_instance.conversations_pushed_messages_id_get(id)
  p result
rescue Brevo::ApiError => e
  puts "Error when calling ConversationsApi->conversations_pushed_messages_id_get: #{e}"
end
```

#### Using the conversations_pushed_messages_id_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ConversationsMessage>, Integer, Hash)> conversations_pushed_messages_id_get_with_http_info(id)

```ruby
begin
  # Get an automated message
  data, status_code, headers = api_instance.conversations_pushed_messages_id_get_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ConversationsMessage>
rescue Brevo::ApiError => e
  puts "Error when calling ConversationsApi->conversations_pushed_messages_id_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | ID of the message sent previously |  |

### Return type

[**ConversationsMessage**](ConversationsMessage.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## conversations_pushed_messages_id_put

> <ConversationsMessage> conversations_pushed_messages_id_put(id, conversations_messages_id_put_request)

Update an automated message

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

api_instance = Brevo::ConversationsApi.new
id = 'id_example' # String | ID of the message
conversations_messages_id_put_request = Brevo::ConversationsMessagesIdPutRequest.new({text: 'text_example'}) # ConversationsMessagesIdPutRequest | 

begin
  # Update an automated message
  result = api_instance.conversations_pushed_messages_id_put(id, conversations_messages_id_put_request)
  p result
rescue Brevo::ApiError => e
  puts "Error when calling ConversationsApi->conversations_pushed_messages_id_put: #{e}"
end
```

#### Using the conversations_pushed_messages_id_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ConversationsMessage>, Integer, Hash)> conversations_pushed_messages_id_put_with_http_info(id, conversations_messages_id_put_request)

```ruby
begin
  # Update an automated message
  data, status_code, headers = api_instance.conversations_pushed_messages_id_put_with_http_info(id, conversations_messages_id_put_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ConversationsMessage>
rescue Brevo::ApiError => e
  puts "Error when calling ConversationsApi->conversations_pushed_messages_id_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | ID of the message |  |
| **conversations_messages_id_put_request** | [**ConversationsMessagesIdPutRequest**](ConversationsMessagesIdPutRequest.md) |  |  |

### Return type

[**ConversationsMessage**](ConversationsMessage.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## conversations_pushed_messages_post

> <ConversationsMessage> conversations_pushed_messages_post(conversations_pushed_messages_post_request)

Send an automated message to a visitor

Example of automated messages: order status, announce new features in your web app, etc.

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

api_instance = Brevo::ConversationsApi.new
conversations_pushed_messages_post_request = Brevo::ConversationsPushedMessagesPostRequest.new({visitor_id: 3.56, text: 3.56}) # ConversationsPushedMessagesPostRequest | 

begin
  # Send an automated message to a visitor
  result = api_instance.conversations_pushed_messages_post(conversations_pushed_messages_post_request)
  p result
rescue Brevo::ApiError => e
  puts "Error when calling ConversationsApi->conversations_pushed_messages_post: #{e}"
end
```

#### Using the conversations_pushed_messages_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ConversationsMessage>, Integer, Hash)> conversations_pushed_messages_post_with_http_info(conversations_pushed_messages_post_request)

```ruby
begin
  # Send an automated message to a visitor
  data, status_code, headers = api_instance.conversations_pushed_messages_post_with_http_info(conversations_pushed_messages_post_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ConversationsMessage>
rescue Brevo::ApiError => e
  puts "Error when calling ConversationsApi->conversations_pushed_messages_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **conversations_pushed_messages_post_request** | [**ConversationsPushedMessagesPostRequest**](ConversationsPushedMessagesPostRequest.md) |  |  |

### Return type

[**ConversationsMessage**](ConversationsMessage.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

