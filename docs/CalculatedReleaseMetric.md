# Athenian::CalculatedReleaseMetric

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_for** | **Array&lt;String&gt;** | Set of repositories. An empty list raises a bad response 400. Duplicates are automatically ignored. | [optional] |
| **with** | [**ReleaseWith**](ReleaseWith.md) |  | [optional] |
| **jira** | [**JIRAFilter**](JIRAFilter.md) |  | [optional] |
| **matches** | [**Hash&lt;String, ReleaseMatchStrategy&gt;**](ReleaseMatchStrategy.md) | Applied release matching strategies for the repositories in &#x60;for&#x60;. |  |
| **metrics** | [**Array&lt;ReleaseMetricID&gt;**](ReleaseMetricID.md) |  |  |
| **granularity** | **String** | How often the metrics are reported. The value must satisfy the following regular expression: /^all|(([1-9]\\d* )?(aligned )?(day|week|month|year))$/. \&quot;all\&quot; produces a single interval [&#x60;date_from&#x60;, &#x60;date_to&#x60;]. \&quot;aligned week/month/year\&quot; produces intervals cut by calendar week/month/year borders, for example, when &#x60;date_from&#x60; is &#x60;2020-01-15&#x60; and &#x60;date_to&#x60; is &#x60;2020-03-10&#x60;, the intervals will be &#x60;2020-01-15&#x60; - &#x60;2020-02-01&#x60; - &#x60;2020-03-01&#x60; - &#x60;2020-03-10&#x60;. |  |
| **values** | [**Array&lt;CalculatedLinearMetricValues&gt;**](CalculatedLinearMetricValues.md) | The sequence steps from &#x60;date_from&#x60; till &#x60;date_to&#x60; by &#x60;granularity&#x60;. |  |

## Example

```ruby
require 'athenian'

instance = Athenian::CalculatedReleaseMetric.new(
  _for: [&quot;github.com/athenianco/athenian-webapp&quot;,&quot;github.com/athenianco/athenian-api&quot;],
  with: null,
  jira: null,
  matches: null,
  metrics: null,
  granularity: 2 week,
  values: null
)
```

