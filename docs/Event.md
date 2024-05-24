# Brevo::Event

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **event_name** | **String** | The name of the event that occurred. This is how you will find your event in Brevo. Limited to 255 characters, alphanumerical characters and - _ only. |  |
| **event_date** | **String** | Timestamp of when the event occurred (e.g. \&quot;2024-01-24T17:39:57+01:00\&quot;). If no value is passed, the timestamp of the event creation is used. | [optional] |
| **identifiers** | [**EventIdentifiers**](EventIdentifiers.md) |  |  |
| **contact_properties** | [**Hash&lt;String, EventContactPropertiesValue&gt;**](EventContactPropertiesValue.md) | Properties defining the state of the contact associated to this event. Useful to update contact attributes defined in your contacts database while passing the event. For example: **\&quot;FIRSTNAME\&quot;: \&quot;Jane\&quot; , \&quot;AGE\&quot;: 37** | [optional] |
| **event_properties** | [**Hash&lt;String, EventEventPropertiesValue&gt;**](EventEventPropertiesValue.md) | Properties of the event. Top level properties and nested properties can be used to better segment contacts and personalise workflow conditions. The following field type are supported: string, number, boolean (true/false), date (Timestamp e.g. \&quot;2024-01-24T17:39:57+01:00\&quot;). Keys are limited to 255 characters, alphanumerical characters and - _ only. Size is limited to 50Kb. | [optional] |

## Example

```ruby
require 'brevo'

instance = Brevo::Event.new(
  event_name: video_played,
  event_date: 2024-02-06T20:59:23.383Z,
  identifiers: null,
  contact_properties: {&quot;AGE&quot;:32,&quot;GENDER&quot;:&quot;FEMALE&quot;},
  event_properties: {&quot;video_title&quot;:&quot;Brevo — The most approachable CRM suite&quot;,&quot;vide_description&quot;:&quot;Create your free account today!&quot;,&quot;duration&quot;:142,&quot;autoplayed&quot;:false,&quot;upload_date&quot;:&quot;2023-11-24T12:09:10+01:00&quot;}
)
```

