# Athenian::CalculatedJIRAMetricValues

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **granularity** | **String** | How often the metrics are reported. The value must satisfy the following regular expression: /^all|(([1-9]\\d* )?(aligned )?(day|week|month|year))$/. \&quot;all\&quot; produces a single interval [&#x60;date_from&#x60;, &#x60;date_to&#x60;]. \&quot;aligned week/month/year\&quot; produces intervals cut by calendar week/month/year borders, for example, when &#x60;date_from&#x60; is &#x60;2020-01-15&#x60; and &#x60;date_to&#x60; is &#x60;2020-03-10&#x60;, the intervals will be &#x60;2020-01-15&#x60; - &#x60;2020-02-01&#x60; - &#x60;2020-03-01&#x60; - &#x60;2020-03-10&#x60;. |  |
| **_for** | [**JIRAFilter**](JIRAFilter.md) |  | [optional] |
| **jira_label** | **String** | Title of the assigned JIRA label, if &#x60;group_by_jira_label&#x60; was previously set to &#x60;true&#x60;. If is missing and &#x60;group_by_jira_label&#x60; was set to &#x60;true&#x60; then the metrics are calculated for issues without labels. | [optional] |
| **with** | [**JIRAFilterWith**](JIRAFilterWith.md) |  | [optional] |
| **values** | [**Array&lt;CalculatedLinearMetricValues&gt;**](CalculatedLinearMetricValues.md) | The sequence steps from &#x60;date_from&#x60; till &#x60;date_to&#x60; by &#x60;granularity&#x60;. |  |

## Example

```ruby
require 'athenian'

instance = Athenian::CalculatedJIRAMetricValues.new(
  granularity: 2 week,
  _for: null,
  jira_label: null,
  with: null,
  values: null
)
```

