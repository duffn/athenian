# Athenian::CalculatedPullRequestMetrics

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **calculated** | [**Array&lt;CalculatedPullRequestMetricsItem&gt;**](CalculatedPullRequestMetricsItem.md) | Values of the requested metrics through time. |  |
| **metrics** | [**Array&lt;PullRequestMetricID&gt;**](PullRequestMetricID.md) | Repeats &#x60;PullRequestMetricsRequest.metrics&#x60;. |  |
| **date_from** | **Date** | Repeats &#x60;PullRequestMetricsRequest.date_from&#x60;. |  |
| **date_to** | **Date** | Repeats &#x60;PullRequestMetricsRequest.date_to&#x60;. |  |
| **timezone** | **Integer** | Local time zone offset in minutes, used to adjust &#x60;date_from&#x60; and &#x60;date_to&#x60;. | [optional] |
| **granularities** | **Array&lt;String&gt;** | The splits of the specified time range. |  |
| **quantiles** | **Array&lt;Float&gt;** | Cut the distributions at certain quantiles. The default values are [0, 1] which means no cutting. | [optional] |
| **exclude_inactive** | **Boolean** | Repeats &#x60;PullRequestMetricsRequest.exclude_inactive&#x60;. |  |

## Example

```ruby
require 'athenian'

instance = Athenian::CalculatedPullRequestMetrics.new(
  calculated: null,
  metrics: null,
  date_from: null,
  date_to: null,
  timezone: null,
  granularities: null,
  quantiles: [0,0.95],
  exclude_inactive: null
)
```

