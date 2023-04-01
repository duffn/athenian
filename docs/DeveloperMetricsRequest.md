# Athenian::DeveloperMetricsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_for** | [**Array&lt;ForSetDevelopers&gt;**](ForSetDevelopers.md) | Sets of developers and repositories to calculate the metrics for. |  |
| **metrics** | [**Array&lt;DeveloperMetricID&gt;**](DeveloperMetricID.md) | Requested metric identifiers. |  |
| **date_from** | **Date** | Date from when to start measuring the metrics. |  |
| **date_to** | **Date** | Date until which to measure the metrics. |  |
| **timezone** | **Integer** | Local time zone offset in minutes, used to adjust &#x60;date_from&#x60; and &#x60;date_to&#x60;. | [optional] |
| **account** | **Integer** | Session account ID. |  |
| **granularities** | **Array&lt;String&gt;** | The splits of the specified time range. |  |

## Example

```ruby
require 'athenian'

instance = Athenian::DeveloperMetricsRequest.new(
  _for: null,
  metrics: null,
  date_from: null,
  date_to: null,
  timezone: null,
  account: null,
  granularities: null
)
```

