# Athenian::DeploymentMetricsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_for** | [**Array&lt;ForSetDeployments&gt;**](ForSetDeployments.md) | Sets of filters for which to calculate the metrics. The aggregation is &#x60;AND&#x60; between individual properties like &#x60;repositories&#x60; or &#x60;with&#x60;. The aggregation is &#x60;OR&#x60; inside each property. |  |
| **metrics** | [**Array&lt;DeploymentMetricID&gt;**](DeploymentMetricID.md) | Requested metric identifiers. |  |
| **date_from** | **Date** | Date from when to start measuring the metrics. |  |
| **date_to** | **Date** | Date until which to measure the metrics. |  |
| **timezone** | **Integer** | Local time zone offset in minutes, used to adjust &#x60;date_from&#x60; and &#x60;date_to&#x60;. | [optional] |
| **granularities** | **Array&lt;String&gt;** | The splits of the specified time range. |  |
| **quantiles** | **Array&lt;Float&gt;** | Cut the distributions at certain quantiles. The default values are [0, 1] which means no cutting. | [optional] |
| **account** | **Integer** | Session account ID. |  |

## Example

```ruby
require 'athenian'

instance = Athenian::DeploymentMetricsRequest.new(
  _for: null,
  metrics: null,
  date_from: null,
  date_to: null,
  timezone: null,
  granularities: null,
  quantiles: [0,0.95],
  account: null
)
```

