# Athenian::JIRAMetricsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account** | **Integer** | Session account ID. |  |
| **date_from** | **Date** | Issues must be resolved after this date. |  |
| **date_to** | **Date** | Issues must be created before this date. |  |
| **_for** | [**Array&lt;JIRAFilter&gt;**](JIRAFilter.md) | Calculate metrics separately for each JIRA Filter in the list. Not compatible with other jira filters in the request:   &#x60;priorities&#x60;, &#x60;types&#x60;, &#x60;labels_include&#x60;, &#x60;labels_exclude&#x60;, &#x60;epics&#x60;, &#x60;projects&#x60;.  | [optional] |
| **timezone** | **Integer** | Local time zone offset in minutes, used to adjust &#x60;date_from&#x60; and &#x60;date_to&#x60;. | [optional] |
| **priorities** | **Array&lt;String&gt;** | Selected issue priorities. | [optional] |
| **types** | **Array&lt;String&gt;** | Selected issue types. | [optional] |
| **labels_include** | **Array&lt;String&gt;** | JIRA issues must contain at least one label from the list. Several labels may be concatenated by a comma &#x60;,&#x60; so that all of them are required. | [optional] |
| **labels_exclude** | **Array&lt;String&gt;** | JIRA issues may not contain labels from this list. | [optional] |
| **exclude_inactive** | **Boolean** | Value indicating whether issues with the last update older than &#x60;date_from&#x60; should be ignored. If &#x60;date_from&#x60; and &#x60;date_to&#x60; are &#x60;null&#x60;, does nothing. |  |
| **epics** | **Array&lt;String&gt;** | JIRA issues must be attached to any of the epic IDs from this list. | [optional] |
| **with** | [**Array&lt;JIRAFilterWith&gt;**](JIRAFilterWith.md) | Groups of issue participants. The metrics will be calculated for each group. | [optional] |
| **projects** | **Array&lt;String&gt;** | Issues must belong to these JIRA projects. | [optional] |
| **metrics** | [**Array&lt;JIRAMetricID&gt;**](JIRAMetricID.md) | List of measured metrics. |  |
| **quantiles** | **Array&lt;Float&gt;** | Cut the distributions at certain quantiles. The default values are [0, 1] which means no cutting. | [optional] |
| **granularities** | **Array&lt;String&gt;** | The splits of the specified time range. |  |
| **group_by_jira_label** | **Boolean** | Value indicating whether the metrics should be grouped by assigned JIRA issue label. | [optional] |

## Example

```ruby
require 'athenian'

instance = Athenian::JIRAMetricsRequest.new(
  account: null,
  date_from: null,
  date_to: null,
  _for: null,
  timezone: null,
  priorities: null,
  types: null,
  labels_include: null,
  labels_exclude: null,
  exclude_inactive: null,
  epics: null,
  with: null,
  projects: null,
  metrics: null,
  quantiles: [0,0.95],
  granularities: null,
  group_by_jira_label: null
)
```

