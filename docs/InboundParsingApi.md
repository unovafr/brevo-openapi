# Brevo::InboundParsingApi

All URIs are relative to *https://api.brevo.com/v3*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_inbound_email_attachment**](InboundParsingApi.md#get_inbound_email_attachment) | **GET** /inbound/attachments/{downloadToken} | Retrieve inbound attachment with download token. |
| [**get_inbound_email_events**](InboundParsingApi.md#get_inbound_email_events) | **GET** /inbound/events | Get the list of all the events for the received emails. |
| [**get_inbound_email_events_by_uuid**](InboundParsingApi.md#get_inbound_email_events_by_uuid) | **GET** /inbound/events/{uuid} | Fetch all events history for one particular received email. |


## get_inbound_email_attachment

> File get_inbound_email_attachment(download_token)

Retrieve inbound attachment with download token.

This endpoint will retrieve inbound attachment with download token.

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

api_instance = Brevo::InboundParsingApi.new
download_token = 'download_token_example' # String | Token to fetch a particular attachment

begin
  # Retrieve inbound attachment with download token.
  result = api_instance.get_inbound_email_attachment(download_token)
  p result
rescue Brevo::ApiError => e
  puts "Error when calling InboundParsingApi->get_inbound_email_attachment: #{e}"
end
```

#### Using the get_inbound_email_attachment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(File, Integer, Hash)> get_inbound_email_attachment_with_http_info(download_token)

```ruby
begin
  # Retrieve inbound attachment with download token.
  data, status_code, headers = api_instance.get_inbound_email_attachment_with_http_info(download_token)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => File
rescue Brevo::ApiError => e
  puts "Error when calling InboundParsingApi->get_inbound_email_attachment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **download_token** | **String** | Token to fetch a particular attachment |  |

### Return type

**File**

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/octet-stream, application/json


## get_inbound_email_events

> <GetInboundEmailEvents> get_inbound_email_events(opts)

Get the list of all the events for the received emails.

This endpoint will show the list of all the events for the received emails.

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

api_instance = Brevo::InboundParsingApi.new
opts = {
  sender: 'sender_example', # String | Email address of the sender.
  start_date: 'start_date_example', # String | Mandatory if endDate is used. Starting date (YYYY-MM-DD or YYYY-MM-DDTHH:mm:ss.SSSZ) from which you want to fetch the list. Maximum time period that can be selected is one month.
  end_date: 'end_date_example', # String | Mandatory if startDate is used. Ending date (YYYY-MM-DD or YYYY-MM-DDTHH:mm:ss.SSSZ) till which you want to fetch the list. Maximum time period that can be selected is one month.
  limit: 789, # Integer | Number of documents returned per page
  offset: 789, # Integer | Index of the first document on the page
  sort: 'asc' # String | Sort the results in the ascending/descending order of record creation
}

begin
  # Get the list of all the events for the received emails.
  result = api_instance.get_inbound_email_events(opts)
  p result
rescue Brevo::ApiError => e
  puts "Error when calling InboundParsingApi->get_inbound_email_events: #{e}"
end
```

#### Using the get_inbound_email_events_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetInboundEmailEvents>, Integer, Hash)> get_inbound_email_events_with_http_info(opts)

```ruby
begin
  # Get the list of all the events for the received emails.
  data, status_code, headers = api_instance.get_inbound_email_events_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetInboundEmailEvents>
rescue Brevo::ApiError => e
  puts "Error when calling InboundParsingApi->get_inbound_email_events_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sender** | **String** | Email address of the sender. | [optional] |
| **start_date** | **String** | Mandatory if endDate is used. Starting date (YYYY-MM-DD or YYYY-MM-DDTHH:mm:ss.SSSZ) from which you want to fetch the list. Maximum time period that can be selected is one month. | [optional] |
| **end_date** | **String** | Mandatory if startDate is used. Ending date (YYYY-MM-DD or YYYY-MM-DDTHH:mm:ss.SSSZ) till which you want to fetch the list. Maximum time period that can be selected is one month. | [optional] |
| **limit** | **Integer** | Number of documents returned per page | [optional][default to 100] |
| **offset** | **Integer** | Index of the first document on the page | [optional][default to 0] |
| **sort** | **String** | Sort the results in the ascending/descending order of record creation | [optional][default to &#39;desc&#39;] |

### Return type

[**GetInboundEmailEvents**](GetInboundEmailEvents.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_inbound_email_events_by_uuid

> <GetInboundEmailEventsByUuid> get_inbound_email_events_by_uuid(uuid)

Fetch all events history for one particular received email.

This endpoint will show the list of all events history for one particular received email.

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

api_instance = Brevo::InboundParsingApi.new
uuid = 'uuid_example' # String | UUID to fetch events specific to recieved email

begin
  # Fetch all events history for one particular received email.
  result = api_instance.get_inbound_email_events_by_uuid(uuid)
  p result
rescue Brevo::ApiError => e
  puts "Error when calling InboundParsingApi->get_inbound_email_events_by_uuid: #{e}"
end
```

#### Using the get_inbound_email_events_by_uuid_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetInboundEmailEventsByUuid>, Integer, Hash)> get_inbound_email_events_by_uuid_with_http_info(uuid)

```ruby
begin
  # Fetch all events history for one particular received email.
  data, status_code, headers = api_instance.get_inbound_email_events_by_uuid_with_http_info(uuid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetInboundEmailEventsByUuid>
rescue Brevo::ApiError => e
  puts "Error when calling InboundParsingApi->get_inbound_email_events_by_uuid_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **uuid** | **String** | UUID to fetch events specific to recieved email |  |

### Return type

[**GetInboundEmailEventsByUuid**](GetInboundEmailEventsByUuid.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

