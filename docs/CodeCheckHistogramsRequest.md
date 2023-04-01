# Athenian::CodeCheckHistogramsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_for** | [**Array&lt;ForSetCodeChecks&gt;**](ForSetCodeChecks.md) | Sets of developers and repositories for which to calculate the histograms. The aggregation is &#x60;AND&#x60; between repositories and developers. The aggregation is &#x60;OR&#x60; inside both repositories and developers. |  |
| **histograms** | [**Array&lt;CodeCheckHistogramDefinition&gt;**](CodeCheckHistogramDefinition.md) | Histogram parameters for each wanted topic. |  |
| **date_from** | **Date** | Date from when to start measuring the distribution. |  |
| **date_to** | **Date** | Date until which to measure the distribution. |  |
| **timezone** | **Integer** | Local time zone offset in minutes, used to adjust &#x60;date_from&#x60; and &#x60;date_to&#x60;. | [optional] |
| **quantiles** | **Array&lt;Float&gt;** | Cut the distributions at certain quantiles. The default values are [0, 1] which means no cutting. | [optional] |
| **split_by_check_runs** | **Boolean** | Calculate histograms separately for each number of check runs in suite. | [optional] |
| **account** | **Integer** | Session account ID. |  |

## Example

```ruby
require 'athenian'

instance = Athenian::CodeCheckHistogramsRequest.new(
  _for: null,
  histograms: null,
  date_from: null,
  date_to: null,
  timezone: null,
  quantiles: [0,0.95],
  split_by_check_runs: null,
  account: null
)
```

