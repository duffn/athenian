# Athenian::JIRAHistogramsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **priorities** | **Array&lt;String&gt;** | Selected issue priorities. | [optional] |
| **types** | **Array&lt;String&gt;** | Selected issue types. | [optional] |
| **epics** | [**Array&lt;JIRAEpic&gt;**](JIRAEpic.md) |  | [optional] |
| **labels_include** | **Array&lt;String&gt;** | PRs must relate to at least one JIRA issue label from the list. Several labels may be concatenated by a comma &#x60;,&#x60; so that all of them are required. | [optional] |
| **labels_exclude** | **Array&lt;String&gt;** | PRs cannot relate to JIRA issue labels from the list. | [optional] |
| **with** | [**Array&lt;JIRAFilterWith&gt;**](JIRAFilterWith.md) | Groups of issue participants. The histograms will be calculated for each group. | [optional] |
| **projects** | **Array&lt;String&gt;** | Issues must belong to these JIRA projects. | [optional] |
| **histograms** | [**Array&lt;JIRAHistogramDefinition&gt;**](JIRAHistogramDefinition.md) | Histogram parameters for each wanted topic. |  |
| **date_from** | **Date** | Date from when to start measuring the distribution. |  |
| **date_to** | **Date** | Date until which to measure the distribution. |  |
| **timezone** | **Integer** | Local time zone offset in minutes, used to adjust &#x60;date_from&#x60; and &#x60;date_to&#x60;. | [optional] |
| **exclude_inactive** | **Boolean** | Value indicating whether issues with the last update older than &#x60;date_from&#x60; should be ignored. |  |
| **quantiles** | **Array&lt;Float&gt;** | Cut the distributions at certain quantiles. The default values are [0, 1] which means no cutting. | [optional] |
| **account** | **Integer** | Session account ID. |  |

## Example

```ruby
require 'athenian'

instance = Athenian::JIRAHistogramsRequest.new(
  priorities: null,
  types: null,
  epics: null,
  labels_include: null,
  labels_exclude: null,
  with: null,
  projects: null,
  histograms: null,
  date_from: null,
  date_to: null,
  timezone: null,
  exclude_inactive: null,
  quantiles: [0,0.95],
  account: null
)
```

