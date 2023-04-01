# Athenian::ReleaseMetricsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_for** | [**Array&lt;ReleaseMetricsRequestForInner&gt;**](ReleaseMetricsRequestForInner.md) | List of repository groups for which to calculate the metrics. An empty repository (empty array) group will match nothing. Use &#x60;null&#x60; as repository group to match every repository.  |  |
| **with** | [**Array&lt;ReleaseWith&gt;**](ReleaseWith.md) | List of developer groups for which to calculate the metrics. | [optional] |
| **labels_include** | **Array&lt;String&gt;** | At least one of these labels must be present in at least one released PR. | [optional] |
| **labels_exclude** | **Array&lt;String&gt;** | None of these labels must be present in each released PR. | [optional] |
| **jira** | [**JIRAFilter**](JIRAFilter.md) |  | [optional] |
| **jiragroups** | [**Array&lt;JIRAFilter&gt;**](JIRAFilter.md) | Calculate metrics separately for each JIRA Filter in the list. Not compatible with &#x60;jira&#x60; field.  | [optional] |
| **metrics** | [**Array&lt;ReleaseMetricID&gt;**](ReleaseMetricID.md) | List of desired release metrics. |  |
| **date_from** | **Date** | Date from when to start measuring the metrics. |  |
| **date_to** | **Date** | Date until which to measure the metrics. |  |
| **timezone** | **Integer** | Local time zone offset in minutes, used to adjust &#x60;date_from&#x60; and &#x60;date_to&#x60;. | [optional] |
| **granularities** | **Array&lt;String&gt;** | The splits of the specified time range. |  |
| **quantiles** | **Array&lt;Float&gt;** | Cut the distributions at certain quantiles. The default values are [0, 1] which means no cutting. | [optional] |
| **account** | **Integer** | Session account ID. |  |

## Example

```ruby
require 'athenian'

instance = Athenian::ReleaseMetricsRequest.new(
  _for: null,
  with: null,
  labels_include: null,
  labels_exclude: null,
  jira: null,
  jiragroups: null,
  metrics: null,
  date_from: null,
  date_to: null,
  timezone: null,
  granularities: null,
  quantiles: [0,0.95],
  account: null
)
```

