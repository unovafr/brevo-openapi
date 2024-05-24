# Brevo::TransactionalWhatsAppApi

All URIs are relative to *https://api.brevo.com/v3*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_whatsapp_event_report**](TransactionalWhatsAppApi.md#get_whatsapp_event_report) | **GET** /whatsapp/statistics/events | Get all your WhatsApp activity (unaggregated events) |
| [**send_whatsapp_message**](TransactionalWhatsAppApi.md#send_whatsapp_message) | **POST** /whatsapp/sendMessage | Send a WhatsApp message |


## get_whatsapp_event_report

> <GetWhatsappEventReport> get_whatsapp_event_report(opts)

Get all your WhatsApp activity (unaggregated events)

This endpoint will show the unaggregated statistics for WhatsApp activity (30 days by default if `startDate` and `endDate` or `days` is not passed. The date range can not exceed 90 days)

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

api_instance = Brevo::TransactionalWhatsAppApi.new
opts = {
  limit: 789, # Integer | Number limitation for the result returned
  offset: 789, # Integer | Beginning point in the list to retrieve from
  start_date: 'start_date_example', # String | **Mandatory if endDate is used.** Starting date of the report (YYYY-MM-DD). Must be lower than equal to endDate 
  end_date: 'end_date_example', # String | **Mandatory if startDate is used.** Ending date of the report (YYYY-MM-DD). Must be greater than equal to startDate 
  days: 789, # Integer | Number of days in the past including today (positive integer). _Not compatible with 'startDate' and 'endDate'_ 
  contact_number: 'contact_number_example', # String | Filter results for specific contact (WhatsApp Number with country code. Example, 85264318721)
  event: 'sent', # String | Filter the report for a specific event type
  sort: 'asc' # String | Sort the results in the ascending/descending order of record creation. Default order is **descending** if `sort` is not passed
}

begin
  # Get all your WhatsApp activity (unaggregated events)
  result = api_instance.get_whatsapp_event_report(opts)
  p result
rescue Brevo::ApiError => e
  puts "Error when calling TransactionalWhatsAppApi->get_whatsapp_event_report: #{e}"
end
```

#### Using the get_whatsapp_event_report_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWhatsappEventReport>, Integer, Hash)> get_whatsapp_event_report_with_http_info(opts)

```ruby
begin
  # Get all your WhatsApp activity (unaggregated events)
  data, status_code, headers = api_instance.get_whatsapp_event_report_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWhatsappEventReport>
rescue Brevo::ApiError => e
  puts "Error when calling TransactionalWhatsAppApi->get_whatsapp_event_report_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | Number limitation for the result returned | [optional][default to 2500] |
| **offset** | **Integer** | Beginning point in the list to retrieve from | [optional][default to 0] |
| **start_date** | **String** | **Mandatory if endDate is used.** Starting date of the report (YYYY-MM-DD). Must be lower than equal to endDate  | [optional] |
| **end_date** | **String** | **Mandatory if startDate is used.** Ending date of the report (YYYY-MM-DD). Must be greater than equal to startDate  | [optional] |
| **days** | **Integer** | Number of days in the past including today (positive integer). _Not compatible with &#39;startDate&#39; and &#39;endDate&#39;_  | [optional] |
| **contact_number** | **String** | Filter results for specific contact (WhatsApp Number with country code. Example, 85264318721) | [optional] |
| **event** | **String** | Filter the report for a specific event type | [optional] |
| **sort** | **String** | Sort the results in the ascending/descending order of record creation. Default order is **descending** if &#x60;sort&#x60; is not passed | [optional][default to &#39;desc&#39;] |

### Return type

[**GetWhatsappEventReport**](GetWhatsappEventReport.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## send_whatsapp_message

> <SendWhatsappMessage201Response> send_whatsapp_message(send_whatsapp_message_request)

Send a WhatsApp message

This endpoint is used to send a WhatsApp message. <br/>(**The first message you send using the API must contain a Template ID. You must create a template on WhatsApp on the Brevo platform to fetch the Template ID.**)

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

api_instance = Brevo::TransactionalWhatsAppApi.new
send_whatsapp_message_request = Brevo::SendWhatsappMessageTemplate.new({template_id: 123, sender_number: '919876543210', contact_numbers: ['919876543210']}) # SendWhatsappMessageRequest | Values to send WhatsApp message

begin
  # Send a WhatsApp message
  result = api_instance.send_whatsapp_message(send_whatsapp_message_request)
  p result
rescue Brevo::ApiError => e
  puts "Error when calling TransactionalWhatsAppApi->send_whatsapp_message: #{e}"
end
```

#### Using the send_whatsapp_message_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SendWhatsappMessage201Response>, Integer, Hash)> send_whatsapp_message_with_http_info(send_whatsapp_message_request)

```ruby
begin
  # Send a WhatsApp message
  data, status_code, headers = api_instance.send_whatsapp_message_with_http_info(send_whatsapp_message_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SendWhatsappMessage201Response>
rescue Brevo::ApiError => e
  puts "Error when calling TransactionalWhatsAppApi->send_whatsapp_message_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **send_whatsapp_message_request** | [**SendWhatsappMessageRequest**](SendWhatsappMessageRequest.md) | Values to send WhatsApp message |  |

### Return type

[**SendWhatsappMessage201Response**](SendWhatsappMessage201Response.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

