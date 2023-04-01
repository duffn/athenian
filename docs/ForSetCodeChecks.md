# Athenian::ForSetCodeChecks

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **repositories** | **Array&lt;String&gt;** | Set of repositories. An empty list raises a bad response 400. Duplicates are automatically ignored. |  |
| **repogroups** | **Array&lt;Array&lt;Integer&gt;&gt;** | Lists of indexes in &#x60;repositories&#x60; or &#x60;developers&#x60; that define independent groups that must be processed individually. The groups may have intersections. | [optional] |
| **pushers** | **Array&lt;String&gt;** | Check runs must be triggered by commits pushed by these people. When it is impossible to determine who pushed, e.g. in legacy API based checks, they are committers. It is possible to mention whole teams using the syntax &#x60;{id}&#x60; where &#x60;id&#x60; is a team identifier (see &#x60;/teams&#x60;).  | [optional] |
| **pusher_groups** | **Array&lt;Array&gt;** | Check runs must be triggered by commits authored by these people. We aggregate by each group so that you can request metrics of several teams at once. We treat &#x60;pushers&#x60; as another group, if specified. | [optional] |
| **labels_include** | **Array&lt;String&gt;** | At least one of these labels must be present in the checked PRs. | [optional] |
| **labels_exclude** | **Array&lt;String&gt;** | None of these labels must be present in each checked PR. | [optional] |
| **jira** | [**ForSetCodeChecksJira**](ForSetCodeChecksJira.md) |  | [optional] |
| **lines** | **Array&lt;Integer&gt;** | Split by changed number of lines (inserted + removed) in pull requests. | [optional] |

## Example

```ruby
require 'athenian'

instance = Athenian::ForSetCodeChecks.new(
  repositories: [&quot;github.com/athenianco/athenian-webapp&quot;,&quot;github.com/athenianco/athenian-api&quot;],
  repogroups: [[0,1],[1]],
  pushers: [&quot;github.com/vmarkovtsev&quot;,&quot;github.com/se7entyse7en&quot;],
  pusher_groups: null,
  labels_include: null,
  labels_exclude: null,
  jira: null,
  lines: null
)
```

