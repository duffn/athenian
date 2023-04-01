# Athenian::ForSetDeployments

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **repositories** | **Array&lt;String&gt;** | Set of repositories. An empty list raises a bad response 400. Duplicates are automatically ignored. | [optional] |
| **repogroups** | **Array&lt;Array&lt;Integer&gt;&gt;** | Lists of indexes in &#x60;repositories&#x60; or &#x60;developers&#x60; that define independent groups that must be processed individually. The groups may have intersections. | [optional] |
| **with** | [**DeploymentWith**](DeploymentWith.md) |  | [optional] |
| **withgroups** | [**Array&lt;DeploymentWith&gt;**](DeploymentWith.md) | Alternative to &#x60;with&#x60; - calculate metrics for distinct filters separately. | [optional] |
| **pr_labels_include** | **Array&lt;String&gt;** | At least one of these labels must be present in at least one deployed PR. | [optional] |
| **pr_labels_exclude** | **Array&lt;String&gt;** | None of these labels must be present in each deployed PR. | [optional] |
| **jira** | [**JIRAFilter**](JIRAFilter.md) |  | [optional] |
| **with_labels** | **Object** | Deployments should contain at least one of the specified label values. &#x60;null&#x60; matches any label value and effectively checks the label existence. | [optional] |
| **without_labels** | **Object** | Deployments may not contain the specified label values. &#x60;null&#x60; matches any label value and effectively ensures that the label does not exist. | [optional] |
| **environments** | **Array&lt;String&gt;** | List of environments for which to calculate the metrics. We calculate the metrics for each environment independently.  | [optional] |
| **envgroups** | **Array&lt;Array&lt;String&gt;&gt;** | List of environment groups for which to calculate the metrics.  | [optional] |

## Example

```ruby
require 'athenian'

instance = Athenian::ForSetDeployments.new(
  repositories: [&quot;github.com/athenianco/athenian-webapp&quot;,&quot;github.com/athenianco/athenian-api&quot;],
  repogroups: [[0,1],[1]],
  with: null,
  withgroups: null,
  pr_labels_include: null,
  pr_labels_exclude: null,
  jira: null,
  with_labels: null,
  without_labels: null,
  environments: null,
  envgroups: null
)
```

