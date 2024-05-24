# Brevo::UpdateExternalFeed

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of the feed | [optional] |
| **url** | **String** | URL of the feed | [optional] |
| **auth_type** | **String** | Auth type of the feed:  * &#x60;basic&#x60;  * &#x60;token&#x60;  * &#x60;noAuth&#x60;  | [optional] |
| **username** | **String** | Username for authType &#x60;basic&#x60; | [optional] |
| **password** | **String** | Password for authType &#x60;basic&#x60; | [optional] |
| **token** | **String** | Token for authType &#x60;token&#x60; | [optional] |
| **headers** | [**Array&lt;GetExternalFeedByUUIDHeadersInner&gt;**](GetExternalFeedByUUIDHeadersInner.md) | Custom headers for the feed | [optional] |
| **max_retries** | **Integer** | Maximum number of retries on the feed url | [optional][default to 5] |
| **cache** | **Boolean** | Toggle caching of feed url response | [optional][default to false] |

## Example

```ruby
require 'brevo'

instance = Brevo::UpdateExternalFeed.new(
  name: New feed,
  url: http://requestb.in/173lyyx1,
  auth_type: null,
  username: user,
  password: password,
  token: eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c,
  headers: [{&quot;name&quot;:&quot;header1&quot;,&quot;value&quot;:&quot;value1&quot;},{&quot;name&quot;:&quot;header2&quot;,&quot;value&quot;:&quot;value2&quot;}],
  max_retries: 5,
  cache: true
)
```

