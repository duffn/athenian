# Athenian::DeploymentAnalysis

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | [**DeploymentAnalysisCode**](DeploymentAnalysisCode.md) |  |  |
| **prs** | [**Array&lt;DeployedPullRequest&gt;**](DeployedPullRequest.md) | List of deployed pull requests. | [optional] |
| **releases** | [**Array&lt;DeployedRelease&gt;**](DeployedRelease.md) | Deployed releases. The format matches &#x60;FilteredRelease&#x60; except that &#x60;prs&#x60; is the number of released pull requests instead of a list. | [optional] |

## Example

```ruby
require 'athenian'

instance = Athenian::DeploymentAnalysis.new(
  code: null,
  prs: null,
  releases: null
)
```

