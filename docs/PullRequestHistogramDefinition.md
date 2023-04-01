# Athenian::PullRequestHistogramDefinition

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **metric** | [**PullRequestMetricID**](PullRequestMetricID.md) |  |  |
| **scale** | [**HistogramScale**](HistogramScale.md) |  | [optional] |
| **bins** | **Integer** | Number of bars in the histogram. 0 or null means automatic. | [optional] |
| **ticks** | [**Array&lt;GoalMetricParamsThreshold&gt;**](GoalMetricParamsThreshold.md) | Alternatively to &#x60;bins&#x60; and &#x60;scale&#x60;, set the X axis bar borders manually. Only one of two may be specified. The ticks are automatically prepended the distribution minimum and appended the distribution maximum. | [optional] |

## Example

```ruby
require 'athenian'

instance = Athenian::PullRequestHistogramDefinition.new(
  metric: null,
  scale: null,
  bins: null,
  ticks: null
)
```

