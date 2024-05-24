# Brevo::GetCorporateUserPermissionFeatureAccess

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_keys** | **Array&lt;String&gt;** | Permission on api keys | [optional] |
| **my_plan** | **Array&lt;String&gt;** | Permission on my plan | [optional] |
| **user_management** | **Array&lt;String&gt;** | Permission on user management | [optional] |
| **apps_management** | **Array&lt;String&gt;** | Permission on apps management | [optional] |

## Example

```ruby
require 'brevo'

instance = Brevo::GetCorporateUserPermissionFeatureAccess.new(
  api_keys: null,
  my_plan: null,
  user_management: null,
  apps_management: null
)
```

