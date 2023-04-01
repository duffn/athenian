# Athenian::EventsApi

All URIs are relative to *https://api.athenian.co/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**clear_precomputed_events**](EventsApi.md#clear_precomputed_events) | **POST** /events/clear_cache | Reset the precomputed data related to the pushed events. |
| [**get_deployment_labels**](EventsApi.md#get_deployment_labels) | **GET** /events/deployment/{name}/labels | Retrieve the labels associated with the deployment. |
| [**modify_deployment_labels**](EventsApi.md#modify_deployment_labels) | **PATCH** /events/deployment/{name}/labels | Modify the labels for the deployment applying the given instructions.  |
| [**notify_deployments**](EventsApi.md#notify_deployments) | **POST** /events/deployments | Notify about new deployments. |
| [**notify_releases**](EventsApi.md#notify_releases) | **POST** /events/releases | Notify about new releases. The release settings must be set to \&quot;event\&quot;. |


## clear_precomputed_events

> Object clear_precomputed_events(opts)

Reset the precomputed data related to the pushed events.

### Examples

```ruby
require 'time'
require 'athenian'
# setup authorization
Athenian.configure do |config|
  # Configure API key authorization: apiKeyAuth
  config.api_key['apiKeyAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['apiKeyAuth'] = 'Bearer'

  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Athenian::EventsApi.new
opts = {
  body: Athenian::DeleteEventsCacheRequest.new({account: 37, repositories: ["github.com/athenianco/athenian-webapp", "github.com/athenianco/athenian-api"], targets: ['release']}) # DeleteEventsCacheRequest | 
}

begin
  # Reset the precomputed data related to the pushed events.
  result = api_instance.clear_precomputed_events(opts)
  p result
rescue Athenian::ApiError => e
  puts "Error when calling EventsApi->clear_precomputed_events: #{e}"
end
```

#### Using the clear_precomputed_events_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> clear_precomputed_events_with_http_info(opts)

```ruby
begin
  # Reset the precomputed data related to the pushed events.
  data, status_code, headers = api_instance.clear_precomputed_events_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue Athenian::ApiError => e
  puts "Error when calling EventsApi->clear_precomputed_events_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**DeleteEventsCacheRequest**](DeleteEventsCacheRequest.md) |  | [optional] |

### Return type

**Object**

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_deployment_labels

> <GetDeploymentLabels200Response> get_deployment_labels(name)

Retrieve the labels associated with the deployment.

### Examples

```ruby
require 'time'
require 'athenian'
# setup authorization
Athenian.configure do |config|
  # Configure API key authorization: apiKeyAuth
  config.api_key['apiKeyAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['apiKeyAuth'] = 'Bearer'
end

api_instance = Athenian::EventsApi.new
name = 'name_example' # String | Name of the deployment.

begin
  # Retrieve the labels associated with the deployment.
  result = api_instance.get_deployment_labels(name)
  p result
rescue Athenian::ApiError => e
  puts "Error when calling EventsApi->get_deployment_labels: #{e}"
end
```

#### Using the get_deployment_labels_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetDeploymentLabels200Response>, Integer, Hash)> get_deployment_labels_with_http_info(name)

```ruby
begin
  # Retrieve the labels associated with the deployment.
  data, status_code, headers = api_instance.get_deployment_labels_with_http_info(name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetDeploymentLabels200Response>
rescue Athenian::ApiError => e
  puts "Error when calling EventsApi->get_deployment_labels_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of the deployment. |  |

### Return type

[**GetDeploymentLabels200Response**](GetDeploymentLabels200Response.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## modify_deployment_labels

> <GetDeploymentLabels200Response> modify_deployment_labels(name, opts)

Modify the labels for the deployment applying the given instructions. 

### Examples

```ruby
require 'time'
require 'athenian'
# setup authorization
Athenian.configure do |config|
  # Configure API key authorization: apiKeyAuth
  config.api_key['apiKeyAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['apiKeyAuth'] = 'Bearer'
end

api_instance = Athenian::EventsApi.new
name = 'name_example' # String | Name of the deployment.
opts = {
  body: Athenian::DeploymentModifyLabelsRequest.new # DeploymentModifyLabelsRequest | 
}

begin
  # Modify the labels for the deployment applying the given instructions. 
  result = api_instance.modify_deployment_labels(name, opts)
  p result
rescue Athenian::ApiError => e
  puts "Error when calling EventsApi->modify_deployment_labels: #{e}"
end
```

#### Using the modify_deployment_labels_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetDeploymentLabels200Response>, Integer, Hash)> modify_deployment_labels_with_http_info(name, opts)

```ruby
begin
  # Modify the labels for the deployment applying the given instructions. 
  data, status_code, headers = api_instance.modify_deployment_labels_with_http_info(name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetDeploymentLabels200Response>
rescue Athenian::ApiError => e
  puts "Error when calling EventsApi->modify_deployment_labels_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of the deployment. |  |
| **body** | [**DeploymentModifyLabelsRequest**](DeploymentModifyLabelsRequest.md) |  | [optional] |

### Return type

[**GetDeploymentLabels200Response**](GetDeploymentLabels200Response.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## notify_deployments

> <NotifyDeployments200Response> notify_deployments(opts)

Notify about new deployments.

### Examples

```ruby
require 'time'
require 'athenian'
# setup authorization
Athenian.configure do |config|
  # Configure API key authorization: apiKeyAuth
  config.api_key['apiKeyAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['apiKeyAuth'] = 'Bearer'
end

api_instance = Athenian::EventsApi.new
opts = {
  body: [Athenian::DeploymentNotification.new({components: [Athenian::DeployedComponent.new({repository: 'github.com/athenianco/athenian-webapp', reference: 'reference_example'})], environment: 'environment_example', date_started: Time.now, date_finished: Time.now, conclusion: Athenian::DeploymentConclusion::SUCCESS})] # Array<DeploymentNotification> | 
}

begin
  # Notify about new deployments.
  result = api_instance.notify_deployments(opts)
  p result
rescue Athenian::ApiError => e
  puts "Error when calling EventsApi->notify_deployments: #{e}"
end
```

#### Using the notify_deployments_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NotifyDeployments200Response>, Integer, Hash)> notify_deployments_with_http_info(opts)

```ruby
begin
  # Notify about new deployments.
  data, status_code, headers = api_instance.notify_deployments_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NotifyDeployments200Response>
rescue Athenian::ApiError => e
  puts "Error when calling EventsApi->notify_deployments_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**Array&lt;DeploymentNotification&gt;**](DeploymentNotification.md) |  | [optional] |

### Return type

[**NotifyDeployments200Response**](NotifyDeployments200Response.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## notify_releases

> <Array<ReleaseNotificationStatus>> notify_releases(opts)

Notify about new releases. The release settings must be set to \"event\".

### Examples

```ruby
require 'time'
require 'athenian'
# setup authorization
Athenian.configure do |config|
  # Configure API key authorization: apiKeyAuth
  config.api_key['apiKeyAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['apiKeyAuth'] = 'Bearer'
end

api_instance = Athenian::EventsApi.new
opts = {
  body: [Athenian::ReleaseNotification.new({repository: 'github.com/athenianco/athenian-webapp', commit: 'commit_example'})] # Array<ReleaseNotification> | 
}

begin
  # Notify about new releases. The release settings must be set to \"event\".
  result = api_instance.notify_releases(opts)
  p result
rescue Athenian::ApiError => e
  puts "Error when calling EventsApi->notify_releases: #{e}"
end
```

#### Using the notify_releases_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<ReleaseNotificationStatus>>, Integer, Hash)> notify_releases_with_http_info(opts)

```ruby
begin
  # Notify about new releases. The release settings must be set to \"event\".
  data, status_code, headers = api_instance.notify_releases_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<ReleaseNotificationStatus>>
rescue Athenian::ApiError => e
  puts "Error when calling EventsApi->notify_releases_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**Array&lt;ReleaseNotification&gt;**](ReleaseNotification.md) |  | [optional] |

### Return type

[**Array&lt;ReleaseNotificationStatus&gt;**](ReleaseNotificationStatus.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

