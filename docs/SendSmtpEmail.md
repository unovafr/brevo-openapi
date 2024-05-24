# Brevo::SendSmtpEmail

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sender** | [**SendSmtpEmailSender**](SendSmtpEmailSender.md) |  | [optional] |
| **to** | [**Array&lt;SendSmtpEmailToInner&gt;**](SendSmtpEmailToInner.md) | **Mandatory if messageVersions are not passed, ignored if messageVersions are passed** List of email addresses and names (_optional_) of the recipients. For example, **[{\&quot;name\&quot;:\&quot;Jimmy\&quot;, \&quot;email\&quot;:\&quot;jimmy98@example.com\&quot;}, {\&quot;name\&quot;:\&quot;Joe\&quot;, \&quot;email\&quot;:\&quot;joe@example.com\&quot;}]**  | [optional] |
| **bcc** | [**Array&lt;SendSmtpEmailBccInner&gt;**](SendSmtpEmailBccInner.md) | List of email addresses and names (_optional_) of the recipients in bcc  | [optional] |
| **cc** | [**Array&lt;SendSmtpEmailCcInner&gt;**](SendSmtpEmailCcInner.md) | List of email addresses and names (_optional_) of the recipients in cc  | [optional] |
| **html_content** | **String** | HTML body of the message. **Mandatory if &#39;templateId&#39; is not passed, ignored if &#39;templateId&#39; is passed**  | [optional] |
| **text_content** | **String** | Plain Text body of the message. **Ignored if &#39;templateId&#39; is passed**  | [optional] |
| **subject** | **String** | Subject of the message. **Mandatory if &#39;templateId&#39; is not passed**  | [optional] |
| **reply_to** | [**SendSmtpEmailReplyTo**](SendSmtpEmailReplyTo.md) |  | [optional] |
| **attachment** | [**Array&lt;SendSmtpEmailAttachmentInner&gt;**](SendSmtpEmailAttachmentInner.md) | Pass the _absolute URL_ (**no local file**) or the _base64 content_ of the attachment along with the attachment name. **Mandatory if attachment content is passed**. For example, **[{\&quot;url\&quot;:\&quot;https://attachment.domain.com/myAttachmentFromUrl.jpg\&quot;, \&quot;name\&quot;:\&quot;myAttachmentFromUrl.jpg\&quot;}, {\&quot;content\&quot;:\&quot;base64 example content\&quot;, \&quot;name\&quot;:\&quot;myAttachmentFromBase64.jpg\&quot;}]**. Allowed extensions for attachment file: #### xlsx, xls, ods, docx, docm, doc, csv, pdf, txt, gif, jpg, jpeg, png, tif, tiff, rtf, bmp, cgm, css, shtml, html, htm, zip, xml, ppt, pptx, tar, ez, ics, mobi, msg, pub, eps, odt, mp3, m4a, m4v, wma, ogg, flac, wav, aif, aifc, aiff, mp4, mov, avi, mkv, mpeg, mpg, wmv, pkpass and xlsm. If &#x60;templateId&#x60; is passed and is in New Template Language format then both attachment url and content are accepted. If template is in Old template Language format, then &#x60;attachment&#x60; is ignored  | [optional] |
| **headers** | **Hash&lt;String, Object&gt;** | Pass the set of custom headers (_not the standard headers_) that shall be sent along the mail headers in the original email. **&#39;sender.ip&#39;** header can be set (**only for dedicated ip users**) to mention the IP to be used for sending transactional emails. Headers are allowed in &#x60;This-Case-Only&#x60; (i.e. words separated by hyphen with first letter of each word in capital letter), they will be converted to such case styling if not in this format in the request payload. For example, **{\&quot;sender.ip\&quot;:\&quot;1.2.3.4\&quot;, \&quot;X-Mailin-custom\&quot;:\&quot;some_custom_header\&quot;, \&quot;idempotencyKey\&quot;:\&quot;abc-123\&quot;}**.  | [optional] |
| **template_id** | **Integer** | Id of the template. | [optional] |
| **params** | **Hash&lt;String, Object&gt;** | Pass the set of attributes to customize the template. For example, **{\&quot;FNAME\&quot;:\&quot;Joe\&quot;, \&quot;LNAME\&quot;:\&quot;Doe\&quot;}**. It&#39;s **considered only if template is in New Template Language format**.  | [optional] |
| **message_versions** | [**Array&lt;SendSmtpEmailMessageVersionsInner&gt;**](SendSmtpEmailMessageVersionsInner.md) | You can customize and send out multiple versions of a mail. **templateId** can be customized only if global parameter contains templateId. **htmlContent and textContent** can be customized only if any of the two, htmlContent or textContent, is present in global parameters. Some global parameters such as **to(mandatory), bcc, cc, replyTo, subject** can also be customized specific to each version. Total number of recipients in one API request must not exceed 2000. However, you can still pass upto 99 recipients maximum in one message version. The size of individual params in all the messageVersions shall not exceed **100 KB** limit and that of cumulative params shall not exceed **1000 KB**. You can follow this **step-by-step guide** on how to use **messageVersions** to batch send emails - **https://developers.brevo.com/docs/batch-send-transactional-emails**  | [optional] |
| **tags** | **Array&lt;String&gt;** | Tag your emails to find them more easily | [optional] |
| **scheduled_at** | **Time** | UTC date-time on which the email has to schedule (YYYY-MM-DDTHH:mm:ss.SSSZ). Prefer to pass your timezone in date-time format for scheduling. There can be an expected delay of +5 minutes in scheduled email delivery. **Please note this feature is currently a public beta**. | [optional] |
| **batch_id** | **String** | Valid UUIDv4 batch id to identify the scheduled batches transactional email. If not passed we will create a valid UUIDv4 batch id at our end. | [optional] |

## Example

```ruby
require 'brevo'

instance = Brevo::SendSmtpEmail.new(
  sender: null,
  to: null,
  bcc: null,
  cc: null,
  html_content: &lt;!DOCTYPE html&gt; &lt;html&gt; &lt;body&gt; &lt;h1&gt;Confirm you email&lt;/h1&gt; &lt;p&gt;Please confirm your email address by clicking on the link below&lt;/p&gt; &lt;/body&gt; &lt;/html&gt;,
  text_content: Please confirm your email address by clicking on the link https://text.domain.com,
  subject: Login Email confirmation,
  reply_to: null,
  attachment: null,
  headers: {&quot;sender.ip&quot;:&quot;1.2.3.4&quot;,&quot;X-Mailin-custom&quot;:&quot;some_custom_header&quot;,&quot;idempotencyKey&quot;:&quot;abc-123&quot;},
  template_id: 2,
  params: {&quot;FNAME&quot;:&quot;Joe&quot;,&quot;LNAME&quot;:&quot;Doe&quot;},
  message_versions: null,
  tags: null,
  scheduled_at: 2022-04-05T12:30+02:00,
  batch_id: 5c6cfa04-eed9-42c2-8b5c-6d470d978e9d
)
```

