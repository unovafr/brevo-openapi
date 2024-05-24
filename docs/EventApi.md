# Brevo::EventApi

All URIs are relative to *https://api.brevo.com/v3*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_event**](EventApi.md#create_event) | **POST** /events | Create an event |


## create_event

> create_event(event)

Create an event

Create an event to track a contact's interaction.

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

api_instance = Brevo::EventApi.new
event = Brevo::Event.new({event_name: 'video_played', identifiers: Brevo::EventIdentifiers.new}) # Event | 

begin
  # Create an event
  api_instance.create_event(event)
rescue Brevo::ApiError => e
  puts "Error when calling EventApi->create_event: #{e}"
end
```

#### Using the create_event_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> create_event_with_http_info(event)

```ruby
begin
  # Create an event
  data, status_code, headers = api_instance.create_event_with_http_info(event)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Brevo::ApiError => e
  puts "Error when calling EventApi->create_event_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **event** | [**Event**](Event.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

