# Brevo::MasterAccountApi

All URIs are relative to *https://api.brevo.com/v3*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**corporate_group_id_delete**](MasterAccountApi.md#corporate_group_id_delete) | **DELETE** /corporate/group/{id} | Delete a group |
| [**corporate_group_id_get**](MasterAccountApi.md#corporate_group_id_get) | **GET** /corporate/group/{id} | GET a group details |
| [**corporate_group_id_put**](MasterAccountApi.md#corporate_group_id_put) | **PUT** /corporate/group/{id} | Update a group of sub-accounts |
| [**corporate_group_post**](MasterAccountApi.md#corporate_group_post) | **POST** /corporate/group | Create a group of sub-accounts |
| [**corporate_group_unlink_group_id_sub_accounts_put**](MasterAccountApi.md#corporate_group_unlink_group_id_sub_accounts_put) | **PUT** /corporate/group/unlink/{groupId}/subAccounts | Delete sub-account from group |
| [**corporate_master_account_get**](MasterAccountApi.md#corporate_master_account_get) | **GET** /corporate/masterAccount | Get the details of requested master account |
| [**corporate_sso_token_post**](MasterAccountApi.md#corporate_sso_token_post) | **POST** /corporate/ssoToken | Generate SSO token to access admin account |
| [**corporate_sub_account_get**](MasterAccountApi.md#corporate_sub_account_get) | **GET** /corporate/subAccount | Get the list of all the sub-accounts of the master account. |
| [**corporate_sub_account_id_applications_toggle_put**](MasterAccountApi.md#corporate_sub_account_id_applications_toggle_put) | **PUT** /corporate/subAccount/{id}/applications/toggle | Enable/disable sub-account application(s) |
| [**corporate_sub_account_id_delete**](MasterAccountApi.md#corporate_sub_account_id_delete) | **DELETE** /corporate/subAccount/{id} | Delete a sub-account |
| [**corporate_sub_account_id_get**](MasterAccountApi.md#corporate_sub_account_id_get) | **GET** /corporate/subAccount/{id} | Get sub-account details |
| [**corporate_sub_account_id_plan_put**](MasterAccountApi.md#corporate_sub_account_id_plan_put) | **PUT** /corporate/subAccount/{id}/plan | Update sub-account plan |
| [**corporate_sub_account_ip_associate_post**](MasterAccountApi.md#corporate_sub_account_ip_associate_post) | **POST** /corporate/subAccount/ip/associate | Associate an IP to sub-accounts |
| [**corporate_sub_account_ip_dissociate_delete**](MasterAccountApi.md#corporate_sub_account_ip_dissociate_delete) | **DELETE** /corporate/subAccount/ip/dissociate | Dissociate an IP to sub-accounts |
| [**corporate_sub_account_key_post**](MasterAccountApi.md#corporate_sub_account_key_post) | **POST** /corporate/subAccount/key | Create an API key for a sub-account |
| [**corporate_sub_account_post**](MasterAccountApi.md#corporate_sub_account_post) | **POST** /corporate/subAccount | Create a new sub-account under a master account. |
| [**corporate_sub_account_sso_token_post**](MasterAccountApi.md#corporate_sub_account_sso_token_post) | **POST** /corporate/subAccount/ssoToken | Generate SSO token to access sub-account |
| [**corporate_user_invitation_action_email_put**](MasterAccountApi.md#corporate_user_invitation_action_email_put) | **PUT** /corporate/user/invitation/{action}/{email} | Resend / cancel admin user invitation |
| [**corporate_user_revoke_email_delete**](MasterAccountApi.md#corporate_user_revoke_email_delete) | **DELETE** /corporate/user/revoke/{email} | Revoke an admin user |
| [**get_account_activity**](MasterAccountApi.md#get_account_activity) | **GET** /organization/activities | Get user activity logs |
| [**get_corporate_invited_users_list**](MasterAccountApi.md#get_corporate_invited_users_list) | **GET** /corporate/invited/users | Get the list of all admin users |
| [**get_corporate_user_permission**](MasterAccountApi.md#get_corporate_user_permission) | **GET** /corporate/user/{email}/permissions | Check admin user permissions |
| [**get_sub_account_groups**](MasterAccountApi.md#get_sub_account_groups) | **GET** /corporate/groups | Get the list of groups |
| [**invite_admin_user**](MasterAccountApi.md#invite_admin_user) | **POST** /corporate/user/invitation/send | Send invitation to an admin user |


## corporate_group_id_delete

> corporate_group_id_delete(id)

Delete a group

This endpoint allows you to delete a group of sub-organizations. When a group is deleted, the sub-organizations are no longer part of this group. The users associated with the group are no longer associated with the group once deleted.

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

api_instance = Brevo::MasterAccountApi.new
id = 'id_example' # String | Id of the group

begin
  # Delete a group
  api_instance.corporate_group_id_delete(id)
rescue Brevo::ApiError => e
  puts "Error when calling MasterAccountApi->corporate_group_id_delete: #{e}"
end
```

#### Using the corporate_group_id_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> corporate_group_id_delete_with_http_info(id)

```ruby
begin
  # Delete a group
  data, status_code, headers = api_instance.corporate_group_id_delete_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Brevo::ApiError => e
  puts "Error when calling MasterAccountApi->corporate_group_id_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Id of the group |  |

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## corporate_group_id_get

> <CorporateGroupDetailsResponse> corporate_group_id_get(id)

GET a group details

This endpoint allows you to retrieve a specific group’s information such as the list of sub-organizations and the user associated with the group.

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

api_instance = Brevo::MasterAccountApi.new
id = 'id_example' # String | Id of the group of sub-organization

begin
  # GET a group details
  result = api_instance.corporate_group_id_get(id)
  p result
rescue Brevo::ApiError => e
  puts "Error when calling MasterAccountApi->corporate_group_id_get: #{e}"
end
```

#### Using the corporate_group_id_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CorporateGroupDetailsResponse>, Integer, Hash)> corporate_group_id_get_with_http_info(id)

```ruby
begin
  # GET a group details
  data, status_code, headers = api_instance.corporate_group_id_get_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CorporateGroupDetailsResponse>
rescue Brevo::ApiError => e
  puts "Error when calling MasterAccountApi->corporate_group_id_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Id of the group of sub-organization |  |

### Return type

[**CorporateGroupDetailsResponse**](CorporateGroupDetailsResponse.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## corporate_group_id_put

> corporate_group_id_put(id, corporate_group_id_put_request)

Update a group of sub-accounts

This endpoint allows to update a group of sub-accounts

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

api_instance = Brevo::MasterAccountApi.new
id = 'id_example' # String | Id of the group
corporate_group_id_put_request = Brevo::CorporateGroupIdPutRequest.new # CorporateGroupIdPutRequest | Group details to be updated.

begin
  # Update a group of sub-accounts
  api_instance.corporate_group_id_put(id, corporate_group_id_put_request)
rescue Brevo::ApiError => e
  puts "Error when calling MasterAccountApi->corporate_group_id_put: #{e}"
end
```

#### Using the corporate_group_id_put_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> corporate_group_id_put_with_http_info(id, corporate_group_id_put_request)

```ruby
begin
  # Update a group of sub-accounts
  data, status_code, headers = api_instance.corporate_group_id_put_with_http_info(id, corporate_group_id_put_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Brevo::ApiError => e
  puts "Error when calling MasterAccountApi->corporate_group_id_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Id of the group |  |
| **corporate_group_id_put_request** | [**CorporateGroupIdPutRequest**](CorporateGroupIdPutRequest.md) | Group details to be updated. |  |

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## corporate_group_post

> <CorporateGroupPost201Response> corporate_group_post(opts)

Create a group of sub-accounts

This endpoint allows to create a group of sub-accounts

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

api_instance = Brevo::MasterAccountApi.new
opts = {
  corporate_group_post_request: Brevo::CorporateGroupPostRequest.new({group_name: 'My group'}) # CorporateGroupPostRequest | 
}

begin
  # Create a group of sub-accounts
  result = api_instance.corporate_group_post(opts)
  p result
rescue Brevo::ApiError => e
  puts "Error when calling MasterAccountApi->corporate_group_post: #{e}"
end
```

#### Using the corporate_group_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CorporateGroupPost201Response>, Integer, Hash)> corporate_group_post_with_http_info(opts)

```ruby
begin
  # Create a group of sub-accounts
  data, status_code, headers = api_instance.corporate_group_post_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CorporateGroupPost201Response>
rescue Brevo::ApiError => e
  puts "Error when calling MasterAccountApi->corporate_group_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **corporate_group_post_request** | [**CorporateGroupPostRequest**](CorporateGroupPostRequest.md) |  | [optional] |

### Return type

[**CorporateGroupPost201Response**](CorporateGroupPost201Response.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## corporate_group_unlink_group_id_sub_accounts_put

> corporate_group_unlink_group_id_sub_accounts_put(group_id, corporate_group_unlink_group_id_sub_accounts_put_request)

Delete sub-account from group

This endpoint allows you to remove a sub-organization from a group.

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

api_instance = Brevo::MasterAccountApi.new
group_id = 'group_id_example' # String | Group id
corporate_group_unlink_group_id_sub_accounts_put_request = Brevo::CorporateGroupUnlinkGroupIdSubAccountsPutRequest.new({sub_account_ids: [423432, 234323, 87678]}) # CorporateGroupUnlinkGroupIdSubAccountsPutRequest | List of sub-account ids

begin
  # Delete sub-account from group
  api_instance.corporate_group_unlink_group_id_sub_accounts_put(group_id, corporate_group_unlink_group_id_sub_accounts_put_request)
rescue Brevo::ApiError => e
  puts "Error when calling MasterAccountApi->corporate_group_unlink_group_id_sub_accounts_put: #{e}"
end
```

#### Using the corporate_group_unlink_group_id_sub_accounts_put_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> corporate_group_unlink_group_id_sub_accounts_put_with_http_info(group_id, corporate_group_unlink_group_id_sub_accounts_put_request)

```ruby
begin
  # Delete sub-account from group
  data, status_code, headers = api_instance.corporate_group_unlink_group_id_sub_accounts_put_with_http_info(group_id, corporate_group_unlink_group_id_sub_accounts_put_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Brevo::ApiError => e
  puts "Error when calling MasterAccountApi->corporate_group_unlink_group_id_sub_accounts_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **group_id** | **String** | Group id |  |
| **corporate_group_unlink_group_id_sub_accounts_put_request** | [**CorporateGroupUnlinkGroupIdSubAccountsPutRequest**](CorporateGroupUnlinkGroupIdSubAccountsPutRequest.md) | List of sub-account ids |  |

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## corporate_master_account_get

> <MasterDetailsResponse> corporate_master_account_get

Get the details of requested master account

This endpoint will provide the details of the master account.

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

api_instance = Brevo::MasterAccountApi.new

begin
  # Get the details of requested master account
  result = api_instance.corporate_master_account_get
  p result
rescue Brevo::ApiError => e
  puts "Error when calling MasterAccountApi->corporate_master_account_get: #{e}"
end
```

#### Using the corporate_master_account_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MasterDetailsResponse>, Integer, Hash)> corporate_master_account_get_with_http_info

```ruby
begin
  # Get the details of requested master account
  data, status_code, headers = api_instance.corporate_master_account_get_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MasterDetailsResponse>
rescue Brevo::ApiError => e
  puts "Error when calling MasterAccountApi->corporate_master_account_get_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**MasterDetailsResponse**](MasterDetailsResponse.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## corporate_sso_token_post

> <GetSsoToken> corporate_sso_token_post(opts)

Generate SSO token to access admin account

This endpoint generates an SSO token to authenticate and access the admin account using the endpoint https://account-app.brevo.com/account/login/corporate/sso/[token], where [token] will be replaced by the actual token.

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

api_instance = Brevo::MasterAccountApi.new
opts = {
  corporate_sso_token_post_request: Brevo::CorporateSsoTokenPostRequest.new({email: 'vipin+ent-user@brevo.com'}) # CorporateSsoTokenPostRequest | 
}

begin
  # Generate SSO token to access admin account
  result = api_instance.corporate_sso_token_post(opts)
  p result
rescue Brevo::ApiError => e
  puts "Error when calling MasterAccountApi->corporate_sso_token_post: #{e}"
end
```

#### Using the corporate_sso_token_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetSsoToken>, Integer, Hash)> corporate_sso_token_post_with_http_info(opts)

```ruby
begin
  # Generate SSO token to access admin account
  data, status_code, headers = api_instance.corporate_sso_token_post_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetSsoToken>
rescue Brevo::ApiError => e
  puts "Error when calling MasterAccountApi->corporate_sso_token_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **corporate_sso_token_post_request** | [**CorporateSsoTokenPostRequest**](CorporateSsoTokenPostRequest.md) |  | [optional] |

### Return type

[**GetSsoToken**](GetSsoToken.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## corporate_sub_account_get

> <SubAccountsResponse> corporate_sub_account_get(offset, limit)

Get the list of all the sub-accounts of the master account.

This endpoint will provide the list all the sub-accounts of the master account.

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

api_instance = Brevo::MasterAccountApi.new
offset = 56 # Integer | Index of the first sub-account in the page
limit = 56 # Integer | Number of sub-accounts to be displayed on each page

begin
  # Get the list of all the sub-accounts of the master account.
  result = api_instance.corporate_sub_account_get(offset, limit)
  p result
rescue Brevo::ApiError => e
  puts "Error when calling MasterAccountApi->corporate_sub_account_get: #{e}"
end
```

#### Using the corporate_sub_account_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SubAccountsResponse>, Integer, Hash)> corporate_sub_account_get_with_http_info(offset, limit)

```ruby
begin
  # Get the list of all the sub-accounts of the master account.
  data, status_code, headers = api_instance.corporate_sub_account_get_with_http_info(offset, limit)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SubAccountsResponse>
rescue Brevo::ApiError => e
  puts "Error when calling MasterAccountApi->corporate_sub_account_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **offset** | **Integer** | Index of the first sub-account in the page |  |
| **limit** | **Integer** | Number of sub-accounts to be displayed on each page |  |

### Return type

[**SubAccountsResponse**](SubAccountsResponse.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## corporate_sub_account_id_applications_toggle_put

> corporate_sub_account_id_applications_toggle_put(id, sub_account_apps_toggle_request)

Enable/disable sub-account application(s)

API endpoints for the Corporate owner to enable/disable applications on the sub-account

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

api_instance = Brevo::MasterAccountApi.new
id = 789 # Integer | Id of the sub-account organization (mandatory)
sub_account_apps_toggle_request = Brevo::SubAccountAppsToggleRequest.new # SubAccountAppsToggleRequest | List of applications to activate or deactivate on a sub-account

begin
  # Enable/disable sub-account application(s)
  api_instance.corporate_sub_account_id_applications_toggle_put(id, sub_account_apps_toggle_request)
rescue Brevo::ApiError => e
  puts "Error when calling MasterAccountApi->corporate_sub_account_id_applications_toggle_put: #{e}"
end
```

#### Using the corporate_sub_account_id_applications_toggle_put_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> corporate_sub_account_id_applications_toggle_put_with_http_info(id, sub_account_apps_toggle_request)

```ruby
begin
  # Enable/disable sub-account application(s)
  data, status_code, headers = api_instance.corporate_sub_account_id_applications_toggle_put_with_http_info(id, sub_account_apps_toggle_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Brevo::ApiError => e
  puts "Error when calling MasterAccountApi->corporate_sub_account_id_applications_toggle_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Id of the sub-account organization (mandatory) |  |
| **sub_account_apps_toggle_request** | [**SubAccountAppsToggleRequest**](SubAccountAppsToggleRequest.md) | List of applications to activate or deactivate on a sub-account |  |

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## corporate_sub_account_id_delete

> corporate_sub_account_id_delete(id)

Delete a sub-account

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

api_instance = Brevo::MasterAccountApi.new
id = 789 # Integer | Id of the sub-account organization to be deleted

begin
  # Delete a sub-account
  api_instance.corporate_sub_account_id_delete(id)
rescue Brevo::ApiError => e
  puts "Error when calling MasterAccountApi->corporate_sub_account_id_delete: #{e}"
end
```

#### Using the corporate_sub_account_id_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> corporate_sub_account_id_delete_with_http_info(id)

```ruby
begin
  # Delete a sub-account
  data, status_code, headers = api_instance.corporate_sub_account_id_delete_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Brevo::ApiError => e
  puts "Error when calling MasterAccountApi->corporate_sub_account_id_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Id of the sub-account organization to be deleted |  |

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## corporate_sub_account_id_get

> <SubAccountDetailsResponse> corporate_sub_account_id_get(id)

Get sub-account details

This endpoint will provide the details for the specified sub-account company

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

api_instance = Brevo::MasterAccountApi.new
id = 789 # Integer | Id of the sub-account organization

begin
  # Get sub-account details
  result = api_instance.corporate_sub_account_id_get(id)
  p result
rescue Brevo::ApiError => e
  puts "Error when calling MasterAccountApi->corporate_sub_account_id_get: #{e}"
end
```

#### Using the corporate_sub_account_id_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SubAccountDetailsResponse>, Integer, Hash)> corporate_sub_account_id_get_with_http_info(id)

```ruby
begin
  # Get sub-account details
  data, status_code, headers = api_instance.corporate_sub_account_id_get_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SubAccountDetailsResponse>
rescue Brevo::ApiError => e
  puts "Error when calling MasterAccountApi->corporate_sub_account_id_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Id of the sub-account organization |  |

### Return type

[**SubAccountDetailsResponse**](SubAccountDetailsResponse.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## corporate_sub_account_id_plan_put

> corporate_sub_account_id_plan_put(id, sub_account_update_plan_request)

Update sub-account plan

This endpoint will update the sub-account plan. On the Corporate solution new version v2, you can set an unlimited number of credits in your sub-organization. Please pass the value “-1\" to set the consumable in unlimited mode.

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

api_instance = Brevo::MasterAccountApi.new
id = 789 # Integer | Id of the sub-account organization
sub_account_update_plan_request = Brevo::SubAccountUpdatePlanRequest.new # SubAccountUpdatePlanRequest | Values to update a sub-account plan

begin
  # Update sub-account plan
  api_instance.corporate_sub_account_id_plan_put(id, sub_account_update_plan_request)
rescue Brevo::ApiError => e
  puts "Error when calling MasterAccountApi->corporate_sub_account_id_plan_put: #{e}"
end
```

#### Using the corporate_sub_account_id_plan_put_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> corporate_sub_account_id_plan_put_with_http_info(id, sub_account_update_plan_request)

```ruby
begin
  # Update sub-account plan
  data, status_code, headers = api_instance.corporate_sub_account_id_plan_put_with_http_info(id, sub_account_update_plan_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Brevo::ApiError => e
  puts "Error when calling MasterAccountApi->corporate_sub_account_id_plan_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Id of the sub-account organization |  |
| **sub_account_update_plan_request** | [**SubAccountUpdatePlanRequest**](SubAccountUpdatePlanRequest.md) | Values to update a sub-account plan |  |

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## corporate_sub_account_ip_associate_post

> Object corporate_sub_account_ip_associate_post(opts)

Associate an IP to sub-accounts

This endpoint allows to associate an IP to sub-accounts

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

api_instance = Brevo::MasterAccountApi.new
opts = {
  corporate_sub_account_ip_associate_post_request: Brevo::CorporateSubAccountIpAssociatePostRequest.new({ip: '103.11.32.88', ids: [234322, 325553, 893432]}) # CorporateSubAccountIpAssociatePostRequest | 
}

begin
  # Associate an IP to sub-accounts
  result = api_instance.corporate_sub_account_ip_associate_post(opts)
  p result
rescue Brevo::ApiError => e
  puts "Error when calling MasterAccountApi->corporate_sub_account_ip_associate_post: #{e}"
end
```

#### Using the corporate_sub_account_ip_associate_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> corporate_sub_account_ip_associate_post_with_http_info(opts)

```ruby
begin
  # Associate an IP to sub-accounts
  data, status_code, headers = api_instance.corporate_sub_account_ip_associate_post_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue Brevo::ApiError => e
  puts "Error when calling MasterAccountApi->corporate_sub_account_ip_associate_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **corporate_sub_account_ip_associate_post_request** | [**CorporateSubAccountIpAssociatePostRequest**](CorporateSubAccountIpAssociatePostRequest.md) |  | [optional] |

### Return type

**Object**

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## corporate_sub_account_ip_dissociate_delete

> corporate_sub_account_ip_dissociate_delete(opts)

Dissociate an IP to sub-accounts

This endpoint allows to dissociate an IP from sub-accounts

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

api_instance = Brevo::MasterAccountApi.new
opts = {
  corporate_sub_account_ip_dissociate_delete_request: Brevo::CorporateSubAccountIpDissociateDeleteRequest.new({ip: '103.11.32.88', ids: [234322, 325553, 893432]}) # CorporateSubAccountIpDissociateDeleteRequest | 
}

begin
  # Dissociate an IP to sub-accounts
  api_instance.corporate_sub_account_ip_dissociate_delete(opts)
rescue Brevo::ApiError => e
  puts "Error when calling MasterAccountApi->corporate_sub_account_ip_dissociate_delete: #{e}"
end
```

#### Using the corporate_sub_account_ip_dissociate_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> corporate_sub_account_ip_dissociate_delete_with_http_info(opts)

```ruby
begin
  # Dissociate an IP to sub-accounts
  data, status_code, headers = api_instance.corporate_sub_account_ip_dissociate_delete_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Brevo::ApiError => e
  puts "Error when calling MasterAccountApi->corporate_sub_account_ip_dissociate_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **corporate_sub_account_ip_dissociate_delete_request** | [**CorporateSubAccountIpDissociateDeleteRequest**](CorporateSubAccountIpDissociateDeleteRequest.md) |  | [optional] |

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## corporate_sub_account_key_post

> <CreateApiKeyResponse> corporate_sub_account_key_post(opts)

Create an API key for a sub-account

This endpoint will generate an API v3 key for a sub account

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

api_instance = Brevo::MasterAccountApi.new
opts = {
  corporate_sub_account_key_post_request: Brevo::CorporateSubAccountKeyPostRequest.new({id: 3232323, name: 'My Api Key'}) # CorporateSubAccountKeyPostRequest | 
}

begin
  # Create an API key for a sub-account
  result = api_instance.corporate_sub_account_key_post(opts)
  p result
rescue Brevo::ApiError => e
  puts "Error when calling MasterAccountApi->corporate_sub_account_key_post: #{e}"
end
```

#### Using the corporate_sub_account_key_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateApiKeyResponse>, Integer, Hash)> corporate_sub_account_key_post_with_http_info(opts)

```ruby
begin
  # Create an API key for a sub-account
  data, status_code, headers = api_instance.corporate_sub_account_key_post_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateApiKeyResponse>
rescue Brevo::ApiError => e
  puts "Error when calling MasterAccountApi->corporate_sub_account_key_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **corporate_sub_account_key_post_request** | [**CorporateSubAccountKeyPostRequest**](CorporateSubAccountKeyPostRequest.md) |  | [optional] |

### Return type

[**CreateApiKeyResponse**](CreateApiKeyResponse.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## corporate_sub_account_post

> <CreateSubAccountResponse> corporate_sub_account_post(create_sub_account)

Create a new sub-account under a master account.

This endpoint will create a new sub-account under a master account

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

api_instance = Brevo::MasterAccountApi.new
create_sub_account = Brevo::CreateSubAccount.new({company_name: 'company_name_example', email: 'email_example'}) # CreateSubAccount | Request body with sub-account organization name

begin
  # Create a new sub-account under a master account.
  result = api_instance.corporate_sub_account_post(create_sub_account)
  p result
rescue Brevo::ApiError => e
  puts "Error when calling MasterAccountApi->corporate_sub_account_post: #{e}"
end
```

#### Using the corporate_sub_account_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateSubAccountResponse>, Integer, Hash)> corporate_sub_account_post_with_http_info(create_sub_account)

```ruby
begin
  # Create a new sub-account under a master account.
  data, status_code, headers = api_instance.corporate_sub_account_post_with_http_info(create_sub_account)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateSubAccountResponse>
rescue Brevo::ApiError => e
  puts "Error when calling MasterAccountApi->corporate_sub_account_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_sub_account** | [**CreateSubAccount**](CreateSubAccount.md) | Request body with sub-account organization name |  |

### Return type

[**CreateSubAccountResponse**](CreateSubAccountResponse.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## corporate_sub_account_sso_token_post

> <GetSsoToken> corporate_sub_account_sso_token_post(opts)

Generate SSO token to access sub-account

This endpoint generates an sso token to authenticate and access a sub-account of the master using the account endpoint https://account-app.brevo.com/account/login/sub-account/sso/[token], where [token] will be replaced by the actual token.

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

api_instance = Brevo::MasterAccountApi.new
opts = {
  corporate_sub_account_sso_token_post_request: Brevo::CorporateSubAccountSsoTokenPostRequest.new({id: 3232323}) # CorporateSubAccountSsoTokenPostRequest | 
}

begin
  # Generate SSO token to access sub-account
  result = api_instance.corporate_sub_account_sso_token_post(opts)
  p result
rescue Brevo::ApiError => e
  puts "Error when calling MasterAccountApi->corporate_sub_account_sso_token_post: #{e}"
end
```

#### Using the corporate_sub_account_sso_token_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetSsoToken>, Integer, Hash)> corporate_sub_account_sso_token_post_with_http_info(opts)

```ruby
begin
  # Generate SSO token to access sub-account
  data, status_code, headers = api_instance.corporate_sub_account_sso_token_post_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetSsoToken>
rescue Brevo::ApiError => e
  puts "Error when calling MasterAccountApi->corporate_sub_account_sso_token_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **corporate_sub_account_sso_token_post_request** | [**CorporateSubAccountSsoTokenPostRequest**](CorporateSubAccountSsoTokenPostRequest.md) |  | [optional] |

### Return type

[**GetSsoToken**](GetSsoToken.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## corporate_user_invitation_action_email_put

> <CorporateUserInvitationActionEmailPut200Response> corporate_user_invitation_action_email_put(action, email)

Resend / cancel admin user invitation

This endpoint will allow the user to:  - Resend an admin user invitation - Cancel an admin user invitation 

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

api_instance = Brevo::MasterAccountApi.new
action = 'resend' # String | Action to be performed (cancel / resend)
email = 'email_example' # String | Email address of the recipient

begin
  # Resend / cancel admin user invitation
  result = api_instance.corporate_user_invitation_action_email_put(action, email)
  p result
rescue Brevo::ApiError => e
  puts "Error when calling MasterAccountApi->corporate_user_invitation_action_email_put: #{e}"
end
```

#### Using the corporate_user_invitation_action_email_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CorporateUserInvitationActionEmailPut200Response>, Integer, Hash)> corporate_user_invitation_action_email_put_with_http_info(action, email)

```ruby
begin
  # Resend / cancel admin user invitation
  data, status_code, headers = api_instance.corporate_user_invitation_action_email_put_with_http_info(action, email)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CorporateUserInvitationActionEmailPut200Response>
rescue Brevo::ApiError => e
  puts "Error when calling MasterAccountApi->corporate_user_invitation_action_email_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **action** | **String** | Action to be performed (cancel / resend) |  |
| **email** | **String** | Email address of the recipient |  |

### Return type

[**CorporateUserInvitationActionEmailPut200Response**](CorporateUserInvitationActionEmailPut200Response.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## corporate_user_revoke_email_delete

> corporate_user_revoke_email_delete(email)

Revoke an admin user

This endpoint allows to revoke/remove an invited member of your Admin account

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

api_instance = Brevo::MasterAccountApi.new
email = 'email_example' # String | Email of the invited user

begin
  # Revoke an admin user
  api_instance.corporate_user_revoke_email_delete(email)
rescue Brevo::ApiError => e
  puts "Error when calling MasterAccountApi->corporate_user_revoke_email_delete: #{e}"
end
```

#### Using the corporate_user_revoke_email_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> corporate_user_revoke_email_delete_with_http_info(email)

```ruby
begin
  # Revoke an admin user
  data, status_code, headers = api_instance.corporate_user_revoke_email_delete_with_http_info(email)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Brevo::ApiError => e
  puts "Error when calling MasterAccountApi->corporate_user_revoke_email_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | **String** | Email of the invited user |  |

### Return type

nil (empty response body)

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

api_instance = Brevo::MasterAccountApi.new
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
  puts "Error when calling MasterAccountApi->get_account_activity: #{e}"
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
  puts "Error when calling MasterAccountApi->get_account_activity_with_http_info: #{e}"
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


## get_corporate_invited_users_list

> <GetCorporateInvitedUsersList> get_corporate_invited_users_list

Get the list of all admin users

This endpoint allows you to list all Admin users of your Admin account

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

api_instance = Brevo::MasterAccountApi.new

begin
  # Get the list of all admin users
  result = api_instance.get_corporate_invited_users_list
  p result
rescue Brevo::ApiError => e
  puts "Error when calling MasterAccountApi->get_corporate_invited_users_list: #{e}"
end
```

#### Using the get_corporate_invited_users_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetCorporateInvitedUsersList>, Integer, Hash)> get_corporate_invited_users_list_with_http_info

```ruby
begin
  # Get the list of all admin users
  data, status_code, headers = api_instance.get_corporate_invited_users_list_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetCorporateInvitedUsersList>
rescue Brevo::ApiError => e
  puts "Error when calling MasterAccountApi->get_corporate_invited_users_list_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**GetCorporateInvitedUsersList**](GetCorporateInvitedUsersList.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_corporate_user_permission

> <GetCorporateUserPermission> get_corporate_user_permission(email)

Check admin user permissions

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

api_instance = Brevo::MasterAccountApi.new
email = 'email_example' # String | Email of the invited user.

begin
  # Check admin user permissions
  result = api_instance.get_corporate_user_permission(email)
  p result
rescue Brevo::ApiError => e
  puts "Error when calling MasterAccountApi->get_corporate_user_permission: #{e}"
end
```

#### Using the get_corporate_user_permission_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetCorporateUserPermission>, Integer, Hash)> get_corporate_user_permission_with_http_info(email)

```ruby
begin
  # Check admin user permissions
  data, status_code, headers = api_instance.get_corporate_user_permission_with_http_info(email)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetCorporateUserPermission>
rescue Brevo::ApiError => e
  puts "Error when calling MasterAccountApi->get_corporate_user_permission_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | **String** | Email of the invited user. |  |

### Return type

[**GetCorporateUserPermission**](GetCorporateUserPermission.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_sub_account_groups

> <Array<GetSubAccountGroups200ResponseInner>> get_sub_account_groups

Get the list of groups

This endpoint allows you to list all groups created on your Admin account.

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

api_instance = Brevo::MasterAccountApi.new

begin
  # Get the list of groups
  result = api_instance.get_sub_account_groups
  p result
rescue Brevo::ApiError => e
  puts "Error when calling MasterAccountApi->get_sub_account_groups: #{e}"
end
```

#### Using the get_sub_account_groups_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<GetSubAccountGroups200ResponseInner>>, Integer, Hash)> get_sub_account_groups_with_http_info

```ruby
begin
  # Get the list of groups
  data, status_code, headers = api_instance.get_sub_account_groups_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<GetSubAccountGroups200ResponseInner>>
rescue Brevo::ApiError => e
  puts "Error when calling MasterAccountApi->get_sub_account_groups_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;GetSubAccountGroups200ResponseInner&gt;**](GetSubAccountGroups200ResponseInner.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## invite_admin_user

> <CorporateGroupPost201Response> invite_admin_user(invite_admin_user)

Send invitation to an admin user

`This endpoint allows you to invite a member to manage the Admin account  Features and their respective permissions are as below:  - `my_plan`:   - \"all\" - `api`:   - \"none\" - `user_management`:   - \"all\" - `app_management` | Not available in ENTv2:   - \"all\"  **Note**: - If `all_features_access: false` then only privileges are required otherwise if `true` then it's assumed that all permissions will be there for the invited admin user. 

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

api_instance = Brevo::MasterAccountApi.new
invite_admin_user = Brevo::InviteAdminUser.new({email: 'inviteuser@example.com', all_features_access: true, privileges: [Brevo::InviteAdminUserPrivilegesInner.new]}) # InviteAdminUser | Payload to send an invitation

begin
  # Send invitation to an admin user
  result = api_instance.invite_admin_user(invite_admin_user)
  p result
rescue Brevo::ApiError => e
  puts "Error when calling MasterAccountApi->invite_admin_user: #{e}"
end
```

#### Using the invite_admin_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CorporateGroupPost201Response>, Integer, Hash)> invite_admin_user_with_http_info(invite_admin_user)

```ruby
begin
  # Send invitation to an admin user
  data, status_code, headers = api_instance.invite_admin_user_with_http_info(invite_admin_user)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CorporateGroupPost201Response>
rescue Brevo::ApiError => e
  puts "Error when calling MasterAccountApi->invite_admin_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **invite_admin_user** | [**InviteAdminUser**](InviteAdminUser.md) | Payload to send an invitation |  |

### Return type

[**CorporateGroupPost201Response**](CorporateGroupPost201Response.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

