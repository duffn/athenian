# Athenian::CodeCheckMetricsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_for** | [**Array&lt;ForSetCodeChecks&gt;**](ForSetCodeChecks.md) | Sets of developers and repositories for which to calculate the metrics. The aggregation is &#x60;AND&#x60; between repositories and developers. The aggregation is &#x60;OR&#x60; inside both repositories and developers. |  |
| **metrics** | [**Array&lt;CodeCheckMetricID&gt;**](CodeCheckMetricID.md) | Requested metric identifiers. |  |
| **date_from** | **Date** | Date from when to start measuring the metrics. |  |
| **date_to** | **Date** | Date until which to measure the metrics. |  |
| **timezone** | **Integer** | Local time zone offset in minutes, used to adjust &#x60;date_from&#x60; and &#x60;date_to&#x60;. | [optional] |
| **granularities** | **Array&lt;String&gt;** | The splits of the specified time range. |  |
| **quantiles** | **Array&lt;Float&gt;** | Cut the distributions at certain quantiles. The default values are [0, 1] which means no cutting. | [optional] |
| **account** | **Integer** | Session account ID. |  |
| **split_by_check_runs** | **Boolean** | Calculate metrics separately for each number of check runs in suite. | [optional] |

## Example

```ruby
require 'athenian'

instance = Athenian::CodeCheckMetricsRequest.new(
  _for: null,
  metrics: null,
  date_from: null,
  date_to: null,
  timezone: null,
  granularities: null,
  quantiles: [0,0.95],
  account: null,
  split_by_check_runs: null
)
```

