# Brevo::SendSmtpEmailMessageVersionsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **to** | [**Array&lt;SendSmtpEmailToInner&gt;**](SendSmtpEmailToInner.md) | List of email addresses and names (_optional_) of the recipients. For example, **[{\&quot;name\&quot;:\&quot;Jimmy\&quot;, \&quot;email\&quot;:\&quot;jimmy98@example.com\&quot;}, {\&quot;name\&quot;:\&quot;Joe\&quot;, \&quot;email\&quot;:\&quot;joe@example.com\&quot;}]**  |  |
| **params** | **Hash&lt;String, Object&gt;** | Pass the set of attributes to customize the template. For example, **{\&quot;FNAME\&quot;:\&quot;Joe\&quot;, \&quot;LNAME\&quot;:\&quot;Doe\&quot;}**. It&#39;s **considered only if template is in New Template Language format**.  | [optional] |
| **bcc** | [**Array&lt;SendSmtpEmailBccInner&gt;**](SendSmtpEmailBccInner.md) | List of email addresses and names (_optional_) of the recipients in bcc  | [optional] |
| **cc** | [**Array&lt;SendSmtpEmailCcInner&gt;**](SendSmtpEmailCcInner.md) | List of email addresses and names (_optional_) of the recipients in cc  | [optional] |
| **reply_to** | [**SendSmtpEmailReplyTo**](SendSmtpEmailReplyTo.md) |  | [optional] |
| **subject** | **String** | Custom subject specific to message version  | [optional] |
| **html_content** | **String** | HTML body of the message. **Mandatory if &#39;templateId&#39; is not passed, ignored if &#39;templateId&#39; is passed**  | [optional] |
| **text_content** | **String** | Plain Text body of the message. **Ignored if &#39;templateId&#39; is passed**  | [optional] |

## Example

```ruby
require 'brevo'

instance = Brevo::SendSmtpEmailMessageVersionsInner.new(
  to: null,
  params: {&quot;FNAME&quot;:&quot;Joe&quot;,&quot;LNAME&quot;:&quot;Doe&quot;},
  bcc: null,
  cc: null,
  reply_to: null,
  subject: Login Email confirmation,
  html_content: &lt;!DOCTYPE html&gt; &lt;html&gt; &lt;body&gt; &lt;h1&gt;Confirm you email&lt;/h1&gt; &lt;p&gt;Please confirm your email address by clicking on the link below&lt;/p&gt; &lt;/body&gt; &lt;/html&gt;,
  text_content: Please confirm your email address by clicking on the link https://text.domain.com
)
```

