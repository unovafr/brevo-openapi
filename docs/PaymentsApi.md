# Brevo::PaymentsApi

All URIs are relative to *https://api.brevo.com/v3*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_payment_request**](PaymentsApi.md#create_payment_request) | **POST** /payments/requests | Create a payment request |
| [**delete_payment_request**](PaymentsApi.md#delete_payment_request) | **DELETE** /payments/requests/{id} | Delete a payment request. |
| [**get_payment_request**](PaymentsApi.md#get_payment_request) | **GET** /payments/requests/{id} | Get payment request details |


## create_payment_request

> <CreatePaymentResponse> create_payment_request(create_payment_request)

Create a payment request

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

api_instance = Brevo::PaymentsApi.new
create_payment_request = Brevo::CreatePaymentRequest.new({reference: 'Invoice #INV0001', cart: Brevo::Cart.new({currency: 'EUR', specific_amount: 1200}), contact_id: 43}) # CreatePaymentRequest | Create a payment request 

begin
  # Create a payment request
  result = api_instance.create_payment_request(create_payment_request)
  p result
rescue Brevo::ApiError => e
  puts "Error when calling PaymentsApi->create_payment_request: #{e}"
end
```

#### Using the create_payment_request_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreatePaymentResponse>, Integer, Hash)> create_payment_request_with_http_info(create_payment_request)

```ruby
begin
  # Create a payment request
  data, status_code, headers = api_instance.create_payment_request_with_http_info(create_payment_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreatePaymentResponse>
rescue Brevo::ApiError => e
  puts "Error when calling PaymentsApi->create_payment_request_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_payment_request** | [**CreatePaymentRequest**](CreatePaymentRequest.md) | Create a payment request  |  |

### Return type

[**CreatePaymentResponse**](CreatePaymentResponse.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_payment_request

> delete_payment_request(id)

Delete a payment request.

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

api_instance = Brevo::PaymentsApi.new
id = '9ae7d68a-565c-4695-9381-d8fb3e3a14cc' # String | ID of the payment request.

begin
  # Delete a payment request.
  api_instance.delete_payment_request(id)
rescue Brevo::ApiError => e
  puts "Error when calling PaymentsApi->delete_payment_request: #{e}"
end
```

#### Using the delete_payment_request_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_payment_request_with_http_info(id)

```ruby
begin
  # Delete a payment request.
  data, status_code, headers = api_instance.delete_payment_request_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Brevo::ApiError => e
  puts "Error when calling PaymentsApi->delete_payment_request_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | ID of the payment request. |  |

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_payment_request

> <GetPaymentRequest> get_payment_request(id)

Get payment request details

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

api_instance = Brevo::PaymentsApi.new
id = '050db7b0-9bb7-4c1e-9c68-5a8dace8c1dc' # String | Id of the payment Request

begin
  # Get payment request details
  result = api_instance.get_payment_request(id)
  p result
rescue Brevo::ApiError => e
  puts "Error when calling PaymentsApi->get_payment_request: #{e}"
end
```

#### Using the get_payment_request_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetPaymentRequest>, Integer, Hash)> get_payment_request_with_http_info(id)

```ruby
begin
  # Get payment request details
  data, status_code, headers = api_instance.get_payment_request_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetPaymentRequest>
rescue Brevo::ApiError => e
  puts "Error when calling PaymentsApi->get_payment_request_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Id of the payment Request |  |

### Return type

[**GetPaymentRequest**](GetPaymentRequest.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

