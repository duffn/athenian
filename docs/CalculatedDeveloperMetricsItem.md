# Athenian::CalculatedDeveloperMetricsItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_for** | [**ForSetDevelopers**](ForSetDevelopers.md) |  |  |
| **granularity** | **String** | How often the metrics are reported. The value must satisfy the following regular expression: /^all|(([1-9]\\d* )?(aligned )?(day|week|month|year))$/. \&quot;all\&quot; produces a single interval [&#x60;date_from&#x60;, &#x60;date_to&#x60;]. \&quot;aligned week/month/year\&quot; produces intervals cut by calendar week/month/year borders, for example, when &#x60;date_from&#x60; is &#x60;2020-01-15&#x60; and &#x60;date_to&#x60; is &#x60;2020-03-10&#x60;, the intervals will be &#x60;2020-01-15&#x60; - &#x60;2020-02-01&#x60; - &#x60;2020-03-01&#x60; - &#x60;2020-03-10&#x60;. |  |
| **values** | **Array&lt;Array&lt;CalculatedLinearMetricValues&gt;&gt;** | The sequence matches &#x60;CalculatedDeveloperMetricsItem.for.developers&#x60;. |  |

## Example

```ruby
require 'athenian'

instance = Athenian::CalculatedDeveloperMetricsItem.new(
  _for: null,
  granularity: 2 week,
  values: null
)
```

