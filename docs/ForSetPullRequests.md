# Athenian::ForSetPullRequests

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **repositories** | **Array** |  | [optional] |
| **repogroups** | **Array&lt;Array&lt;Integer&gt;&gt;** | Lists of indexes in &#x60;repositories&#x60; or &#x60;developers&#x60; that define independent groups that must be processed individually. The groups may have intersections. | [optional] |
| **with** | [**PullRequestWith**](PullRequestWith.md) |  | [optional] |
| **withgroups** | [**Array&lt;PullRequestWith&gt;**](PullRequestWith.md) | Aggregate by groups of PR contributors. Currently, only the groupings by &#x60;author&#x60;, &#x60;merger&#x60;, and &#x60;releaser&#x60; are supported. People do not have to be mentioned in &#x60;with&#x60; in contrast to &#x60;repogroups&#x60;. We treat &#x60;with&#x60; as another group, if specified. | [optional] |
| **labels_include** | **Array&lt;String&gt;** | At least one of these labels must be present in each analyzed PR. | [optional] |
| **labels_exclude** | **Array&lt;String&gt;** | None of these labels must be present in each analyzed PR. | [optional] |
| **lines** | **Array&lt;Integer&gt;** | Split by changed number of lines (inserted + removed). | [optional] |
| **jira** | [**JIRAFilter**](JIRAFilter.md) |  | [optional] |
| **jiragroups** | [**Array&lt;JIRAFilter&gt;**](JIRAFilter.md) | Calculate metrics separately for each JIRA Filter in the list. Not compatible with &#x60;jira&#x60; field.  | [optional] |
| **environments** | **Array&lt;String&gt;** | Calculate deployment metrics separately for each environment in the list. Required if any deployment metrics were requested. Histograms are only implemented for single environments. | [optional] |

## Example

```ruby
require 'athenian'

instance = Athenian::ForSetPullRequests.new(
  repositories: null,
  repogroups: [[0,1],[1]],
  with: null,
  withgroups: null,
  labels_include: null,
  labels_exclude: null,
  lines: null,
  jira: null,
  jiragroups: null,
  environments: null
)
```

