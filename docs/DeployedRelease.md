# Athenian::DeployedRelease

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **added_lines** | **Integer** | Cumulative number of lines inserted since the previous release. |  |
| **age** | **String** | Time since the previous release /\\d+s/. |  |
| **commits** | **Integer** | Number of commits since the previous release. |  |
| **commit_authors** | **Array&lt;String&gt;** | List of released commit authors&#39; logins. |  |
| **deleted_lines** | **Integer** | Cumulative number of lines removed since the previous release. |  |
| **name** | **String** | Title of the release. |  |
| **prs** | **Integer** | Number of deployed pull requests. |  |
| **published** | **Time** | When the release was created. |  |
| **publisher** | **String** | Login of the person who created the release. |  |
| **repository** | **String** | Name of the repository where the release exists. |  |
| **sha** | **String** | Release commit hash. |  |
| **url** | **String** | Link to the release. |  |

## Example

```ruby
require 'athenian'

instance = Athenian::DeployedRelease.new(
  added_lines: null,
  age: null,
  commits: null,
  commit_authors: null,
  deleted_lines: null,
  name: null,
  prs: null,
  published: null,
  publisher: null,
  repository: null,
  sha: null,
  url: null
)
```

