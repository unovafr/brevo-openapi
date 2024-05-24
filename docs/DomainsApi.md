# Brevo::DomainsApi

All URIs are relative to *https://api.brevo.com/v3*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**authenticate_domain**](DomainsApi.md#authenticate_domain) | **PUT** /senders/domains/{domainName}/authenticate | Authenticate a domain |
| [**create_domain**](DomainsApi.md#create_domain) | **POST** /senders/domains | Create a new domain |
| [**delete_domain**](DomainsApi.md#delete_domain) | **DELETE** /senders/domains/{domainName} | Delete a domain |
| [**get_domain_configuration**](DomainsApi.md#get_domain_configuration) | **GET** /senders/domains/{domainName} | Validate domain configuration |
| [**get_domains**](DomainsApi.md#get_domains) | **GET** /senders/domains | Get the list of all your domains |


## authenticate_domain

> <AuthenticateDomainModel> authenticate_domain(domain_name)

Authenticate a domain

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

api_instance = Brevo::DomainsApi.new
domain_name = 'domain_name_example' # String | Domain name

begin
  # Authenticate a domain
  result = api_instance.authenticate_domain(domain_name)
  p result
rescue Brevo::ApiError => e
  puts "Error when calling DomainsApi->authenticate_domain: #{e}"
end
```

#### Using the authenticate_domain_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AuthenticateDomainModel>, Integer, Hash)> authenticate_domain_with_http_info(domain_name)

```ruby
begin
  # Authenticate a domain
  data, status_code, headers = api_instance.authenticate_domain_with_http_info(domain_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AuthenticateDomainModel>
rescue Brevo::ApiError => e
  puts "Error when calling DomainsApi->authenticate_domain_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **domain_name** | **String** | Domain name |  |

### Return type

[**AuthenticateDomainModel**](AuthenticateDomainModel.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_domain

> <CreateDomainModel> create_domain(opts)

Create a new domain

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

api_instance = Brevo::DomainsApi.new
opts = {
  domain: Brevo::CreateDomain.new({name: 'mycompany.com'}) # CreateDomain | domain's name
}

begin
  # Create a new domain
  result = api_instance.create_domain(opts)
  p result
rescue Brevo::ApiError => e
  puts "Error when calling DomainsApi->create_domain: #{e}"
end
```

#### Using the create_domain_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateDomainModel>, Integer, Hash)> create_domain_with_http_info(opts)

```ruby
begin
  # Create a new domain
  data, status_code, headers = api_instance.create_domain_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateDomainModel>
rescue Brevo::ApiError => e
  puts "Error when calling DomainsApi->create_domain_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **domain** | [**CreateDomain**](CreateDomain.md) | domain&#39;s name | [optional] |

### Return type

[**CreateDomainModel**](CreateDomainModel.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_domain

> delete_domain(domain_name)

Delete a domain

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

api_instance = Brevo::DomainsApi.new
domain_name = 'domain_name_example' # String | Domain name

begin
  # Delete a domain
  api_instance.delete_domain(domain_name)
rescue Brevo::ApiError => e
  puts "Error when calling DomainsApi->delete_domain: #{e}"
end
```

#### Using the delete_domain_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_domain_with_http_info(domain_name)

```ruby
begin
  # Delete a domain
  data, status_code, headers = api_instance.delete_domain_with_http_info(domain_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Brevo::ApiError => e
  puts "Error when calling DomainsApi->delete_domain_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **domain_name** | **String** | Domain name |  |

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_domain_configuration

> <GetDomainConfigurationModel> get_domain_configuration(domain_name)

Validate domain configuration

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

api_instance = Brevo::DomainsApi.new
domain_name = 'domain_name_example' # String | Domain name

begin
  # Validate domain configuration
  result = api_instance.get_domain_configuration(domain_name)
  p result
rescue Brevo::ApiError => e
  puts "Error when calling DomainsApi->get_domain_configuration: #{e}"
end
```

#### Using the get_domain_configuration_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetDomainConfigurationModel>, Integer, Hash)> get_domain_configuration_with_http_info(domain_name)

```ruby
begin
  # Validate domain configuration
  data, status_code, headers = api_instance.get_domain_configuration_with_http_info(domain_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetDomainConfigurationModel>
rescue Brevo::ApiError => e
  puts "Error when calling DomainsApi->get_domain_configuration_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **domain_name** | **String** | Domain name |  |

### Return type

[**GetDomainConfigurationModel**](GetDomainConfigurationModel.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_domains

> <GetDomainsList> get_domains

Get the list of all your domains

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

api_instance = Brevo::DomainsApi.new

begin
  # Get the list of all your domains
  result = api_instance.get_domains
  p result
rescue Brevo::ApiError => e
  puts "Error when calling DomainsApi->get_domains: #{e}"
end
```

#### Using the get_domains_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetDomainsList>, Integer, Hash)> get_domains_with_http_info

```ruby
begin
  # Get the list of all your domains
  data, status_code, headers = api_instance.get_domains_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetDomainsList>
rescue Brevo::ApiError => e
  puts "Error when calling DomainsApi->get_domains_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**GetDomainsList**](GetDomainsList.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

