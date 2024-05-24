# Brevo::CreateEmailCampaign

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tag** | **String** | Tag of the campaign | [optional] |
| **sender** | [**CreateEmailCampaignSender**](CreateEmailCampaignSender.md) |  |  |
| **name** | **String** | Name of the campaign |  |
| **html_content** | **String** | Mandatory if htmlUrl and templateId are empty. Body of the message (HTML).  | [optional] |
| **html_url** | **String** | **Mandatory if htmlContent and templateId are empty**. Url to the message (HTML). For example: **https://html.domain.com**  | [optional] |
| **template_id** | **Integer** | **Mandatory if htmlContent and htmlUrl are empty**. Id of the transactional email template with status _active_. Used to copy only its content fetched from htmlContent/htmlUrl to an email campaign for RSS feature.  | [optional] |
| **scheduled_at** | **String** | Sending UTC date-time (YYYY-MM-DDTHH:mm:ss.SSSZ). **Prefer to pass your timezone in date-time format for accurate result**. If sendAtBestTime is set to true, your campaign will be sent according to the date passed (ignoring the time part). For example: **2017-06-01T12:30:00+02:00**  | [optional] |
| **subject** | **String** | Subject of the campaign. **Mandatory if abTesting is false**. Ignored if abTesting is true.  | [optional] |
| **preview_text** | **String** | Preview text or preheader of the email campaign | [optional] |
| **reply_to** | **String** | Email on which the campaign recipients will be able to reply to | [optional] |
| **to_field** | **String** | To personalize the **To** Field. If you want to include the first name and last name of your recipient, add **{FNAME} {LNAME}**. These contact attributes must already exist in your Brevo account. If input parameter **params** used please use **{{contact.FNAME}} {{contact.LNAME}}** for personalization  | [optional] |
| **recipients** | [**CreateEmailCampaignRecipients**](CreateEmailCampaignRecipients.md) |  | [optional] |
| **attachment_url** | **String** | Absolute url of the attachment (no local file). Extension allowed: #### xlsx, xls, ods, docx, docm, doc, csv, pdf, txt, gif, jpg, jpeg, png, tif, tiff, rtf, bmp, cgm, css, shtml, html, htm, zip, xml, ppt, pptx, tar, ez, ics, mobi, msg, pub and eps  | [optional] |
| **inline_image_activation** | **Boolean** | Use true to embedded the images in your email. Final size of the email should be less than **4MB**. Campaigns with embedded images can _not be sent to more than 5000 contacts_  | [optional][default to false] |
| **mirror_active** | **Boolean** | Use true to enable the mirror link | [optional] |
| **footer** | **String** | Footer of the email campaign | [optional] |
| **header** | **String** | Header of the email campaign | [optional] |
| **utm_campaign** | **String** | Customize the utm_campaign value. If this field is empty, the campaign name will be used. Only alphanumeric characters and spaces are allowed | [optional] |
| **params** | **Hash&lt;String, Object&gt;** | Pass the set of attributes to customize the type classic campaign. For example: **{\&quot;FNAME\&quot;:\&quot;Joe\&quot;, \&quot;LNAME\&quot;:\&quot;Doe\&quot;}**. Only available if **type** is **classic**. It&#39;s considered only if campaign is in _New Template Language format_. The New Template Language is dependent on the values of **subject, htmlContent/htmlUrl, sender.name &amp; toField**  | [optional] |
| **send_at_best_time** | **Boolean** | Set this to true if you want to send your campaign at best time. | [optional][default to false] |
| **ab_testing** | **Boolean** | Status of A/B Test. abTesting &#x3D; false means it is disabled &amp; abTesting &#x3D; true means it is enabled. **subjectA, subjectB, splitRule, winnerCriteria &amp; winnerDelay** will be considered when abTesting is set to true. subjectA &amp; subjectB are mandatory together &amp; subject if passed is ignored. **Can be set to true only if sendAtBestTime is false**. You will be able to set up two subject lines for your campaign and send them to a random sample of your total recipients. Half of the test group will receive version A, and the other half will receive version B  | [optional][default to false] |
| **subject_a** | **String** | Subject A of the campaign. **Mandatory if abTesting &#x3D; true**. subjectA &amp; subjectB should have unique value  | [optional] |
| **subject_b** | **String** | Subject B of the campaign. **Mandatory if abTesting &#x3D; true**. subjectA &amp; subjectB should have unique value  | [optional] |
| **split_rule** | **Integer** | Add the size of your test groups. **Mandatory if abTesting &#x3D; true &amp; &#39;recipients&#39; is passed**. We&#39;ll send version A and B to a random sample of recipients, and then the winning version to everyone else  | [optional] |
| **winner_criteria** | **String** | Choose the metrics that will determinate the winning version. **Mandatory if _splitRule_ &gt;&#x3D; 1 and &lt; 50**. If splitRule &#x3D; 50, &#x60;winnerCriteria&#x60; is ignored if passed  | [optional] |
| **winner_delay** | **Integer** | Choose the duration of the test in hours. Maximum is 7 days, pass 24*7 &#x3D; 168 hours. The winning version will be sent at the end of the test. **Mandatory if _splitRule_ &gt;&#x3D; 1 and &lt; 50**. If splitRule &#x3D; 50, &#x60;winnerDelay&#x60; is ignored if passed  | [optional] |
| **ip_warmup_enable** | **Boolean** | **Available for dedicated ip clients**. Set this to true if you wish to warm up your ip.  | [optional][default to false] |
| **initial_quota** | **Integer** | **Mandatory if ipWarmupEnable is set to true**. Set an initial quota greater than 1 for warming up your ip. We recommend you set a value of 3000.  | [optional] |
| **increase_rate** | **Integer** | **Mandatory if ipWarmupEnable is set to true**. Set a percentage increase rate for warming up your ip. We recommend you set the increase rate to 30% per day. If you want to send the same number of emails every day, set the daily increase value to 0%.  | [optional] |
| **unsubscription_page_id** | **String** | Enter an unsubscription page id. The page id is a 24 digit alphanumeric id that can be found in the URL when editing the page. If not entered, then the default unsubscription page will be used.  | [optional] |
| **update_form_id** | **String** | **Mandatory if templateId is used containing the {{ update_profile }} tag**. Enter an update profile form id. The form id is a 24 digit alphanumeric id that can be found in the URL when editing the form. If not entered, then the default update profile form will be used.  | [optional] |

## Example

```ruby
require 'brevo'

instance = Brevo::CreateEmailCampaign.new(
  tag: Newsletter,
  sender: null,
  name: Newsletter - May 2017,
  html_content: &lt;!DOCTYPE html&gt; &lt;html&gt; &lt;body&gt; &lt;h1&gt;Confirm you email&lt;/h1&gt; &lt;p&gt;Please confirm your email address by clicking on the link below&lt;/p&gt; &lt;/body&gt; &lt;/html&gt;,
  html_url: https://html.domain.com,
  template_id: null,
  scheduled_at: 2017-06-01T12:30:00+02:00,
  subject: Discover the New Collection !,
  preview_text: Thanks for your order!,
  reply_to: support@myshop.com,
  to_field: {FNAME} {LNAME},
  recipients: null,
  attachment_url: https://attachment.domain.com,
  inline_image_activation: true,
  mirror_active: true,
  footer: [DEFAULT_FOOTER],
  header: [DEFAULT_HEADER],
  utm_campaign: NL_05_2017,
  params: {&quot;FNAME&quot;:&quot;Joe&quot;,&quot;LNAME&quot;:&quot;Doe&quot;},
  send_at_best_time: true,
  ab_testing: true,
  subject_a: Discover the New Collection!,
  subject_b: Want to discover the New Collection?,
  split_rule: 50,
  winner_criteria: open,
  winner_delay: 50,
  ip_warmup_enable: true,
  initial_quota: 3000,
  increase_rate: 70,
  unsubscription_page_id: 62cbb7fabbe85021021aac52,
  update_form_id: 6313436b9ad40e23b371d095
)
```

