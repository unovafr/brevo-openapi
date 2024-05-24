# Brevo::CreateDomainModelDnsRecords

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **dkim_record** | [**CreateDomainModelDnsRecordsDkimRecord**](CreateDomainModelDnsRecordsDkimRecord.md) |  | [optional] |
| **brevo_code** | [**CreateDomainModelDnsRecordsDkimRecord**](CreateDomainModelDnsRecordsDkimRecord.md) |  | [optional] |
| **dmarc_record** | [**CreateDomainModelDnsRecordsDkimRecord**](CreateDomainModelDnsRecordsDkimRecord.md) |  | [optional] |

## Example

```ruby
require 'brevo'

instance = Brevo::CreateDomainModelDnsRecords.new(
  dkim_record: null,
  brevo_code: null,
  dmarc_record: null
)
```

