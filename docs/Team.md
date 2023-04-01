# Athenian::Team

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Team identifier. |  |
| **name** | **String** | Name of the team. |  |
| **members** | [**Array&lt;Contributor&gt;**](Contributor.md) | List of contributors. |  |
| **parent** | **Integer** | Identifier of the higher level team. |  |

## Example

```ruby
require 'athenian'

instance = Athenian::Team.new(
  id: null,
  name: null,
  members: [{&quot;email&quot;:&quot;bot@athenian.co&quot;,&quot;login&quot;:&quot;github.com/gkwillie&quot;,&quot;name&quot;:&quot;Groundskeeper Willie&quot;,&quot;picture&quot;:&quot;https://avatars0.githubusercontent.com/u/60340680?v&#x3D;4&quot;},{&quot;email&quot;:&quot;loumarvincaraig@gmail.com&quot;,&quot;login&quot;:&quot;github.com/se7entyse7en&quot;,&quot;name&quot;:&quot;Lou Marvin Caraig&quot;,&quot;picture&quot;:&quot;https://avatars1.githubusercontent.com/u/5599208?v&#x3D;4&quot;}],
  parent: null
)
```

