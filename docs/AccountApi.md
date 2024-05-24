# Brevo::AccountApi

All URIs are relative to *https://api.brevo.com/v3*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_account**](AccountApi.md#get_account) | **GET** /account | Get your account information, plan and credits details |
| [**get_account_activity**](AccountApi.md#get_account_activity) | **GET** /organization/activities | Get user activity logs |


## get_account

> <GetAccount> get_account

Get your account information, plan and credits details

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

api_instance = Brevo::AccountApi.new

begin
  # Get your account information, plan and credits details
  result = api_instance.get_account
  p result
rescue Brevo::ApiError => e
  puts "Error when calling AccountApi->get_account: #{e}"
end
```

#### Using the get_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAccount>, Integer, Hash)> get_account_with_http_info

```ruby
begin
  # Get your account information, plan and credits details
  data, status_code, headers = api_instance.get_account_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAccount>
rescue Brevo::ApiError => e
  puts "Error when calling AccountApi->get_account_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**GetAccount**](GetAccount.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_account_activity

> <GetAccountActivity> get_account_activity(opts)

Get user activity logs

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

api_instance = Brevo::AccountApi.new
opts = {
  start_date: 'start_date_example', # String | Mandatory if endDate is used. Enter start date in UTC date (YYYY-MM-DD) format to filter the activity in your account. Maximum time period that can be selected is one month. Additionally, you can retrieve activity logs from the past 12 months from the date of your search.
  end_date: 'end_date_example', # String | Mandatory if startDate is used. Enter end date in UTC date (YYYY-MM-DD) format to filter the activity in your account. Maximum time period that can be selected is one month.
  limit: 789, # Integer | Number of documents per page
  offset: 789 # Integer | Index of the first document in the page.
}

begin
  # Get user activity logs
  result = api_instance.get_account_activity(opts)
  p result
rescue Brevo::ApiError => e
  puts "Error when calling AccountApi->get_account_activity: #{e}"
end
```

#### Using the get_account_activity_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAccountActivity>, Integer, Hash)> get_account_activity_with_http_info(opts)

```ruby
begin
  # Get user activity logs
  data, status_code, headers = api_instance.get_account_activity_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAccountActivity>
rescue Brevo::ApiError => e
  puts "Error when calling AccountApi->get_account_activity_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_date** | **String** | Mandatory if endDate is used. Enter start date in UTC date (YYYY-MM-DD) format to filter the activity in your account. Maximum time period that can be selected is one month. Additionally, you can retrieve activity logs from the past 12 months from the date of your search. | [optional] |
| **end_date** | **String** | Mandatory if startDate is used. Enter end date in UTC date (YYYY-MM-DD) format to filter the activity in your account. Maximum time period that can be selected is one month. | [optional] |
| **limit** | **Integer** | Number of documents per page | [optional][default to 10] |
| **offset** | **Integer** | Index of the first document in the page. | [optional][default to 0] |

### Return type

[**GetAccountActivity**](GetAccountActivity.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

