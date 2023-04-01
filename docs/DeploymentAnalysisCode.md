# Athenian::DeploymentAnalysisCode

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **prs** | **Hash&lt;String, Integer&gt;** | Number of deployed pull requests per repository. |  |
| **lines_prs** | **Hash&lt;String, Integer&gt;** | Number of changed lines in the deployed PRs per repository. |  |
| **lines_overall** | **Hash&lt;String, Integer&gt;** | Number of changed lines in the deployment per repository. |  |
| **commits_prs** | **Hash&lt;String, Integer&gt;** | Number of deployed PR commits per repository. |  |
| **commits_overall** | **Hash&lt;String, Integer&gt;** | Number of deployed commits per repository. |  |
| **jira** | **Hash&lt;String, Array&lt;String&gt;&gt;** | JIRA issues mentioned in the deployed PRs. | [optional] |

## Example

```ruby
require 'athenian'

instance = Athenian::DeploymentAnalysisCode.new(
  prs: null,
  lines_prs: null,
  lines_overall: null,
  commits_prs: null,
  commits_overall: null,
  jira: null
)
```

