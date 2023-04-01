# Athenian::PullRequestHistogramsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_for** | [**Array&lt;ForSetPullRequests&gt;**](ForSetPullRequests.md) | Sets of developers and repositories for which to calculate the histograms. The aggregation is &#x60;AND&#x60; between repositories and developers. The aggregation is &#x60;OR&#x60; inside both repositories and developers. |  |
| **histograms** | [**Array&lt;PullRequestHistogramDefinition&gt;**](PullRequestHistogramDefinition.md) | Histogram parameters for each wanted topic. |  |
| **date_from** | **Date** | Date from when to start measuring the distribution. |  |
| **date_to** | **Date** | Date until which to measure the distribution. |  |
| **timezone** | **Integer** | Local time zone offset in minutes, used to adjust &#x60;date_from&#x60; and &#x60;date_to&#x60;. | [optional] |
| **exclude_inactive** | **Boolean** | Value indicating whether PRs without events in the given time frame shall be ignored. |  |
| **quantiles** | **Array&lt;Float&gt;** | Cut the distributions at certain quantiles. The default values are [0, 1] which means no cutting. | [optional] |
| **account** | **Integer** | Session account ID. |  |
| **fresh** | **Boolean** | Force histograms calculation on the most up to date data. | [optional] |

## Example

```ruby
require 'athenian'

instance = Athenian::PullRequestHistogramsRequest.new(
  _for: null,
  histograms: null,
  date_from: null,
  date_to: null,
  timezone: null,
  exclude_inactive: null,
  quantiles: [0,0.95],
  account: null,
  fresh: null
)
```

