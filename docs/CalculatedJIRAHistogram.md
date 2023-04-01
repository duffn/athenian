# Athenian::CalculatedJIRAHistogram

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **with** | [**JIRAFilterWith**](JIRAFilterWith.md) |  | [optional] |
| **metric** | [**JIRAMetricID**](JIRAMetricID.md) |  |  |
| **scale** | [**HistogramScale**](HistogramScale.md) |  |  |
| **ticks** | [**Array&lt;GoalMetricParamsThreshold&gt;**](GoalMetricParamsThreshold.md) | Series of horizontal bar borders aka X axis. Their count is &#x60;len(y) + 1&#x60; because there are &#x60;N&#x60; intervals between &#x60;(N + 1)&#x60; ticks. |  |
| **frequencies** | **Array&lt;Integer&gt;** | Series of histogram bar heights aka Y axis. |  |
| **interquartile** | [**Interquartile**](Interquartile.md) |  |  |

## Example

```ruby
require 'athenian'

instance = Athenian::CalculatedJIRAHistogram.new(
  with: null,
  metric: null,
  scale: null,
  ticks: null,
  frequencies: null,
  interquartile: null
)
```

