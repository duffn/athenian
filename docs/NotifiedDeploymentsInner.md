# Athenian::NotifiedDeploymentsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of the deployment. |  |
| **resolved** | **Boolean** | Value indicating whether we resolved the received Git reference on the spot. &#x60;false&#x60; is probably still OK for new references that we haven&#39;t synchronized yet.  |  |

## Example

```ruby
require 'athenian'

instance = Athenian::NotifiedDeploymentsInner.new(
  name: null,
  resolved: null
)
```

