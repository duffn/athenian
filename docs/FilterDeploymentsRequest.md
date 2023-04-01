# Athenian::FilterDeploymentsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **date_from** | **Date** | Search for the deployments since this date. |  |
| **date_to** | **Date** | Search for the deployments until this date. |  |
| **timezone** | **Integer** | Local time zone offset in minutes, used to adjust &#x60;date_from&#x60; and &#x60;date_to&#x60;. | [optional] |
| **account** | **Integer** | Session account ID. |  |
| **_in** | **Array&lt;String&gt;** | Set of repositories. An empty list raises a bad response 400. Duplicates are automatically ignored. | [optional] |
| **with** | [**DeploymentWith**](DeploymentWith.md) |  | [optional] |
| **pr_labels_include** | **Array&lt;String&gt;** | At least one of these labels must be present in at least one deployed PR. | [optional] |
| **pr_labels_exclude** | **Array&lt;String&gt;** | None of these labels must be present in each deployed PR. | [optional] |
| **jira** | [**JIRAFilter**](JIRAFilter.md) |  | [optional] |
| **environments** | **Array&lt;String&gt;** | Deployments must belong to one of these environments. | [optional] |
| **conclusions** | [**Array&lt;DeploymentConclusion&gt;**](DeploymentConclusion.md) | Deployments must execute with any of these conclusions. | [optional] |
| **with_labels** | **Object** | Deployments should contain at least one of the specified label values. &#x60;null&#x60; matches any label value and effectively checks the label existence. | [optional] |
| **without_labels** | **Object** | Deployments may not contain the specified label values. &#x60;null&#x60; matches any label value and effectively ensures that the label does not exist. | [optional] |

## Example

```ruby
require 'athenian'

instance = Athenian::FilterDeploymentsRequest.new(
  date_from: null,
  date_to: null,
  timezone: null,
  account: null,
  _in: [&quot;github.com/athenianco/athenian-webapp&quot;,&quot;github.com/athenianco/athenian-api&quot;],
  with: null,
  pr_labels_include: null,
  pr_labels_exclude: null,
  jira: null,
  environments: null,
  conclusions: null,
  with_labels: null,
  without_labels: null
)
```

