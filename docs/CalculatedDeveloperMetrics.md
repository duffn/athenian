# Athenian::CalculatedDeveloperMetrics

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **calculated** | [**Array&lt;CalculatedDeveloperMetricsItem&gt;**](CalculatedDeveloperMetricsItem.md) | Values of the requested metrics by developer through time. |  |
| **metrics** | [**Array&lt;DeveloperMetricID&gt;**](DeveloperMetricID.md) | Repeats &#x60;DeveloperMetricsRequest.metrics&#x60;. |  |
| **date_from** | **Date** | Repeats &#x60;DeveloperMetricsRequest.date_from&#x60;. |  |
| **date_to** | **Date** | Repeats &#x60;DeveloperMetricsRequest.date_to&#x60;. |  |
| **timezone** | **Integer** | Local time zone offset in minutes, used to adjust &#x60;date_from&#x60; and &#x60;date_to&#x60;. | [optional] |
| **granularities** | **Array&lt;String&gt;** | The splits of the specified time range. |  |

## Example

```ruby
require 'athenian'

instance = Athenian::CalculatedDeveloperMetrics.new(
  calculated: null,
  metrics: null,
  date_from: null,
  date_to: null,
  timezone: null,
  granularities: null
)
```

