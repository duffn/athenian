# Athenian::FilterEnvironmentsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account** | **Integer** | Account ID. |  |
| **repositories** | **Array** |  | [optional] |
| **date_from** | **Date** | Date from when to start looking for deployments. |  |
| **date_to** | **Date** | Date until which to look for deployments. |  |
| **timezone** | **Integer** | Local time zone offset in minutes, used to adjust &#x60;date_from&#x60; and &#x60;date_to&#x60;. | [optional] |

## Example

```ruby
require 'athenian'

instance = Athenian::FilterEnvironmentsRequest.new(
  account: null,
  repositories: null,
  date_from: null,
  date_to: null,
  timezone: null
)
```

