# Brevo::EcommerceApi

All URIs are relative to *https://api.brevo.com/v3*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_batch_order**](EcommerceApi.md#create_batch_order) | **POST** /orders/status/batch | Create orders in batch |
| [**create_order**](EcommerceApi.md#create_order) | **POST** /orders/status | Managing the status of the order |
| [**create_update_batch_category**](EcommerceApi.md#create_update_batch_category) | **POST** /categories/batch | Create categories in batch |
| [**create_update_batch_products**](EcommerceApi.md#create_update_batch_products) | **POST** /products/batch | Create products in batch |
| [**create_update_category**](EcommerceApi.md#create_update_category) | **POST** /categories | Create/Update a category |
| [**create_update_product**](EcommerceApi.md#create_update_product) | **POST** /products | Create/Update a product |
| [**ecommerce_activate_post**](EcommerceApi.md#ecommerce_activate_post) | **POST** /ecommerce/activate | Activate the eCommerce app |
| [**ecommerce_attribution_metrics_conversion_source_conversion_source_id_get**](EcommerceApi.md#ecommerce_attribution_metrics_conversion_source_conversion_source_id_get) | **GET** /ecommerce/attribution/metrics/{conversionSource}/{conversionSourceId} | Get detailed attribution metrics for a single Brevo campaign |
| [**ecommerce_attribution_metrics_get**](EcommerceApi.md#ecommerce_attribution_metrics_get) | **GET** /ecommerce/attribution/metrics | Get attribution metrics for one or more Brevo campaigns |
| [**ecommerce_attribution_products_conversion_source_conversion_source_id_get**](EcommerceApi.md#ecommerce_attribution_products_conversion_source_conversion_source_id_get) | **GET** /ecommerce/attribution/products/{conversionSource}/{conversionSourceId} | Get attributed product sales for a single Brevo campaign |
| [**get_categories**](EcommerceApi.md#get_categories) | **GET** /categories | Return all your categories |
| [**get_category_info**](EcommerceApi.md#get_category_info) | **GET** /categories/{id} | Get a category details |
| [**get_orders**](EcommerceApi.md#get_orders) | **GET** /orders | Get order details |
| [**get_product_info**](EcommerceApi.md#get_product_info) | **GET** /products/{id} | Get a product&#39;s details |
| [**get_products**](EcommerceApi.md#get_products) | **GET** /products | Return all your products |


## create_batch_order

> <CreatedBatchId> create_batch_order(order_batch)

Create orders in batch

Create multiple orders at one time instead of one order at a time

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

api_instance = Brevo::EcommerceApi.new
order_batch = Brevo::OrderBatch.new({orders: [Brevo::Order.new({id: '14', created_at: '2021-07-29T20:59:23.383Z', updated_at: '2021-07-30T10:59:23.383Z', status: 'completed', amount: 308.42, products: [Brevo::OrderProductsInner.new({product_id: 'P1', quantity: 10, price: 99.99})]})]}) # OrderBatch | 

begin
  # Create orders in batch
  result = api_instance.create_batch_order(order_batch)
  p result
rescue Brevo::ApiError => e
  puts "Error when calling EcommerceApi->create_batch_order: #{e}"
end
```

#### Using the create_batch_order_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreatedBatchId>, Integer, Hash)> create_batch_order_with_http_info(order_batch)

```ruby
begin
  # Create orders in batch
  data, status_code, headers = api_instance.create_batch_order_with_http_info(order_batch)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreatedBatchId>
rescue Brevo::ApiError => e
  puts "Error when calling EcommerceApi->create_batch_order_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **order_batch** | [**OrderBatch**](OrderBatch.md) |  |  |

### Return type

[**CreatedBatchId**](CreatedBatchId.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_order

> create_order(order)

Managing the status of the order

Manages the transactional status of the order

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

api_instance = Brevo::EcommerceApi.new
order = Brevo::Order.new({id: '14', created_at: '2021-07-29T20:59:23.383Z', updated_at: '2021-07-30T10:59:23.383Z', status: 'completed', amount: 308.42, products: [Brevo::OrderProductsInner.new({product_id: 'P1', quantity: 10, price: 99.99})]}) # Order | 

begin
  # Managing the status of the order
  api_instance.create_order(order)
rescue Brevo::ApiError => e
  puts "Error when calling EcommerceApi->create_order: #{e}"
end
```

#### Using the create_order_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> create_order_with_http_info(order)

```ruby
begin
  # Managing the status of the order
  data, status_code, headers = api_instance.create_order_with_http_info(order)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Brevo::ApiError => e
  puts "Error when calling EcommerceApi->create_order_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **order** | [**Order**](Order.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_update_batch_category

> <CreateUpdateBatchCategoryModel> create_update_batch_category(create_update_batch_category)

Create categories in batch

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

api_instance = Brevo::EcommerceApi.new
create_update_batch_category = Brevo::CreateUpdateBatchCategory.new({categories: [Brevo::CreateUpdateCategories.new({id: 'CAT123'})]}) # CreateUpdateBatchCategory | Values to create a batch of categories

begin
  # Create categories in batch
  result = api_instance.create_update_batch_category(create_update_batch_category)
  p result
rescue Brevo::ApiError => e
  puts "Error when calling EcommerceApi->create_update_batch_category: #{e}"
end
```

#### Using the create_update_batch_category_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateUpdateBatchCategoryModel>, Integer, Hash)> create_update_batch_category_with_http_info(create_update_batch_category)

```ruby
begin
  # Create categories in batch
  data, status_code, headers = api_instance.create_update_batch_category_with_http_info(create_update_batch_category)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateUpdateBatchCategoryModel>
rescue Brevo::ApiError => e
  puts "Error when calling EcommerceApi->create_update_batch_category_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_update_batch_category** | [**CreateUpdateBatchCategory**](CreateUpdateBatchCategory.md) | Values to create a batch of categories |  |

### Return type

[**CreateUpdateBatchCategoryModel**](CreateUpdateBatchCategoryModel.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_update_batch_products

> <CreateUpdateBatchProductsModel> create_update_batch_products(create_update_batch_products)

Create products in batch

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

api_instance = Brevo::EcommerceApi.new
create_update_batch_products = Brevo::CreateUpdateBatchProducts.new({products: [Brevo::CreateUpdateProducts.new({id: 'P11', name: 'Iphone 11'})]}) # CreateUpdateBatchProducts | Values to create a batch of products

begin
  # Create products in batch
  result = api_instance.create_update_batch_products(create_update_batch_products)
  p result
rescue Brevo::ApiError => e
  puts "Error when calling EcommerceApi->create_update_batch_products: #{e}"
end
```

#### Using the create_update_batch_products_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateUpdateBatchProductsModel>, Integer, Hash)> create_update_batch_products_with_http_info(create_update_batch_products)

```ruby
begin
  # Create products in batch
  data, status_code, headers = api_instance.create_update_batch_products_with_http_info(create_update_batch_products)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateUpdateBatchProductsModel>
rescue Brevo::ApiError => e
  puts "Error when calling EcommerceApi->create_update_batch_products_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_update_batch_products** | [**CreateUpdateBatchProducts**](CreateUpdateBatchProducts.md) | Values to create a batch of products |  |

### Return type

[**CreateUpdateBatchProductsModel**](CreateUpdateBatchProductsModel.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_update_category

> <CreateCategoryModel> create_update_category(create_update_category)

Create/Update a category

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

api_instance = Brevo::EcommerceApi.new
create_update_category = Brevo::CreateUpdateCategory.new({id: 'CAT123'}) # CreateUpdateCategory | Values to create/update a category

begin
  # Create/Update a category
  result = api_instance.create_update_category(create_update_category)
  p result
rescue Brevo::ApiError => e
  puts "Error when calling EcommerceApi->create_update_category: #{e}"
end
```

#### Using the create_update_category_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateCategoryModel>, Integer, Hash)> create_update_category_with_http_info(create_update_category)

```ruby
begin
  # Create/Update a category
  data, status_code, headers = api_instance.create_update_category_with_http_info(create_update_category)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateCategoryModel>
rescue Brevo::ApiError => e
  puts "Error when calling EcommerceApi->create_update_category_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_update_category** | [**CreateUpdateCategory**](CreateUpdateCategory.md) | Values to create/update a category |  |

### Return type

[**CreateCategoryModel**](CreateCategoryModel.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_update_product

> <CreateProductModel> create_update_product(create_update_product)

Create/Update a product

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

api_instance = Brevo::EcommerceApi.new
create_update_product = Brevo::CreateUpdateProduct.new({id: 'P11', name: 'Iphone 11'}) # CreateUpdateProduct | Values to create/update a product

begin
  # Create/Update a product
  result = api_instance.create_update_product(create_update_product)
  p result
rescue Brevo::ApiError => e
  puts "Error when calling EcommerceApi->create_update_product: #{e}"
end
```

#### Using the create_update_product_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateProductModel>, Integer, Hash)> create_update_product_with_http_info(create_update_product)

```ruby
begin
  # Create/Update a product
  data, status_code, headers = api_instance.create_update_product_with_http_info(create_update_product)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateProductModel>
rescue Brevo::ApiError => e
  puts "Error when calling EcommerceApi->create_update_product_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_update_product** | [**CreateUpdateProduct**](CreateUpdateProduct.md) | Values to create/update a product |  |

### Return type

[**CreateProductModel**](CreateProductModel.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## ecommerce_activate_post

> ecommerce_activate_post

Activate the eCommerce app

Getting access to Brevo eCommerce.

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

api_instance = Brevo::EcommerceApi.new

begin
  # Activate the eCommerce app
  api_instance.ecommerce_activate_post
rescue Brevo::ApiError => e
  puts "Error when calling EcommerceApi->ecommerce_activate_post: #{e}"
end
```

#### Using the ecommerce_activate_post_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> ecommerce_activate_post_with_http_info

```ruby
begin
  # Activate the eCommerce app
  data, status_code, headers = api_instance.ecommerce_activate_post_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Brevo::ApiError => e
  puts "Error when calling EcommerceApi->ecommerce_activate_post_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## ecommerce_attribution_metrics_conversion_source_conversion_source_id_get

> <EcommerceAttributionMetricsConversionSourceConversionSourceIdGet200Response> ecommerce_attribution_metrics_conversion_source_conversion_source_id_get(conversion_source, conversion_source_id)

Get detailed attribution metrics for a single Brevo campaign

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

api_instance = Brevo::EcommerceApi.new
conversion_source = 'email_campaign' # String | The Brevo campaign type for which data will be retrieved
conversion_source_id = 1 # Float | The Brevo campaign id for which data will be retrieved

begin
  # Get detailed attribution metrics for a single Brevo campaign
  result = api_instance.ecommerce_attribution_metrics_conversion_source_conversion_source_id_get(conversion_source, conversion_source_id)
  p result
rescue Brevo::ApiError => e
  puts "Error when calling EcommerceApi->ecommerce_attribution_metrics_conversion_source_conversion_source_id_get: #{e}"
end
```

#### Using the ecommerce_attribution_metrics_conversion_source_conversion_source_id_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EcommerceAttributionMetricsConversionSourceConversionSourceIdGet200Response>, Integer, Hash)> ecommerce_attribution_metrics_conversion_source_conversion_source_id_get_with_http_info(conversion_source, conversion_source_id)

```ruby
begin
  # Get detailed attribution metrics for a single Brevo campaign
  data, status_code, headers = api_instance.ecommerce_attribution_metrics_conversion_source_conversion_source_id_get_with_http_info(conversion_source, conversion_source_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EcommerceAttributionMetricsConversionSourceConversionSourceIdGet200Response>
rescue Brevo::ApiError => e
  puts "Error when calling EcommerceApi->ecommerce_attribution_metrics_conversion_source_conversion_source_id_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **conversion_source** | **String** | The Brevo campaign type for which data will be retrieved |  |
| **conversion_source_id** | **Float** | The Brevo campaign id for which data will be retrieved |  |

### Return type

[**EcommerceAttributionMetricsConversionSourceConversionSourceIdGet200Response**](EcommerceAttributionMetricsConversionSourceConversionSourceIdGet200Response.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## ecommerce_attribution_metrics_get

> <EcommerceAttributionMetricsGet200Response> ecommerce_attribution_metrics_get(opts)

Get attribution metrics for one or more Brevo campaigns

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

api_instance = Brevo::EcommerceApi.new
opts = {
  period_from: Time.parse('2022-01-02T00:00Z'), # Time | When getting metrics for a specific period, define the starting datetime in RFC3339 format
  period_to: Time.parse('2022-01-03T00:00Z'), # Time | When getting metrics for a specific period, define the end datetime in RFC3339 format
  email_campaign_id: [1] # Array<Float> | The email campaign id(s) to get metrics for
}

begin
  # Get attribution metrics for one or more Brevo campaigns
  result = api_instance.ecommerce_attribution_metrics_get(opts)
  p result
rescue Brevo::ApiError => e
  puts "Error when calling EcommerceApi->ecommerce_attribution_metrics_get: #{e}"
end
```

#### Using the ecommerce_attribution_metrics_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EcommerceAttributionMetricsGet200Response>, Integer, Hash)> ecommerce_attribution_metrics_get_with_http_info(opts)

```ruby
begin
  # Get attribution metrics for one or more Brevo campaigns
  data, status_code, headers = api_instance.ecommerce_attribution_metrics_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EcommerceAttributionMetricsGet200Response>
rescue Brevo::ApiError => e
  puts "Error when calling EcommerceApi->ecommerce_attribution_metrics_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **period_from** | **Time** | When getting metrics for a specific period, define the starting datetime in RFC3339 format | [optional] |
| **period_to** | **Time** | When getting metrics for a specific period, define the end datetime in RFC3339 format | [optional] |
| **email_campaign_id** | [**Array&lt;Float&gt;**](Float.md) | The email campaign id(s) to get metrics for | [optional] |

### Return type

[**EcommerceAttributionMetricsGet200Response**](EcommerceAttributionMetricsGet200Response.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## ecommerce_attribution_products_conversion_source_conversion_source_id_get

> <EcommerceAttributionProductsConversionSourceConversionSourceIdGet200Response> ecommerce_attribution_products_conversion_source_conversion_source_id_get(conversion_source, conversion_source_id)

Get attributed product sales for a single Brevo campaign

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

api_instance = Brevo::EcommerceApi.new
conversion_source = 'email_campaign' # String | The Brevo campaign type for which data will be retrieved
conversion_source_id = 1 # Float | The Brevo campaign id for which data will be retrieved

begin
  # Get attributed product sales for a single Brevo campaign
  result = api_instance.ecommerce_attribution_products_conversion_source_conversion_source_id_get(conversion_source, conversion_source_id)
  p result
rescue Brevo::ApiError => e
  puts "Error when calling EcommerceApi->ecommerce_attribution_products_conversion_source_conversion_source_id_get: #{e}"
end
```

#### Using the ecommerce_attribution_products_conversion_source_conversion_source_id_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EcommerceAttributionProductsConversionSourceConversionSourceIdGet200Response>, Integer, Hash)> ecommerce_attribution_products_conversion_source_conversion_source_id_get_with_http_info(conversion_source, conversion_source_id)

```ruby
begin
  # Get attributed product sales for a single Brevo campaign
  data, status_code, headers = api_instance.ecommerce_attribution_products_conversion_source_conversion_source_id_get_with_http_info(conversion_source, conversion_source_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EcommerceAttributionProductsConversionSourceConversionSourceIdGet200Response>
rescue Brevo::ApiError => e
  puts "Error when calling EcommerceApi->ecommerce_attribution_products_conversion_source_conversion_source_id_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **conversion_source** | **String** | The Brevo campaign type for which data will be retrieved |  |
| **conversion_source_id** | **Float** | The Brevo campaign id for which data will be retrieved |  |

### Return type

[**EcommerceAttributionProductsConversionSourceConversionSourceIdGet200Response**](EcommerceAttributionProductsConversionSourceConversionSourceIdGet200Response.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_categories

> <GetCategories> get_categories(opts)

Return all your categories

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

api_instance = Brevo::EcommerceApi.new
opts = {
  limit: 789, # Integer | Number of documents per page
  offset: 789, # Integer | Index of the first document in the page
  sort: 'asc', # String | Sort the results in the ascending/descending order of record creation. Default order is **descending** if `sort` is not passed
  ids: ['inner_example'], # Array<String> | Filter by category ids
  name: 'name_example', # String | Filter by category name
  modified_since: 'modified_since_example', # String | Filter (urlencoded) the categories modified after a given UTC date-time (YYYY-MM-DDTHH:mm:ss.SSSZ). **Prefer to pass your timezone in date-time format for accurate result.** 
  created_since: 'created_since_example' # String | Filter (urlencoded) the categories created after a given UTC date-time (YYYY-MM-DDTHH:mm:ss.SSSZ). **Prefer to pass your timezone in date-time format for accurate result.** 
}

begin
  # Return all your categories
  result = api_instance.get_categories(opts)
  p result
rescue Brevo::ApiError => e
  puts "Error when calling EcommerceApi->get_categories: #{e}"
end
```

#### Using the get_categories_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetCategories>, Integer, Hash)> get_categories_with_http_info(opts)

```ruby
begin
  # Return all your categories
  data, status_code, headers = api_instance.get_categories_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetCategories>
rescue Brevo::ApiError => e
  puts "Error when calling EcommerceApi->get_categories_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | Number of documents per page | [optional][default to 50] |
| **offset** | **Integer** | Index of the first document in the page | [optional][default to 0] |
| **sort** | **String** | Sort the results in the ascending/descending order of record creation. Default order is **descending** if &#x60;sort&#x60; is not passed | [optional][default to &#39;desc&#39;] |
| **ids** | [**Array&lt;String&gt;**](String.md) | Filter by category ids | [optional] |
| **name** | **String** | Filter by category name | [optional] |
| **modified_since** | **String** | Filter (urlencoded) the categories modified after a given UTC date-time (YYYY-MM-DDTHH:mm:ss.SSSZ). **Prefer to pass your timezone in date-time format for accurate result.**  | [optional] |
| **created_since** | **String** | Filter (urlencoded) the categories created after a given UTC date-time (YYYY-MM-DDTHH:mm:ss.SSSZ). **Prefer to pass your timezone in date-time format for accurate result.**  | [optional] |

### Return type

[**GetCategories**](GetCategories.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_category_info

> <GetCategoryDetails> get_category_info(id)

Get a category details

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

api_instance = Brevo::EcommerceApi.new
id = 'id_example' # String | Category ID

begin
  # Get a category details
  result = api_instance.get_category_info(id)
  p result
rescue Brevo::ApiError => e
  puts "Error when calling EcommerceApi->get_category_info: #{e}"
end
```

#### Using the get_category_info_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetCategoryDetails>, Integer, Hash)> get_category_info_with_http_info(id)

```ruby
begin
  # Get a category details
  data, status_code, headers = api_instance.get_category_info_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetCategoryDetails>
rescue Brevo::ApiError => e
  puts "Error when calling EcommerceApi->get_category_info_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Category ID |  |

### Return type

[**GetCategoryDetails**](GetCategoryDetails.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_orders

> get_orders(opts)

Get order details

Get all the orders

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

api_instance = Brevo::EcommerceApi.new
opts = {
  limit: 789, # Integer | Number of documents per page
  offset: 789, # Integer | Index of the first document in the page
  sort: 'asc', # String | Sort the results in the ascending/descending order of record creation. Default order is **descending** if `sort` is not passed
  modified_since: 'modified_since_example', # String | Filter (urlencoded) the orders modified after a given UTC date-time (YYYY-MM-DDTHH:mm:ss.SSSZ). **Prefer to pass your timezone in date-time format for accurate result.** 
  created_since: 'created_since_example' # String | Filter (urlencoded) the orders created after a given UTC date-time (YYYY-MM-DDTHH:mm:ss.SSSZ). **Prefer to pass your timezone in date-time format for accurate result.** 
}

begin
  # Get order details
  api_instance.get_orders(opts)
rescue Brevo::ApiError => e
  puts "Error when calling EcommerceApi->get_orders: #{e}"
end
```

#### Using the get_orders_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> get_orders_with_http_info(opts)

```ruby
begin
  # Get order details
  data, status_code, headers = api_instance.get_orders_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Brevo::ApiError => e
  puts "Error when calling EcommerceApi->get_orders_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | Number of documents per page | [optional][default to 50] |
| **offset** | **Integer** | Index of the first document in the page | [optional][default to 0] |
| **sort** | **String** | Sort the results in the ascending/descending order of record creation. Default order is **descending** if &#x60;sort&#x60; is not passed | [optional][default to &#39;desc&#39;] |
| **modified_since** | **String** | Filter (urlencoded) the orders modified after a given UTC date-time (YYYY-MM-DDTHH:mm:ss.SSSZ). **Prefer to pass your timezone in date-time format for accurate result.**  | [optional] |
| **created_since** | **String** | Filter (urlencoded) the orders created after a given UTC date-time (YYYY-MM-DDTHH:mm:ss.SSSZ). **Prefer to pass your timezone in date-time format for accurate result.**  | [optional] |

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_product_info

> <GetProductDetails> get_product_info(id)

Get a product's details

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

api_instance = Brevo::EcommerceApi.new
id = 'id_example' # String | Product ID

begin
  # Get a product's details
  result = api_instance.get_product_info(id)
  p result
rescue Brevo::ApiError => e
  puts "Error when calling EcommerceApi->get_product_info: #{e}"
end
```

#### Using the get_product_info_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetProductDetails>, Integer, Hash)> get_product_info_with_http_info(id)

```ruby
begin
  # Get a product's details
  data, status_code, headers = api_instance.get_product_info_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetProductDetails>
rescue Brevo::ApiError => e
  puts "Error when calling EcommerceApi->get_product_info_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Product ID |  |

### Return type

[**GetProductDetails**](GetProductDetails.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_products

> <GetProducts> get_products(opts)

Return all your products

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

api_instance = Brevo::EcommerceApi.new
opts = {
  limit: 789, # Integer | Number of documents per page
  offset: 789, # Integer | Index of the first document in the page
  sort: 'asc', # String | Sort the results in the ascending/descending order of record creation. Default order is **descending** if `sort` is not passed
  ids: ['inner_example'], # Array<String> | Filter by product ids
  name: 'name_example', # String | Filter by product name, minimum 3 characters should be present for search
  price_lte: 8.14, # Float | Price filter for products less than and equals to particular amount
  price_gte: 8.14, # Float | Price filter for products greater than and equals to particular amount
  price_lt: 8.14, # Float | Price filter for products less than particular amount
  price_gt: 8.14, # Float | Price filter for products greater than particular amount
  price_eq: 8.14, # Float | Price filter for products equals to particular amount
  price_ne: 8.14, # Float | Price filter for products not equals to particular amount
  categories: ['inner_example'], # Array<String> | Filter by product categories
  modified_since: 'modified_since_example', # String | Filter (urlencoded) the orders modified after a given UTC date-time (YYYY-MM-DDTHH:mm:ss.SSSZ). **Prefer to pass your timezone in date-time format for accurate result.** 
  created_since: 'created_since_example' # String | Filter (urlencoded) the orders created after a given UTC date-time (YYYY-MM-DDTHH:mm:ss.SSSZ). **Prefer to pass your timezone in date-time format for accurate result.** 
}

begin
  # Return all your products
  result = api_instance.get_products(opts)
  p result
rescue Brevo::ApiError => e
  puts "Error when calling EcommerceApi->get_products: #{e}"
end
```

#### Using the get_products_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetProducts>, Integer, Hash)> get_products_with_http_info(opts)

```ruby
begin
  # Return all your products
  data, status_code, headers = api_instance.get_products_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetProducts>
rescue Brevo::ApiError => e
  puts "Error when calling EcommerceApi->get_products_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | Number of documents per page | [optional][default to 50] |
| **offset** | **Integer** | Index of the first document in the page | [optional][default to 0] |
| **sort** | **String** | Sort the results in the ascending/descending order of record creation. Default order is **descending** if &#x60;sort&#x60; is not passed | [optional][default to &#39;desc&#39;] |
| **ids** | [**Array&lt;String&gt;**](String.md) | Filter by product ids | [optional] |
| **name** | **String** | Filter by product name, minimum 3 characters should be present for search | [optional] |
| **price_lte** | **Float** | Price filter for products less than and equals to particular amount | [optional] |
| **price_gte** | **Float** | Price filter for products greater than and equals to particular amount | [optional] |
| **price_lt** | **Float** | Price filter for products less than particular amount | [optional] |
| **price_gt** | **Float** | Price filter for products greater than particular amount | [optional] |
| **price_eq** | **Float** | Price filter for products equals to particular amount | [optional] |
| **price_ne** | **Float** | Price filter for products not equals to particular amount | [optional] |
| **categories** | [**Array&lt;String&gt;**](String.md) | Filter by product categories | [optional] |
| **modified_since** | **String** | Filter (urlencoded) the orders modified after a given UTC date-time (YYYY-MM-DDTHH:mm:ss.SSSZ). **Prefer to pass your timezone in date-time format for accurate result.**  | [optional] |
| **created_since** | **String** | Filter (urlencoded) the orders created after a given UTC date-time (YYYY-MM-DDTHH:mm:ss.SSSZ). **Prefer to pass your timezone in date-time format for accurate result.**  | [optional] |

### Return type

[**GetProducts**](GetProducts.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

