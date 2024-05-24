# Brevo::GetAccountActivityLogsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **action** | **String** | Type of activity in the account. |  |
| **date** | **String** | Time of the activity. |  |
| **user_email** | **String** | Email address of the user who performed activity in the account. |  |
| **user_ip** | **String** | IP address of the user who performed activity in the account. |  |
| **user_agent** | **String** | Browser details of the user who performed the activity. |  |

## Example

```ruby
require 'brevo'

instance = Brevo::GetAccountActivityLogsInner.new(
  action: login-success,
  date: 2023-03-27T16:30:00Z,
  user_email: test@mycompany.com,
  user_ip: 192.158.1.38,
  user_agent: Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us)
)
```

