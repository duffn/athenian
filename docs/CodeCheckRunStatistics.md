# Athenian::CodeCheckRunStatistics

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **count** | **Integer** | Number of executions with respect to &#x60;date_from&#x60; and &#x60;date_to&#x60;. |  |
| **successes** | **Integer** | Number of successful executions with respect to &#x60;date_from&#x60; and &#x60;date_to&#x60;. |  |
| **critical** | **Boolean** | This code check dominated the overall check suite execution time at least once. |  |
| **mean_execution_time** | [**CodeCheckRunStatisticsMeanExecutionTime**](CodeCheckRunStatisticsMeanExecutionTime.md) |  |  |
| **stddev_execution_time** | [**CodeCheckRunStatisticsStddevExecutionTime**](CodeCheckRunStatisticsStddevExecutionTime.md) |  |  |
| **median_execution_time** | [**CodeCheckRunStatisticsMedianExecutionTime**](CodeCheckRunStatisticsMedianExecutionTime.md) |  |  |
| **skips** | **Integer** | Number of times this check run was skipped. |  |
| **flaky_count** | **Integer** | Number of times this check run appeared flaky: it both failed and succeeded for the same commit. |  |
| **count_timeline** | **Array&lt;Integer&gt;** | Number of executions through time. The dates sequence is &#x60;FilteredCodeCheckRuns.timeline&#x60;. |  |
| **successes_timeline** | **Array&lt;Integer&gt;** | Number of successful executions through time. The dates sequence is &#x60;FilteredCodeCheckRuns.timeline&#x60;. |  |
| **mean_execution_time_timeline** | **Array&lt;String&gt;** | Average elapsed execution time through time. The dates sequence is &#x60;FilteredCodeCheckRuns.timeline&#x60;. |  |
| **median_execution_time_timeline** | **Array&lt;String&gt;** | Median elapsed execution time through time. The dates sequence is &#x60;FilteredCodeCheckRuns.timeline&#x60;. |  |

## Example

```ruby
require 'athenian'

instance = Athenian::CodeCheckRunStatistics.new(
  count: null,
  successes: null,
  critical: null,
  mean_execution_time: null,
  stddev_execution_time: null,
  median_execution_time: null,
  skips: null,
  flaky_count: null,
  count_timeline: null,
  successes_timeline: null,
  mean_execution_time_timeline: null,
  median_execution_time_timeline: null
)
```

