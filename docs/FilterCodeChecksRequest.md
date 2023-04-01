# Athenian::FilterCodeChecksRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_in** | **Array&lt;String&gt;** | Set of repositories. An empty list raises a bad response 400. Duplicates are automatically ignored. |  |
| **triggered_by** | **Array&lt;String&gt;** | Check runs must be triggered by commits pushed by these people. When it is impossible to determine who pushed, e.g. in legacy API based checks, they are committers. It is possible to mention whole teams using the syntax &#x60;{id}&#x60; where &#x60;id&#x60; is a team identifier (see &#x60;/teams&#x60;).  | [optional] |
| **labels_include** | **Array&lt;String&gt;** | At least one of these labels must be present in the checked PRs. | [optional] |
| **labels_exclude** | **Array&lt;String&gt;** | None of these labels must be present in each checked PR. | [optional] |
| **jira** | [**ForSetCodeChecksJira**](ForSetCodeChecksJira.md) |  | [optional] |
| **date_from** | **Date** | Date from when to start measuring the metrics. |  |
| **date_to** | **Date** | Date until which to measure the metrics. |  |
| **timezone** | **Integer** | Local time zone offset in minutes, used to adjust &#x60;date_from&#x60; and &#x60;date_to&#x60;. | [optional] |
| **account** | **Integer** | Session account ID. |  |
| **quantiles** | **Object** |  | [optional] |

## Example

```ruby
require 'athenian'

instance = Athenian::FilterCodeChecksRequest.new(
  _in: [&quot;github.com/athenianco/athenian-webapp&quot;,&quot;github.com/athenianco/athenian-api&quot;],
  triggered_by: [&quot;github.com/vmarkovtsev&quot;,&quot;github.com/se7entyse7en&quot;],
  labels_include: null,
  labels_exclude: null,
  jira: null,
  date_from: null,
  date_to: null,
  timezone: null,
  account: null,
  quantiles: null
)
```

