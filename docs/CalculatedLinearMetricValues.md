# Athenian::CalculatedLinearMetricValues

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **date** | **Date** | Where you should relate the metric value to on the time axis. |  |
| **values** | [**Array&lt;CalculatedLinearMetricValuesValuesInner&gt;**](CalculatedLinearMetricValuesValuesInner.md) | Calculated metric values in the same order as &#x60;metrics&#x60;. |  |
| **confidence_mins** | [**Array&lt;CalculatedLinearMetricValuesConfidenceMinsInner&gt;**](CalculatedLinearMetricValuesConfidenceMinsInner.md) | Confidence interval @ p&#x3D;0.8, minimum. The same order as &#x60;metrics&#x60;. It is optional because there can be exact metrics like \&quot;count open PRs per month\&quot;. | [optional] |
| **confidence_maxs** | [**Array&lt;CalculatedLinearMetricValuesConfidenceMinsInner&gt;**](CalculatedLinearMetricValuesConfidenceMinsInner.md) | Confidence interval @ p&#x3D;0.8, maximum. The same order as &#x60;metrics&#x60;. It is optional because there can be exact metrics like \&quot;count open PRs per month\&quot;. | [optional] |
| **confidence_scores** | **Array&lt;Integer&gt;** | Confidence score from 0 (random guess) to 100 (very confident). The same order as &#x60;metrics&#x60;. May be &#x60;null&#x60; for exact metrics. | [optional] |

## Example

```ruby
require 'athenian'

instance = Athenian::CalculatedLinearMetricValues.new(
  date: null,
  values: null,
  confidence_mins: null,
  confidence_maxs: null,
  confidence_scores: null
)
```

