# Brevo::ExternalFeedsApi

All URIs are relative to *https://api.brevo.com/v3*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_external_feed**](ExternalFeedsApi.md#create_external_feed) | **POST** /feeds | Create an external feed |
| [**delete_external_feed**](ExternalFeedsApi.md#delete_external_feed) | **DELETE** /feeds/{uuid} | Delete an external feed |
| [**get_all_external_feeds**](ExternalFeedsApi.md#get_all_external_feeds) | **GET** /feeds | Fetch all external feeds |
| [**get_external_feed_by_uuid**](ExternalFeedsApi.md#get_external_feed_by_uuid) | **GET** /feeds/{uuid} | Get an external feed by UUID |
| [**update_external_feed**](ExternalFeedsApi.md#update_external_feed) | **PUT** /feeds/{uuid} | Update an external feed |


## create_external_feed

> <CreateExternalFeed201Response> create_external_feed(create_external_feed)

Create an external feed

This endpoint will create an external feed.

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

api_instance = Brevo::ExternalFeedsApi.new
create_external_feed = Brevo::CreateExternalFeed.new({name: 'New feed', url: 'http://requestb.in/173lyyx1'}) # CreateExternalFeed | Values to create a feed

begin
  # Create an external feed
  result = api_instance.create_external_feed(create_external_feed)
  p result
rescue Brevo::ApiError => e
  puts "Error when calling ExternalFeedsApi->create_external_feed: #{e}"
end
```

#### Using the create_external_feed_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateExternalFeed201Response>, Integer, Hash)> create_external_feed_with_http_info(create_external_feed)

```ruby
begin
  # Create an external feed
  data, status_code, headers = api_instance.create_external_feed_with_http_info(create_external_feed)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateExternalFeed201Response>
rescue Brevo::ApiError => e
  puts "Error when calling ExternalFeedsApi->create_external_feed_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_external_feed** | [**CreateExternalFeed**](CreateExternalFeed.md) | Values to create a feed |  |

### Return type

[**CreateExternalFeed201Response**](CreateExternalFeed201Response.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_external_feed

> delete_external_feed(uuid)

Delete an external feed

This endpoint will delete an external feed.

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

api_instance = Brevo::ExternalFeedsApi.new
uuid = '38f351fb-6e77-4b38-979a-a2465260449e' # String | UUID of the feed to delete

begin
  # Delete an external feed
  api_instance.delete_external_feed(uuid)
rescue Brevo::ApiError => e
  puts "Error when calling ExternalFeedsApi->delete_external_feed: #{e}"
end
```

#### Using the delete_external_feed_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_external_feed_with_http_info(uuid)

```ruby
begin
  # Delete an external feed
  data, status_code, headers = api_instance.delete_external_feed_with_http_info(uuid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Brevo::ApiError => e
  puts "Error when calling ExternalFeedsApi->delete_external_feed_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **uuid** | **String** | UUID of the feed to delete |  |

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_all_external_feeds

> <GetAllExternalFeeds> get_all_external_feeds(opts)

Fetch all external feeds

This endpoint can fetch all created external feeds.

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

api_instance = Brevo::ExternalFeedsApi.new
opts = {
  search: 'search', # String | Can be used to filter records by search keyword on feed name
  start_date: Date.parse('2022-09-04'), # Date | Mandatory if `endDate` is used. Starting date (YYYY-MM-DD) from which you want to fetch the list. Can be maximum 30 days older than current date.
  end_date: Date.parse('2022-10-01'), # Date | Mandatory if `startDate` is used. Ending date (YYYY-MM-DD) till which you want to fetch the list. Maximum time period that can be selected is one month.
  sort: 'asc', # String | Sort the results in the ascending/descending order of record creation. Default order is **descending** if `sort` is not passed.
  auth_type: 'basic', # String | Filter the records by `authType` of the feed.
  limit: 100, # Integer | Number of documents returned per page.
  offset: 0 # Integer | Index of the first document on the page.
}

begin
  # Fetch all external feeds
  result = api_instance.get_all_external_feeds(opts)
  p result
rescue Brevo::ApiError => e
  puts "Error when calling ExternalFeedsApi->get_all_external_feeds: #{e}"
end
```

#### Using the get_all_external_feeds_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAllExternalFeeds>, Integer, Hash)> get_all_external_feeds_with_http_info(opts)

```ruby
begin
  # Fetch all external feeds
  data, status_code, headers = api_instance.get_all_external_feeds_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAllExternalFeeds>
rescue Brevo::ApiError => e
  puts "Error when calling ExternalFeedsApi->get_all_external_feeds_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **search** | **String** | Can be used to filter records by search keyword on feed name | [optional] |
| **start_date** | **Date** | Mandatory if &#x60;endDate&#x60; is used. Starting date (YYYY-MM-DD) from which you want to fetch the list. Can be maximum 30 days older than current date. | [optional] |
| **end_date** | **Date** | Mandatory if &#x60;startDate&#x60; is used. Ending date (YYYY-MM-DD) till which you want to fetch the list. Maximum time period that can be selected is one month. | [optional] |
| **sort** | **String** | Sort the results in the ascending/descending order of record creation. Default order is **descending** if &#x60;sort&#x60; is not passed. | [optional][default to &#39;desc&#39;] |
| **auth_type** | **String** | Filter the records by &#x60;authType&#x60; of the feed. | [optional] |
| **limit** | **Integer** | Number of documents returned per page. | [optional][default to 50] |
| **offset** | **Integer** | Index of the first document on the page. | [optional][default to 0] |

### Return type

[**GetAllExternalFeeds**](GetAllExternalFeeds.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_external_feed_by_uuid

> <GetExternalFeedByUUID> get_external_feed_by_uuid(uuid)

Get an external feed by UUID

This endpoint will update an external feed.

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

api_instance = Brevo::ExternalFeedsApi.new
uuid = '38f351fb-6e77-4b38-979a-a2465260449e' # String | UUID of the feed to fetch

begin
  # Get an external feed by UUID
  result = api_instance.get_external_feed_by_uuid(uuid)
  p result
rescue Brevo::ApiError => e
  puts "Error when calling ExternalFeedsApi->get_external_feed_by_uuid: #{e}"
end
```

#### Using the get_external_feed_by_uuid_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetExternalFeedByUUID>, Integer, Hash)> get_external_feed_by_uuid_with_http_info(uuid)

```ruby
begin
  # Get an external feed by UUID
  data, status_code, headers = api_instance.get_external_feed_by_uuid_with_http_info(uuid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetExternalFeedByUUID>
rescue Brevo::ApiError => e
  puts "Error when calling ExternalFeedsApi->get_external_feed_by_uuid_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **uuid** | **String** | UUID of the feed to fetch |  |

### Return type

[**GetExternalFeedByUUID**](GetExternalFeedByUUID.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_external_feed

> update_external_feed(uuid, update_external_feed)

Update an external feed

This endpoint will update an external feed.

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

api_instance = Brevo::ExternalFeedsApi.new
uuid = '38f351fb-6e77-4b38-979a-a2465260449e' # String | UUID of the feed to update
update_external_feed = Brevo::UpdateExternalFeed.new # UpdateExternalFeed | Values to update a feed

begin
  # Update an external feed
  api_instance.update_external_feed(uuid, update_external_feed)
rescue Brevo::ApiError => e
  puts "Error when calling ExternalFeedsApi->update_external_feed: #{e}"
end
```

#### Using the update_external_feed_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_external_feed_with_http_info(uuid, update_external_feed)

```ruby
begin
  # Update an external feed
  data, status_code, headers = api_instance.update_external_feed_with_http_info(uuid, update_external_feed)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Brevo::ApiError => e
  puts "Error when calling ExternalFeedsApi->update_external_feed_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **uuid** | **String** | UUID of the feed to update |  |
| **update_external_feed** | [**UpdateExternalFeed**](UpdateExternalFeed.md) | Values to update a feed |  |

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

