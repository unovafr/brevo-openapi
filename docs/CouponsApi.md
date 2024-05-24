# Brevo::CouponsApi

All URIs are relative to *https://api.brevo.com/v3*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_coupon_collection**](CouponsApi.md#create_coupon_collection) | **POST** /couponCollections | Create а coupon collection |
| [**create_coupons**](CouponsApi.md#create_coupons) | **POST** /coupons | Create coupons for a coupon collection |
| [**get_coupon_collection**](CouponsApi.md#get_coupon_collection) | **GET** /couponCollections/{id} | Get a coupon collection by id |
| [**get_coupon_collections**](CouponsApi.md#get_coupon_collections) | **GET** /couponCollections | Get all your coupon collections |
| [**update_coupon_collection**](CouponsApi.md#update_coupon_collection) | **PATCH** /couponCollections/{id} | Update a coupon collection by id |


## create_coupon_collection

> <CreateCouponCollection201Response> create_coupon_collection(create_coupon_collection_request)

Create а coupon collection

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

api_instance = Brevo::CouponsApi.new
create_coupon_collection_request = Brevo::CreateCouponCollectionRequest.new({name: '10%OFF', default_coupon: 'Winter'}) # CreateCouponCollectionRequest | Values to create a coupon collection

begin
  # Create а coupon collection
  result = api_instance.create_coupon_collection(create_coupon_collection_request)
  p result
rescue Brevo::ApiError => e
  puts "Error when calling CouponsApi->create_coupon_collection: #{e}"
end
```

#### Using the create_coupon_collection_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateCouponCollection201Response>, Integer, Hash)> create_coupon_collection_with_http_info(create_coupon_collection_request)

```ruby
begin
  # Create а coupon collection
  data, status_code, headers = api_instance.create_coupon_collection_with_http_info(create_coupon_collection_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateCouponCollection201Response>
rescue Brevo::ApiError => e
  puts "Error when calling CouponsApi->create_coupon_collection_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_coupon_collection_request** | [**CreateCouponCollectionRequest**](CreateCouponCollectionRequest.md) | Values to create a coupon collection |  |

### Return type

[**CreateCouponCollection201Response**](CreateCouponCollection201Response.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_coupons

> create_coupons(create_coupons_request)

Create coupons for a coupon collection

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

api_instance = Brevo::CouponsApi.new
create_coupons_request = Brevo::CreateCouponsRequest.new({collection_id: '23befbae-1505-47a8-bd27-e30ef739f32c', coupons: ['Uf12AF']}) # CreateCouponsRequest | Values to create coupons

begin
  # Create coupons for a coupon collection
  api_instance.create_coupons(create_coupons_request)
rescue Brevo::ApiError => e
  puts "Error when calling CouponsApi->create_coupons: #{e}"
end
```

#### Using the create_coupons_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> create_coupons_with_http_info(create_coupons_request)

```ruby
begin
  # Create coupons for a coupon collection
  data, status_code, headers = api_instance.create_coupons_with_http_info(create_coupons_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Brevo::ApiError => e
  puts "Error when calling CouponsApi->create_coupons_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_coupons_request** | [**CreateCouponsRequest**](CreateCouponsRequest.md) | Values to create coupons |  |

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_coupon_collection

> <GetCouponCollection> get_coupon_collection(id)

Get a coupon collection by id

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

api_instance = Brevo::CouponsApi.new
id = 'id_example' # String | Id of the collection to return

begin
  # Get a coupon collection by id
  result = api_instance.get_coupon_collection(id)
  p result
rescue Brevo::ApiError => e
  puts "Error when calling CouponsApi->get_coupon_collection: #{e}"
end
```

#### Using the get_coupon_collection_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetCouponCollection>, Integer, Hash)> get_coupon_collection_with_http_info(id)

```ruby
begin
  # Get a coupon collection by id
  data, status_code, headers = api_instance.get_coupon_collection_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetCouponCollection>
rescue Brevo::ApiError => e
  puts "Error when calling CouponsApi->get_coupon_collection_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Id of the collection to return |  |

### Return type

[**GetCouponCollection**](GetCouponCollection.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_coupon_collections

> <GetCouponCollection> get_coupon_collections(opts)

Get all your coupon collections

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

api_instance = Brevo::CouponsApi.new
opts = {
  limit: 789, # Integer | Number of documents returned per page
  offset: 789, # Integer | Index of the first document on the page
  sort: 'asc', # String | Sort the results by creation time in ascending/descending order
  sort_by: 'createdAt' # String | The field used to sort coupon collections
}

begin
  # Get all your coupon collections
  result = api_instance.get_coupon_collections(opts)
  p result
rescue Brevo::ApiError => e
  puts "Error when calling CouponsApi->get_coupon_collections: #{e}"
end
```

#### Using the get_coupon_collections_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetCouponCollection>, Integer, Hash)> get_coupon_collections_with_http_info(opts)

```ruby
begin
  # Get all your coupon collections
  data, status_code, headers = api_instance.get_coupon_collections_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetCouponCollection>
rescue Brevo::ApiError => e
  puts "Error when calling CouponsApi->get_coupon_collections_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | Number of documents returned per page | [optional][default to 50] |
| **offset** | **Integer** | Index of the first document on the page | [optional][default to 0] |
| **sort** | **String** | Sort the results by creation time in ascending/descending order | [optional][default to &#39;desc&#39;] |
| **sort_by** | **String** | The field used to sort coupon collections | [optional][default to &#39;createdAt&#39;] |

### Return type

[**GetCouponCollection**](GetCouponCollection.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_coupon_collection

> <UpdateCouponCollection200Response> update_coupon_collection(id, opts)

Update a coupon collection by id

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

api_instance = Brevo::CouponsApi.new
id = 'id_example' # String | Id of the collection to update
opts = {
  update_coupon_collection_request: Brevo::UpdateCouponCollectionRequest.new # UpdateCouponCollectionRequest | Values to update the coupon collection
}

begin
  # Update a coupon collection by id
  result = api_instance.update_coupon_collection(id, opts)
  p result
rescue Brevo::ApiError => e
  puts "Error when calling CouponsApi->update_coupon_collection: #{e}"
end
```

#### Using the update_coupon_collection_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateCouponCollection200Response>, Integer, Hash)> update_coupon_collection_with_http_info(id, opts)

```ruby
begin
  # Update a coupon collection by id
  data, status_code, headers = api_instance.update_coupon_collection_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateCouponCollection200Response>
rescue Brevo::ApiError => e
  puts "Error when calling CouponsApi->update_coupon_collection_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Id of the collection to update |  |
| **update_coupon_collection_request** | [**UpdateCouponCollectionRequest**](UpdateCouponCollectionRequest.md) | Values to update the coupon collection | [optional] |

### Return type

[**UpdateCouponCollection200Response**](UpdateCouponCollection200Response.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

