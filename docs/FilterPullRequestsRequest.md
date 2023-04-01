# Athenian::FilterPullRequestsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account** | **Integer** | Session account ID. |  |
| **date_from** | **Date** | PRs must be updated later than or equal to this date. |  |
| **date_to** | **Date** | PRs must be updated earlier than or equal to this date. |  |
| **timezone** | **Integer** | Local time zone offset in minutes, used to adjust &#x60;date_from&#x60; and &#x60;date_to&#x60;. | [optional] |
| **_in** | **Array&lt;String&gt;** | Set of repositories. An empty list raises a bad response 400. Duplicates are automatically ignored. |  |
| **events** | [**Array&lt;PullRequestEvent&gt;**](PullRequestEvent.md) | Allowed PR events that happened between &#x60;date_from&#x60; and &#x60;date_to&#x60;. | [optional] |
| **stages** | [**Array&lt;PullRequestStage&gt;**](PullRequestStage.md) | Allowed PR stages that are defined at &#x60;date_to&#x60;. | [optional] |
| **with** | [**PullRequestWith**](PullRequestWith.md) |  | [optional] |
| **labels_include** | **Array&lt;String&gt;** | At least one of these labels must be present in each returned PR. | [optional] |
| **labels_exclude** | **Array&lt;String&gt;** | None of these labels must be present in each returned PR. | [optional] |
| **exclude_inactive** | **Boolean** | Value indicating whether PRs without events in the given time frame shall be ignored. |  |
| **jira** | [**JIRAFilter**](JIRAFilter.md) |  | [optional] |
| **updated_from** | **Date** | Paginate the response: the returned PRs are updated on GitHub no older than this timestamp, including the beginning. Note: \&quot;updated on GitHub\&quot; means that we don´t consider release or deployment timestamps. Use this field only to paginate after calling &#x60;/paginate/pull_requests&#x60;. Subject of future changes. | [optional] |
| **updated_to** | **Date** | Paginate the response: the returned PRs are updated on GitHub no later than this timestamp, not including the ending. Note: \&quot;updated on GitHub\&quot; means that we don´t consider release or deployment timestamps. Use this field only to paginate after calling &#x60;/paginate/pull_requests&#x60;. Subject of future changes. | [optional] |
| **limit** | **Integer** | Maximum number of pull requests to return. The list is sorted by the last update timestamp. &#x60;null&#x60; means no limit. | [optional] |
| **environments** | **Array&lt;String&gt;** | Target environments for the deployment events, impacts &#x60;events&#x60; and &#x60;stages&#x60;. If omitted, we match any deployment in any environment. | [optional] |

## Example

```ruby
require 'athenian'

instance = Athenian::FilterPullRequestsRequest.new(
  account: null,
  date_from: null,
  date_to: null,
  timezone: null,
  _in: [&quot;github.com/athenianco/athenian-webapp&quot;,&quot;github.com/athenianco/athenian-api&quot;],
  events: null,
  stages: null,
  with: null,
  labels_include: null,
  labels_exclude: null,
  exclude_inactive: null,
  jira: null,
  updated_from: null,
  updated_to: null,
  limit: null,
  environments: null
)
```

