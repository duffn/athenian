# Athenian::HistogramsApi

All URIs are relative to *https://api.athenian.co/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**calc_histogram_code_checks**](HistogramsApi.md#calc_histogram_code_checks) | **POST** /histograms/code_checks | Calculate histograms on continuous integration runs, such as GitHub Actions, Jenkins, Circle, etc. |
| [**calc_histogram_jira**](HistogramsApi.md#calc_histogram_jira) | **POST** /histograms/jira | Calculate histograms over JIRA issue activities. |
| [**calc_histogram_prs**](HistogramsApi.md#calc_histogram_prs) | **POST** /histograms/pull_requests | Calculate histograms over PR distributions. |


## calc_histogram_code_checks

> <Array<CalculatedCodeCheckHistogram>> calc_histogram_code_checks(body)

Calculate histograms on continuous integration runs, such as GitHub Actions, Jenkins, Circle, etc.

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

api_instance = Athenian::HistogramsApi.new
body = Athenian::CodeCheckHistogramsRequest.new({_for: [Athenian::ForSetCodeChecks.new({repositories: ["github.com/athenianco/athenian-webapp", "github.com/athenianco/athenian-api"]})], histograms: [Athenian::CodeCheckHistogramDefinition.new({metric: Athenian::CodeCheckMetricID::SUITES_COUNT})], date_from: Date.today, date_to: Date.today, account: 37}) # CodeCheckHistogramsRequest | Select the check runs of interest and the metrics to calculate.

begin
  # Calculate histograms on continuous integration runs, such as GitHub Actions, Jenkins, Circle, etc.
  result = api_instance.calc_histogram_code_checks(body)
  p result
rescue Athenian::ApiError => e
  puts "Error when calling HistogramsApi->calc_histogram_code_checks: #{e}"
end
```

#### Using the calc_histogram_code_checks_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<CalculatedCodeCheckHistogram>>, Integer, Hash)> calc_histogram_code_checks_with_http_info(body)

```ruby
begin
  # Calculate histograms on continuous integration runs, such as GitHub Actions, Jenkins, Circle, etc.
  data, status_code, headers = api_instance.calc_histogram_code_checks_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<CalculatedCodeCheckHistogram>>
rescue Athenian::ApiError => e
  puts "Error when calling HistogramsApi->calc_histogram_code_checks_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**CodeCheckHistogramsRequest**](CodeCheckHistogramsRequest.md) | Select the check runs of interest and the metrics to calculate. |  |

### Return type

[**Array&lt;CalculatedCodeCheckHistogram&gt;**](CalculatedCodeCheckHistogram.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## calc_histogram_jira

> <Array<CalculatedJIRAHistogram>> calc_histogram_jira(body)

Calculate histograms over JIRA issue activities.

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

api_instance = Athenian::HistogramsApi.new
body = Athenian::JIRAHistogramsRequest.new({histograms: [Athenian::JIRAHistogramDefinition.new({metric: Athenian::JIRAMetricID::OPEN})], date_from: Date.today, date_to: Date.today, exclude_inactive: false, account: 37}) # JIRAHistogramsRequest | Query for selecting JIRA issues and binned activities.

begin
  # Calculate histograms over JIRA issue activities.
  result = api_instance.calc_histogram_jira(body)
  p result
rescue Athenian::ApiError => e
  puts "Error when calling HistogramsApi->calc_histogram_jira: #{e}"
end
```

#### Using the calc_histogram_jira_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<CalculatedJIRAHistogram>>, Integer, Hash)> calc_histogram_jira_with_http_info(body)

```ruby
begin
  # Calculate histograms over JIRA issue activities.
  data, status_code, headers = api_instance.calc_histogram_jira_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<CalculatedJIRAHistogram>>
rescue Athenian::ApiError => e
  puts "Error when calling HistogramsApi->calc_histogram_jira_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**JIRAHistogramsRequest**](JIRAHistogramsRequest.md) | Query for selecting JIRA issues and binned activities. |  |

### Return type

[**Array&lt;CalculatedJIRAHistogram&gt;**](CalculatedJIRAHistogram.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## calc_histogram_prs

> <Array<CalculatedPullRequestHistogram>> calc_histogram_prs(body)

Calculate histograms over PR distributions.

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

api_instance = Athenian::HistogramsApi.new
body = Athenian::PullRequestHistogramsRequest.new({_for: [Athenian::ForSetPullRequests.new], histograms: [Athenian::PullRequestHistogramDefinition.new({metric: Athenian::PullRequestMetricID::WIP_TIME})], date_from: Date.today, date_to: Date.today, exclude_inactive: false, account: 37}) # PullRequestHistogramsRequest | Desired histogram definitions.

begin
  # Calculate histograms over PR distributions.
  result = api_instance.calc_histogram_prs(body)
  p result
rescue Athenian::ApiError => e
  puts "Error when calling HistogramsApi->calc_histogram_prs: #{e}"
end
```

#### Using the calc_histogram_prs_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<CalculatedPullRequestHistogram>>, Integer, Hash)> calc_histogram_prs_with_http_info(body)

```ruby
begin
  # Calculate histograms over PR distributions.
  data, status_code, headers = api_instance.calc_histogram_prs_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<CalculatedPullRequestHistogram>>
rescue Athenian::ApiError => e
  puts "Error when calling HistogramsApi->calc_histogram_prs_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**PullRequestHistogramsRequest**](PullRequestHistogramsRequest.md) | Desired histogram definitions. |  |

### Return type

[**Array&lt;CalculatedPullRequestHistogram&gt;**](CalculatedPullRequestHistogram.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

