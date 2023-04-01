# Athenian::FilteredCodeCheckRuns

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **timeline** | **Array&lt;Date&gt;** | Sequence of dates from &#x60;date_from&#x60; till &#x60;date_to&#x60;. We choose the adaptive intervals by applying these rules on &#x60;(date_to - date_from)&#x60;: - Less than 5 weeks: daily. - Less than 5 months: weekly (*not aligned*). - Aligned monthly. |  |
| **items** | [**Array&lt;FilteredCodeCheckRun&gt;**](FilteredCodeCheckRun.md) | Found check runs and their stats. |  |

## Example

```ruby
require 'athenian'

instance = Athenian::FilteredCodeCheckRuns.new(
  timeline: null,
  items: null
)
```

