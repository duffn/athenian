# Athenian::PullRequestMetricsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_for** | [**Array&lt;ForSetPullRequests&gt;**](ForSetPullRequests.md) | Sets of developers and repositories for which to calculate the metrics. The aggregation is &#x60;AND&#x60; between repositories and developers. The aggregation is &#x60;OR&#x60; inside both repositories and developers. |  |
| **metrics** | [**Array&lt;PullRequestMetricID&gt;**](PullRequestMetricID.md) | Requested metric identifiers. |  |
| **date_from** | **Date** | Date from when to start measuring the metrics. |  |
| **date_to** | **Date** | Date until which to measure the metrics. |  |
| **timezone** | **Integer** | Local time zone offset in minutes, used to adjust &#x60;date_from&#x60; and &#x60;date_to&#x60;. | [optional] |
| **granularities** | **Array&lt;String&gt;** | The splits of the specified time range. |  |
| **quantiles** | **Array&lt;Float&gt;** | Cut the distributions at certain quantiles. The default values are [0, 1] which means no cutting. | [optional] |
| **exclude_inactive** | **Boolean** | Value indicating whether PRs without events in the given time frame shall be ignored. |  |
| **account** | **Integer** | Session account ID. |  |
| **fresh** | **Boolean** | Force metrics calculation on the most up to date data. | [optional] |

## Example

```ruby
require 'athenian'

instance = Athenian::PullRequestMetricsRequest.new(
  _for: null,
  metrics: null,
  date_from: null,
  date_to: null,
  timezone: null,
  granularities: null,
  quantiles: [0,0.95],
  exclude_inactive: null,
  account: null,
  fresh: null
)
```

