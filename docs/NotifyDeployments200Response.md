# Athenian::NotifyDeployments200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **deployments** | [**Array&lt;NotifiedDeploymentsInner&gt;**](NotifiedDeploymentsInner.md) | The list of notified deployments. |  |

## Example

```ruby
require 'athenian'

instance = Athenian::NotifyDeployments200Response.new(
  deployments: [{&quot;name&quot;:&quot;prod-1984-05-01-ABCDEFGH&quot;,&quot;resolved&quot;:true}]
)
```

