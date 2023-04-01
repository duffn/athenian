# Athenian::DeploymentNotification

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **components** | [**Array&lt;DeployedComponent&gt;**](DeployedComponent.md) | List of deployed software version. Each item identifies a Git reference in a repository, either a tag or a commit hash.  |  |
| **environment** | **String** | Name of the environment where the deployment happened. |  |
| **name** | **String** | Name of the deployment. If is not specified, we generate our own by the template &#x60;&lt;environment shortcut&gt;-&lt;date&gt;-&lt;hash of the components&gt;&#x60;. The value may not contain \\n - new line character, and &#39; - single quote. | [optional] |
| **url** | **String** | URL pointing at the internal details of the deployment. | [optional] |
| **date_started** | **Time** | Timestamp of when the deployment procedure launched. |  |
| **date_finished** | **Time** | Timestamp of when the deployment procedure completed. |  |
| **conclusion** | [**DeploymentConclusion**](DeploymentConclusion.md) |  |  |
| **labels** | **Object** | Arbitrary key-value metadata that associates with the deployment. | [optional] |

## Example

```ruby
require 'athenian'

instance = Athenian::DeploymentNotification.new(
  components: null,
  environment: null,
  name: null,
  url: null,
  date_started: null,
  date_finished: null,
  conclusion: null,
  labels: null
)
```

