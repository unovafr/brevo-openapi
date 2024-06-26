# Brevo::ConversationsMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Message ID. It can be used for further manipulations with the message. | [optional] |
| **type** | **String** | &#x60;\&quot;agent\&quot;&#x60; for agents’ messages, &#x60;\&quot;visitor\&quot;&#x60; for visitors’ messages. | [optional] |
| **text** | **String** | Message text or name of the attached file | [optional] |
| **visitor_id** | **String** | visitor’s ID | [optional] |
| **agent_id** | **String** | ID of the agent on whose behalf the message was sent (only in messages sent by an agent). | [optional] |
| **agent_name** | **String** | Agent’s name as displayed to the visitor. Only in the messages sent by an agent. | [optional] |
| **created_at** | **Integer** | Timestamp in milliseconds. | [optional] |
| **is_pushed** | **Boolean** | &#x60;true&#x60; for pushed messages | [optional] |
| **received_from** | **String** | In two-way integrations, messages sent via REST API can be marked with receivedFrom property and then filtered out when received in a webhook to avoid infinite loop. | [optional] |
| **file** | [**ConversationsMessageFile**](ConversationsMessageFile.md) |  | [optional] |

## Example

```ruby
require 'brevo'

instance = Brevo::ConversationsMessage.new(
  id: eYBEm3gq3zc5ayE2g,
  type: agent,
  text: Good morning! How can I help you?,
  visitor_id: kZMvWhf8npAu3H6qd57w2Hv6nh6rnxvg,
  agent_id: d9nKoegKSjmCtyK78,
  agent_name: Liz,
  created_at: 1470222622433,
  is_pushed: true,
  received_from: SuperAwesomeHelpdesk,
  file: null
)
```

