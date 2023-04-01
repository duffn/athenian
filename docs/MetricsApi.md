# Athenian::MetricsApi

All URIs are relative to *https://api.athenian.co/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**calc_code_bypassing_prs**](MetricsApi.md#calc_code_bypassing_prs) | **POST** /metrics/code_bypassing_prs | Measure the amount of code that was pushed outside of pull requests. |
| [**calc_metrics_code_checks**](MetricsApi.md#calc_metrics_code_checks) | **POST** /metrics/code_checks | Calculate metrics on continuous integration runs, such as GitHub Actions, Jenkins, Circle, etc. |
| [**calc_metrics_deployments**](MetricsApi.md#calc_metrics_deployments) | **POST** /metrics/deployments | Calculate metrics on deployments submitted by &#x60;/events/deployments&#x60;. |
| [**calc_metrics_developers**](MetricsApi.md#calc_metrics_developers) | **POST** /metrics/developers | Calculate metrics over developer activities. |
| [**calc_metrics_jira_linear**](MetricsApi.md#calc_metrics_jira_linear) | **POST** /metrics/jira | Calculate metrics over JIRA issue activities. |
| [**calc_metrics_prs**](MetricsApi.md#calc_metrics_prs) | **POST** /metrics/pull_requests | Calculate linear metrics over PRs. |
| [**calc_metrics_releases**](MetricsApi.md#calc_metrics_releases) | **POST** /metrics/releases | Calculate linear metrics over releases. |


## calc_code_bypassing_prs

> <Array<CodeBypassingPRsMeasurement>> calc_code_bypassing_prs(body)

Measure the amount of code that was pushed outside of pull requests.

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

api_instance = Athenian::MetricsApi.new
body = Athenian::CodeFilter.new({account: 37, date_from: Date.today, date_to: Date.today, _in: ["github.com/athenianco/athenian-webapp", "github.com/athenianco/athenian-api"], granularity: '2 week'}) # CodeFilter | Query for measuring the amount of code that was pushed outside of pull requests.

begin
  # Measure the amount of code that was pushed outside of pull requests.
  result = api_instance.calc_code_bypassing_prs(body)
  p result
rescue Athenian::ApiError => e
  puts "Error when calling MetricsApi->calc_code_bypassing_prs: #{e}"
end
```

#### Using the calc_code_bypassing_prs_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<CodeBypassingPRsMeasurement>>, Integer, Hash)> calc_code_bypassing_prs_with_http_info(body)

```ruby
begin
  # Measure the amount of code that was pushed outside of pull requests.
  data, status_code, headers = api_instance.calc_code_bypassing_prs_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<CodeBypassingPRsMeasurement>>
rescue Athenian::ApiError => e
  puts "Error when calling MetricsApi->calc_code_bypassing_prs_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**CodeFilter**](CodeFilter.md) | Query for measuring the amount of code that was pushed outside of pull requests. |  |

### Return type

[**Array&lt;CodeBypassingPRsMeasurement&gt;**](CodeBypassingPRsMeasurement.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## calc_metrics_code_checks

> <CalculatedCodeCheckMetrics> calc_metrics_code_checks(body)

Calculate metrics on continuous integration runs, such as GitHub Actions, Jenkins, Circle, etc.

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

api_instance = Athenian::MetricsApi.new
body = Athenian::CodeCheckMetricsRequest.new({_for: [Athenian::ForSetCodeChecks.new({repositories: ["github.com/athenianco/athenian-webapp", "github.com/athenianco/athenian-api"]})], metrics: [Athenian::CodeCheckMetricID::SUITES_COUNT], date_from: Date.today, date_to: Date.today, granularities: ['2 week'], account: 37}) # CodeCheckMetricsRequest | Select the check runs of interest and the metrics to calculate.

begin
  # Calculate metrics on continuous integration runs, such as GitHub Actions, Jenkins, Circle, etc.
  result = api_instance.calc_metrics_code_checks(body)
  p result
rescue Athenian::ApiError => e
  puts "Error when calling MetricsApi->calc_metrics_code_checks: #{e}"
end
```

#### Using the calc_metrics_code_checks_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CalculatedCodeCheckMetrics>, Integer, Hash)> calc_metrics_code_checks_with_http_info(body)

```ruby
begin
  # Calculate metrics on continuous integration runs, such as GitHub Actions, Jenkins, Circle, etc.
  data, status_code, headers = api_instance.calc_metrics_code_checks_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CalculatedCodeCheckMetrics>
rescue Athenian::ApiError => e
  puts "Error when calling MetricsApi->calc_metrics_code_checks_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**CodeCheckMetricsRequest**](CodeCheckMetricsRequest.md) | Select the check runs of interest and the metrics to calculate. |  |

### Return type

[**CalculatedCodeCheckMetrics**](CalculatedCodeCheckMetrics.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## calc_metrics_deployments

> <Array<CalculatedDeploymentMetric>> calc_metrics_deployments(body)

Calculate metrics on deployments submitted by `/events/deployments`.

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

api_instance = Athenian::MetricsApi.new
body = Athenian::DeploymentMetricsRequest.new({_for: [Athenian::ForSetDeployments.new], metrics: [Athenian::DeploymentMetricID::COUNT], date_from: Date.today, date_to: Date.today, granularities: ['2 week'], account: 37}) # DeploymentMetricsRequest | Select the deployments of interest and the metrics to calculate.

begin
  # Calculate metrics on deployments submitted by `/events/deployments`.
  result = api_instance.calc_metrics_deployments(body)
  p result
rescue Athenian::ApiError => e
  puts "Error when calling MetricsApi->calc_metrics_deployments: #{e}"
end
```

#### Using the calc_metrics_deployments_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<CalculatedDeploymentMetric>>, Integer, Hash)> calc_metrics_deployments_with_http_info(body)

```ruby
begin
  # Calculate metrics on deployments submitted by `/events/deployments`.
  data, status_code, headers = api_instance.calc_metrics_deployments_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<CalculatedDeploymentMetric>>
rescue Athenian::ApiError => e
  puts "Error when calling MetricsApi->calc_metrics_deployments_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**DeploymentMetricsRequest**](DeploymentMetricsRequest.md) | Select the deployments of interest and the metrics to calculate. |  |

### Return type

[**Array&lt;CalculatedDeploymentMetric&gt;**](CalculatedDeploymentMetric.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## calc_metrics_developers

> <CalculatedDeveloperMetrics> calc_metrics_developers(body)

Calculate metrics over developer activities.

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

api_instance = Athenian::MetricsApi.new
body = Athenian::DeveloperMetricsRequest.new({_for: [Athenian::ForSetDevelopers.new({repositories: ["github.com/athenianco/athenian-webapp", "github.com/athenianco/athenian-api"], developers: 3.56})], metrics: [Athenian::DeveloperMetricID::COMMITS_PUSHED], date_from: Date.today, date_to: Date.today, account: 37, granularities: ['2 week']}) # DeveloperMetricsRequest | Query for selecting developers and measured activities.

begin
  # Calculate metrics over developer activities.
  result = api_instance.calc_metrics_developers(body)
  p result
rescue Athenian::ApiError => e
  puts "Error when calling MetricsApi->calc_metrics_developers: #{e}"
end
```

#### Using the calc_metrics_developers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CalculatedDeveloperMetrics>, Integer, Hash)> calc_metrics_developers_with_http_info(body)

```ruby
begin
  # Calculate metrics over developer activities.
  data, status_code, headers = api_instance.calc_metrics_developers_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CalculatedDeveloperMetrics>
rescue Athenian::ApiError => e
  puts "Error when calling MetricsApi->calc_metrics_developers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**DeveloperMetricsRequest**](DeveloperMetricsRequest.md) | Query for selecting developers and measured activities. |  |

### Return type

[**CalculatedDeveloperMetrics**](CalculatedDeveloperMetrics.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## calc_metrics_jira_linear

> <Array<CalculatedJIRAMetricValues>> calc_metrics_jira_linear(body)

Calculate metrics over JIRA issue activities.

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

api_instance = Athenian::MetricsApi.new
body = Athenian::JIRAMetricsRequest.new({account: 37, date_from: Date.today, date_to: Date.today, exclude_inactive: false, metrics: [Athenian::JIRAMetricID::OPEN], granularities: ['2 week']}) # JIRAMetricsRequest | Query for selecting JIRA issues and measured activities.

begin
  # Calculate metrics over JIRA issue activities.
  result = api_instance.calc_metrics_jira_linear(body)
  p result
rescue Athenian::ApiError => e
  puts "Error when calling MetricsApi->calc_metrics_jira_linear: #{e}"
end
```

#### Using the calc_metrics_jira_linear_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<CalculatedJIRAMetricValues>>, Integer, Hash)> calc_metrics_jira_linear_with_http_info(body)

```ruby
begin
  # Calculate metrics over JIRA issue activities.
  data, status_code, headers = api_instance.calc_metrics_jira_linear_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<CalculatedJIRAMetricValues>>
rescue Athenian::ApiError => e
  puts "Error when calling MetricsApi->calc_metrics_jira_linear_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**JIRAMetricsRequest**](JIRAMetricsRequest.md) | Query for selecting JIRA issues and measured activities. |  |

### Return type

[**Array&lt;CalculatedJIRAMetricValues&gt;**](CalculatedJIRAMetricValues.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## calc_metrics_prs

> <CalculatedPullRequestMetrics> calc_metrics_prs(body)

Calculate linear metrics over PRs.

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

api_instance = Athenian::MetricsApi.new
body = Athenian::PullRequestMetricsRequest.new({_for: [Athenian::ForSetPullRequests.new], metrics: [Athenian::PullRequestMetricID::WIP_TIME], date_from: Date.today, date_to: Date.today, granularities: ['2 week'], exclude_inactive: false, account: 37}) # PullRequestMetricsRequest | Desired metric definitions.

begin
  # Calculate linear metrics over PRs.
  result = api_instance.calc_metrics_prs(body)
  p result
rescue Athenian::ApiError => e
  puts "Error when calling MetricsApi->calc_metrics_prs: #{e}"
end
```

#### Using the calc_metrics_prs_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CalculatedPullRequestMetrics>, Integer, Hash)> calc_metrics_prs_with_http_info(body)

```ruby
begin
  # Calculate linear metrics over PRs.
  data, status_code, headers = api_instance.calc_metrics_prs_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CalculatedPullRequestMetrics>
rescue Athenian::ApiError => e
  puts "Error when calling MetricsApi->calc_metrics_prs_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**PullRequestMetricsRequest**](PullRequestMetricsRequest.md) | Desired metric definitions. |  |

### Return type

[**CalculatedPullRequestMetrics**](CalculatedPullRequestMetrics.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## calc_metrics_releases

> <Array<CalculatedReleaseMetric>> calc_metrics_releases(body)

Calculate linear metrics over releases.

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

api_instance = Athenian::MetricsApi.new
body = Athenian::ReleaseMetricsRequest.new({_for: [nil], metrics: [Athenian::ReleaseMetricID::COUNT], date_from: Date.today, date_to: Date.today, granularities: ['2 week'], account: 37}) # ReleaseMetricsRequest | Desired metric definitions.

begin
  # Calculate linear metrics over releases.
  result = api_instance.calc_metrics_releases(body)
  p result
rescue Athenian::ApiError => e
  puts "Error when calling MetricsApi->calc_metrics_releases: #{e}"
end
```

#### Using the calc_metrics_releases_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<CalculatedReleaseMetric>>, Integer, Hash)> calc_metrics_releases_with_http_info(body)

```ruby
begin
  # Calculate linear metrics over releases.
  data, status_code, headers = api_instance.calc_metrics_releases_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<CalculatedReleaseMetric>>
rescue Athenian::ApiError => e
  puts "Error when calling MetricsApi->calc_metrics_releases_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**ReleaseMetricsRequest**](ReleaseMetricsRequest.md) | Desired metric definitions. |  |

### Return type

[**Array&lt;CalculatedReleaseMetric&gt;**](CalculatedReleaseMetric.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

