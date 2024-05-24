# Brevo::UserApi

All URIs are relative to *https://api.brevo.com/v3*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**edit_user_permission**](UserApi.md#edit_user_permission) | **POST** /organization/user/update/permissions | Update permission for a user |
| [**get_invited_users_list**](UserApi.md#get_invited_users_list) | **GET** /organization/invited/users | Get the list of all your users |
| [**get_user_permission**](UserApi.md#get_user_permission) | **GET** /organization/user/{email}/permissions | Check user permission |
| [**inviteuser**](UserApi.md#inviteuser) | **POST** /organization/user/invitation/send | Send invitation to user |
| [**put_revoke_user_permission**](UserApi.md#put_revoke_user_permission) | **PUT** /organization/user/invitation/revoke/{email} | Revoke user permission |
| [**putresendcancelinvitation**](UserApi.md#putresendcancelinvitation) | **PUT** /organization/user/invitation/{action}/{email} | Resend / Cancel invitation |


## edit_user_permission

> <UpdateUserResponse> edit_user_permission(inviteuser)

Update permission for a user

`Feature` - A Feature represents a specific functionality like Email campaign, Deals, Calls, Automations, etc. on Brevo. While inviting a user, determine which feature you want to manage access to. You must specify the feature accurately to avoid errors.  `Permission` - A Permission defines the level of access or control a user has over a specific feature. While inviting user, decide on the permission level required for the selected feature. Make sure the chosen permission is related to the selected feature.  Features and their respective permissions are as below:  - `email_campaigns`:   - \"create_edit_delete\"   - \"send_schedule_suspend\" - `sms_campaigns`:   - \"create_edit_delete\"   - \"send_schedule_suspend\" - `contacts`:   - \"view\"   - \"create_edit_delete\"   - \"import\"   - \"export\"   - \"list_and_attributes\"   - \"forms\" - `templates`:   - \"create_edit_delete\"   - \"activate_deactivate\" - `workflows`:   - \"create_edit_delete\"   - \"activate_deactivate_pause\"   - \"settings\" - `facebook_ads`:   - \"create_edit_delete\"   - \"schedule_pause\" - `landing_pages`:   - \"all\" - `transactional_emails`:   - \"settings\"   - \"logs\" - `smtp_api`:   - \"smtp\"   - \"api_keys\"   - \"authorized_ips\" - `user_management`:   - \"all\" - `sales_platform`:   - \"manage_owned_deals_tasks_companies\"   - \"manage_others_deals_tasks_companies\"   - \"reports\"   - \"settings\" - `phone`:   - \"all\" - `conversations`:   - \"access\"   - \"assign\"   - \"configure\" - `senders_domains_dedicated_ips`:   - \"senders_management\"   - \"domains_management\"   - \"dedicated_ips_management\" - `push_notifications`:   - \"view\"   - \"create_edit_delete\"   - \"send\"   - \"settings\"  **Note**: - The privileges array remains the same as in the send invitation; the user simply needs to provide the permissions that need to be updated. - The availability of feature and its permission depends on your current plan. Please select the features and permissions accordingly. 

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

api_instance = Brevo::UserApi.new
inviteuser = Brevo::Inviteuser.new({email: 'inviteuser@example.com', all_features_access: true, privileges: [Brevo::InviteuserPrivilegesInner.new]}) # Inviteuser | Values to create an invitation

begin
  # Update permission for a user
  result = api_instance.edit_user_permission(inviteuser)
  p result
rescue Brevo::ApiError => e
  puts "Error when calling UserApi->edit_user_permission: #{e}"
end
```

#### Using the edit_user_permission_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateUserResponse>, Integer, Hash)> edit_user_permission_with_http_info(inviteuser)

```ruby
begin
  # Update permission for a user
  data, status_code, headers = api_instance.edit_user_permission_with_http_info(inviteuser)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateUserResponse>
rescue Brevo::ApiError => e
  puts "Error when calling UserApi->edit_user_permission_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **inviteuser** | [**Inviteuser**](Inviteuser.md) | Values to create an invitation |  |

### Return type

[**UpdateUserResponse**](UpdateUserResponse.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_invited_users_list

> <GetInvitedUsersList> get_invited_users_list

Get the list of all your users

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

api_instance = Brevo::UserApi.new

begin
  # Get the list of all your users
  result = api_instance.get_invited_users_list
  p result
rescue Brevo::ApiError => e
  puts "Error when calling UserApi->get_invited_users_list: #{e}"
end
```

#### Using the get_invited_users_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetInvitedUsersList>, Integer, Hash)> get_invited_users_list_with_http_info

```ruby
begin
  # Get the list of all your users
  data, status_code, headers = api_instance.get_invited_users_list_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetInvitedUsersList>
rescue Brevo::ApiError => e
  puts "Error when calling UserApi->get_invited_users_list_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**GetInvitedUsersList**](GetInvitedUsersList.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_user_permission

> <GetUserPermission> get_user_permission(email)

Check user permission

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

api_instance = Brevo::UserApi.new
email = 'email_example' # String | Email of the invited user.

begin
  # Check user permission
  result = api_instance.get_user_permission(email)
  p result
rescue Brevo::ApiError => e
  puts "Error when calling UserApi->get_user_permission: #{e}"
end
```

#### Using the get_user_permission_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetUserPermission>, Integer, Hash)> get_user_permission_with_http_info(email)

```ruby
begin
  # Check user permission
  data, status_code, headers = api_instance.get_user_permission_with_http_info(email)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetUserPermission>
rescue Brevo::ApiError => e
  puts "Error when calling UserApi->get_user_permission_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | **String** | Email of the invited user. |  |

### Return type

[**GetUserPermission**](GetUserPermission.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## inviteuser

> <InviteuserResponse> inviteuser(inviteuser)

Send invitation to user

`Feature` - A Feature represents a specific functionality like Email campaign, Deals, Calls, Automations, etc. on Brevo. While inviting a user, determine which feature you want to manage access to. You must specify the feature accurately to avoid errors.  `Permission` - A Permission defines the level of access or control a user has over a specific feature. While inviting user, decide on the permission level required for the selected feature. Make sure the chosen permission is related to the selected feature.  Features and their respective permissions are as below:  - `email_campaigns`:   - \"create_edit_delete\"   - \"send_schedule_suspend\" - `sms_campaigns`:   - \"create_edit_delete\"   - \"send_schedule_suspend\" - `contacts`:   - \"view\"   - \"create_edit_delete\"   - \"import\"   - \"export\"   - \"list_and_attributes\"   - \"forms\" - `templates`:   - \"create_edit_delete\"   - \"activate_deactivate\" - `workflows`:   - \"create_edit_delete\"   - \"activate_deactivate_pause\"   - \"settings\" - `facebook_ads`:   - \"create_edit_delete\"   - \"schedule_pause\" - `landing_pages`:   - \"all\" - `transactional_emails`:   - \"settings\"   - \"logs\" - `smtp_api`:   - \"smtp\"   - \"api_keys\"   - \"authorized_ips\" - `user_management`:   - \"all\" - `sales_platform`:   - \"manage_owned_deals_tasks_companies\"   - \"manage_others_deals_tasks_companies\"   - \"reports\"   - \"settings\" - `phone`:   - \"all\" - `conversations`:   - \"access\"   - \"assign\"   - \"configure\" - `senders_domains_dedicated_ips`:   - \"senders_management\"   - \"domains_management\"   - \"dedicated_ips_management\" - `push_notifications`:   - \"view\"   - \"create_edit_delete\"   - \"send\"   - \"settings\"  **Note**: - If `all_features_access: false` then only privileges are required otherwise if `true` then it's assumed that all permissions will be there for the invited user. - The availability of feature and its permission depends on your current plan. Please select the features and permissions accordingly. 

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

api_instance = Brevo::UserApi.new
inviteuser = Brevo::Inviteuser.new({email: 'inviteuser@example.com', all_features_access: true, privileges: [Brevo::InviteuserPrivilegesInner.new]}) # Inviteuser | Values to create an invitation

begin
  # Send invitation to user
  result = api_instance.inviteuser(inviteuser)
  p result
rescue Brevo::ApiError => e
  puts "Error when calling UserApi->inviteuser: #{e}"
end
```

#### Using the inviteuser_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InviteuserResponse>, Integer, Hash)> inviteuser_with_http_info(inviteuser)

```ruby
begin
  # Send invitation to user
  data, status_code, headers = api_instance.inviteuser_with_http_info(inviteuser)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InviteuserResponse>
rescue Brevo::ApiError => e
  puts "Error when calling UserApi->inviteuser_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **inviteuser** | [**Inviteuser**](Inviteuser.md) | Values to create an invitation |  |

### Return type

[**InviteuserResponse**](InviteuserResponse.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## put_revoke_user_permission

> <PutRevokeUserPermissionResponse> put_revoke_user_permission(email)

Revoke user permission

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

api_instance = Brevo::UserApi.new
email = 'email_example' # String | Email of the invited user.

begin
  # Revoke user permission
  result = api_instance.put_revoke_user_permission(email)
  p result
rescue Brevo::ApiError => e
  puts "Error when calling UserApi->put_revoke_user_permission: #{e}"
end
```

#### Using the put_revoke_user_permission_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PutRevokeUserPermissionResponse>, Integer, Hash)> put_revoke_user_permission_with_http_info(email)

```ruby
begin
  # Revoke user permission
  data, status_code, headers = api_instance.put_revoke_user_permission_with_http_info(email)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PutRevokeUserPermissionResponse>
rescue Brevo::ApiError => e
  puts "Error when calling UserApi->put_revoke_user_permission_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | **String** | Email of the invited user. |  |

### Return type

[**PutRevokeUserPermissionResponse**](PutRevokeUserPermissionResponse.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## putresendcancelinvitation

> <PutresendcancelinvitationResponse> putresendcancelinvitation(action, email)

Resend / Cancel invitation

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

api_instance = Brevo::UserApi.new
action = 'resend' # String | action
email = 'email_example' # String | Email of the invited user.

begin
  # Resend / Cancel invitation
  result = api_instance.putresendcancelinvitation(action, email)
  p result
rescue Brevo::ApiError => e
  puts "Error when calling UserApi->putresendcancelinvitation: #{e}"
end
```

#### Using the putresendcancelinvitation_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PutresendcancelinvitationResponse>, Integer, Hash)> putresendcancelinvitation_with_http_info(action, email)

```ruby
begin
  # Resend / Cancel invitation
  data, status_code, headers = api_instance.putresendcancelinvitation_with_http_info(action, email)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PutresendcancelinvitationResponse>
rescue Brevo::ApiError => e
  puts "Error when calling UserApi->putresendcancelinvitation_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **action** | **String** | action |  |
| **email** | **String** | Email of the invited user. |  |

### Return type

[**PutresendcancelinvitationResponse**](PutresendcancelinvitationResponse.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

