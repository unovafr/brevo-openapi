# Brevo::UpdateEmailCampaign

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tag** | **String** | Tag of the campaign | [optional] |
| **sender** | [**UpdateEmailCampaignSender**](UpdateEmailCampaignSender.md) |  | [optional] |
| **name** | **String** | Name of the campaign | [optional] |
| **html_content** | **String** | Body of the message (HTML version). If the campaign is designed using Drag &amp; Drop editor via HTML content, then the design page will not have Drag &amp; Drop editor access for that campaign. **REQUIRED if htmlUrl is empty**  | [optional] |
| **html_url** | **String** | Url which contents the body of the email message. **REQUIRED if htmlContent is empty**  | [optional] |
| **scheduled_at** | **String** | UTC date-time on which the campaign has to run (YYYY-MM-DDTHH:mm:ss.SSSZ). **Prefer to pass your timezone in date-time format for accurate result.** If sendAtBestTime is set to true, your campaign will be sent according to the date passed (ignoring the time part).  | [optional] |
| **subject** | **String** | Subject of the campaign | [optional] |
| **preview_text** | **String** | Preview text or preheader of the email campaign | [optional] |
| **reply_to** | **String** | Email on which campaign recipients will be able to reply to | [optional] |
| **to_field** | **String** | To personalize the **To** Field. If you want to include the first name and last name of your recipient, add **{FNAME} {LNAME}**. These contact attributes must already exist in your Brevo account. If input parameter **params** used please use **{{contact.FNAME}} {{contact.LNAME}}** for personalization  | [optional] |
| **recipients** | [**UpdateEmailCampaignRecipients**](UpdateEmailCampaignRecipients.md) |  | [optional] |
| **attachment_url** | **String** | Absolute url of the attachment (no local file). Extension allowed: #### xlsx, xls, ods, docx, docm, doc, csv, pdf, txt, gif, jpg, jpeg, png, tif, tiff, rtf, bmp, cgm, css, shtml, html, htm, zip, xml, ppt, pptx, tar, ez, ics, mobi, msg, pub and eps&#39;  | [optional] |
| **inline_image_activation** | **Boolean** | Status of inline image. inlineImageActivation &#x3D; false means image can’t be embedded, &amp; inlineImageActivation &#x3D; true means image can be embedded, in the email. You cannot send a campaign of more than **4MB** with images embedded in the email. Campaigns with the images embedded in the email _must be sent to less than 5000 contacts_.  | [optional][default to false] |
| **mirror_active** | **Boolean** | Status of mirror links in campaign. mirrorActive &#x3D; false means mirror links are deactivated, &amp; mirrorActive &#x3D; true means mirror links are activated, in the campaign | [optional] |
| **recurring** | **Boolean** | **FOR TRIGGER ONLY !** Type of trigger campaign.recurring &#x3D; false means contact can receive the same Trigger campaign only once, &amp; recurring &#x3D; true means contact can receive the same Trigger campaign several times  | [optional][default to false] |
| **footer** | **String** | Footer of the email campaign | [optional] |
| **header** | **String** | Header of the email campaign | [optional] |
| **utm_campaign** | **String** | Customize the utm_campaign value. If this field is empty, the campaign name will be used. Only alphanumeric characters and spaces are allowed | [optional] |
| **params** | **Hash&lt;String, Object&gt;** | Pass the set of attributes to customize the type classic campaign. For example: **{\&quot;FNAME\&quot;:\&quot;Joe\&quot;, \&quot;LNAME\&quot;:\&quot;Doe\&quot;}**. Only available if **type** is **classic**. It&#39;s considered only if campaign is in _New Template Language format_. The New Template Language is dependent on the values of **subject, htmlContent/htmlUrl, sender.name &amp; toField**  | [optional] |
| **send_at_best_time** | **Boolean** | Set this to true if you want to send your campaign at best time. Note:- **if true, warmup ip will be disabled.**  | [optional] |
| **ab_testing** | **Boolean** | Status of A/B Test. abTesting &#x3D; false means it is disabled &amp; abTesting &#x3D; true means it is enabled. **subjectA, subjectB, splitRule, winnerCriteria &amp; winnerDelay** will be considered when abTesting is set to true. subjectA &amp; subjectB are mandatory together &amp; subject if passed is ignored. **Can be set to true only if sendAtBestTime is false**. You will be able to set up two subject lines for your campaign and send them to a random sample of your total recipients. Half of the test group will receive version A, and the other half will receive version B  | [optional][default to false] |
| **subject_a** | **String** | Subject A of the campaign. **Mandatory if abTesting &#x3D; true**. subjectA &amp; subjectB should have unique value  | [optional] |
| **subject_b** | **String** | Subject B of the campaign. **Mandatory if abTesting &#x3D; true**. subjectA &amp; subjectB should have unique value  | [optional] |
| **split_rule** | **Integer** | Add the size of your test groups. **Mandatory if abTesting &#x3D; true &amp; &#39;recipients&#39; is passed**. We&#39;ll send version A and B to a random sample of recipients, and then the winning version to everyone else  | [optional] |
| **winner_criteria** | **String** | Choose the metrics that will determinate the winning version. **Mandatory if _splitRule_ &gt;&#x3D; 1 and &lt; 50**. If splitRule &#x3D; 50, &#x60;winnerCriteria&#x60; is ignored if passed  | [optional] |
| **winner_delay** | **Integer** | Choose the duration of the test in hours. Maximum is 7 days, pass 24*7 &#x3D; 168 hours. The winning version will be sent at the end of the test. **Mandatory if _splitRule_ &gt;&#x3D; 1 and &lt; 50**. If splitRule &#x3D; 50, &#x60;winnerDelay&#x60; is ignored if passed  | [optional] |
| **ip_warmup_enable** | **Boolean** | **Available for dedicated ip clients**. Set this to true if you wish to warm up your ip.  | [optional][default to false] |
| **initial_quota** | **Integer** | Set an initial quota greater than 1 for warming up your ip. We recommend you set a value of 3000.  | [optional] |
| **increase_rate** | **Integer** | Set a percentage increase rate for warming up your ip. We recommend you set the increase rate to 30% per day. If you want to send the same number of emails every day, set the daily increase value to 0%.  | [optional] |
| **unsubscription_page_id** | **String** | Enter an unsubscription page id. The page id is a 24 digit alphanumeric id that can be found in the URL when editing the page.  | [optional] |
| **update_form_id** | **String** | **Mandatory if templateId is used containing the {{ update_profile }} tag**. Enter an update profile form id. The form id is a 24 digit alphanumeric id that can be found in the URL when editing the form.  | [optional] |

## Example

```ruby
require 'brevo'

instance = Brevo::UpdateEmailCampaign.new(
  tag: Newsletter,
  sender: null,
  name: Newsletter - May 2017,
  html_content: &lt;!DOCTYPE html&gt; &lt;html&gt; &lt;body&gt; &lt;h1&gt;Confirm you email&lt;/h1&gt; &lt;p&gt;Please confirm your email address by clicking on the link below&lt;/p&gt; &lt;/body&gt; &lt;/html&gt;,
  html_url: https://html.domain.com,
  scheduled_at: 2017-06-01T12:30:00+02:00,
  subject: Discover the New Collection !,
  preview_text: Thanks for your order!,
  reply_to: support@myshop.com,
  to_field: {FNAME} {LNAME},
  recipients: null,
  attachment_url: https://attachment.domain.com,
  inline_image_activation: true,
  mirror_active: true,
  recurring: false,
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

