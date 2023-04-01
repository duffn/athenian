# Athenian::FilterReleasesRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account** | **Integer** | Session account ID. |  |
| **date_from** | **Date** | Updates must be later than or equal to this date. An update is any action that influences the stage assignment. |  |
| **date_to** | **Date** | Updates must be earlier than or equal to this date. An update is any action that influences the stage assignment. |  |
| **timezone** | **Integer** | Local time zone offset in minutes, used to adjust &#x60;date_from&#x60; and &#x60;date_to&#x60;. | [optional] |
| **_in** | **Array&lt;String&gt;** | Set of repositories. An empty list raises a bad response 400. Duplicates are automatically ignored. | [optional] |
| **with** | [**ReleaseWith**](ReleaseWith.md) |  | [optional] |
| **labels_include** | **Array&lt;String&gt;** | At least one of these labels must be present in at least one released PR. | [optional] |
| **labels_exclude** | **Array&lt;String&gt;** | PRs with these labels are excluded from &#x60;ReleaseSet.data.prs&#x60;. | [optional] |
| **jira** | [**JIRAFilter**](JIRAFilter.md) |  | [optional] |

## Example

```ruby
require 'athenian'

instance = Athenian::FilterReleasesRequest.new(
  account: null,
  date_from: null,
  date_to: null,
  timezone: null,
  _in: [&quot;github.com/athenianco/athenian-webapp&quot;,&quot;github.com/athenianco/athenian-api&quot;],
  with: null,
  labels_include: null,
  labels_exclude: null,
  jira: null
)
```

