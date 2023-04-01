# Athenian::ForSetDevelopers

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **repositories** | **Array&lt;String&gt;** | Set of repositories. An empty list raises a bad response 400. Duplicates are automatically ignored. |  |
| **developers** | **Object** |  |  |
| **repogroups** | **Object** |  | [optional] |
| **aggregate_devgroups** | **Object** |  | [optional] |
| **labels_include** | **Array&lt;String&gt;** | PRs must be labeled with at least one name from this list so that the related metrics include them. | [optional] |
| **labels_exclude** | **Array&lt;String&gt;** | PRs must not be labeled with any name from this list so that the related metrics exclude them. | [optional] |
| **jira** | [**JIRAFilter**](JIRAFilter.md) |  | [optional] |

## Example

```ruby
require 'athenian'

instance = Athenian::ForSetDevelopers.new(
  repositories: [&quot;github.com/athenianco/athenian-webapp&quot;,&quot;github.com/athenianco/athenian-api&quot;],
  developers: null,
  repogroups: null,
  aggregate_devgroups: null,
  labels_include: null,
  labels_exclude: null,
  jira: null
)
```

