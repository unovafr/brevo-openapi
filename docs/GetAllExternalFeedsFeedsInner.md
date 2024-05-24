# Brevo::GetAllExternalFeedsFeedsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | ID of the feed |  |
| **name** | **String** | Name of the feed |  |
| **url** | **String** | URL of the feed |  |
| **auth_type** | **String** | Auth type of the feed: * &#x60;basic&#x60; * &#x60;token&#x60; * &#x60;noAuth&#x60;  |  |
| **username** | **String** | Username for authType &#x60;basic&#x60; | [optional] |
| **password** | **String** | Password for authType &#x60;basic&#x60; | [optional] |
| **token** | **String** | Token for authType &#x60;token&#x60; | [optional] |
| **headers** | [**Array&lt;GetExternalFeedByUUIDHeadersInner&gt;**](GetExternalFeedByUUIDHeadersInner.md) | Custom headers for the feed |  |
| **max_retries** | **Integer** | Maximum number of retries on the feed url | [default to 5] |
| **cache** | **Boolean** | Toggle caching of feed url response |  |
| **created_at** | **Time** | Datetime on which the feed was created |  |
| **modified_at** | **Time** | Datetime on which the feed was modified |  |

## Example

```ruby
require 'brevo'

instance = Brevo::GetAllExternalFeedsFeedsInner.new(
  id: 54377442-20a2-4c20-b761-d636c72de7b7,
  name: New feed,
  url: http://requestb.in/173lyyx1,
  auth_type: null,
  username: user,
  password: password,
  token: eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c,
  headers: null,
  max_retries: 5,
  cache: true,
  created_at: 2022-10-06T05:03:47.053Z,
  modified_at: 2022-10-06T05:03:47.053Z
)
```

