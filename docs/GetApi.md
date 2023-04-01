# Athenian::GetApi

All URIs are relative to *https://api.athenian.co/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_contributors**](GetApi.md#get_contributors) | **GET** /get/contributors/{id} | List all the contributors belonging to the specified account. |
| [**get_jira_issues**](GetApi.md#get_jira_issues) | **POST** /get/jira_issues | Retrieve Jira issues by key. |
| [**get_prs**](GetApi.md#get_prs) | **POST** /get/pull_requests | List pull requests by repository and number. |
| [**get_releases**](GetApi.md#get_releases) | **POST** /get/releases | List releases by repository and name. |


## get_contributors

> <Array<Contributor>> get_contributors(id)

List all the contributors belonging to the specified account.

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

api_instance = Athenian::GetApi.new
id = 56 # Integer | Numeric identifier of the account.

begin
  # List all the contributors belonging to the specified account.
  result = api_instance.get_contributors(id)
  p result
rescue Athenian::ApiError => e
  puts "Error when calling GetApi->get_contributors: #{e}"
end
```

#### Using the get_contributors_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Contributor>>, Integer, Hash)> get_contributors_with_http_info(id)

```ruby
begin
  # List all the contributors belonging to the specified account.
  data, status_code, headers = api_instance.get_contributors_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Contributor>>
rescue Athenian::ApiError => e
  puts "Error when calling GetApi->get_contributors_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Numeric identifier of the account. |  |

### Return type

[**Array&lt;Contributor&gt;**](Contributor.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_jira_issues

> <GetJIRAIssuesResponse> get_jira_issues(opts)

Retrieve Jira issues by key.

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

api_instance = Athenian::GetApi.new
opts = {
  get_jira_issues_request: Athenian::GetJIRAIssuesRequest.new({account: 37, issues: ['issues_example']}) # GetJIRAIssuesRequest | 
}

begin
  # Retrieve Jira issues by key.
  result = api_instance.get_jira_issues(opts)
  p result
rescue Athenian::ApiError => e
  puts "Error when calling GetApi->get_jira_issues: #{e}"
end
```

#### Using the get_jira_issues_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetJIRAIssuesResponse>, Integer, Hash)> get_jira_issues_with_http_info(opts)

```ruby
begin
  # Retrieve Jira issues by key.
  data, status_code, headers = api_instance.get_jira_issues_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetJIRAIssuesResponse>
rescue Athenian::ApiError => e
  puts "Error when calling GetApi->get_jira_issues_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **get_jira_issues_request** | [**GetJIRAIssuesRequest**](GetJIRAIssuesRequest.md) |  | [optional] |

### Return type

[**GetJIRAIssuesResponse**](GetJIRAIssuesResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_prs

> <PullRequestSet> get_prs(opts)

List pull requests by repository and number.

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

api_instance = Athenian::GetApi.new
opts = {
  get_pull_requests_request: Athenian::GetPullRequestsRequest.new({account: 37, prs: [Athenian::PullRequestNumbers.new({repository: 'github.com/athenianco/athenian-webapp', numbers: [37]})]}) # GetPullRequestsRequest | 
}

begin
  # List pull requests by repository and number.
  result = api_instance.get_prs(opts)
  p result
rescue Athenian::ApiError => e
  puts "Error when calling GetApi->get_prs: #{e}"
end
```

#### Using the get_prs_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PullRequestSet>, Integer, Hash)> get_prs_with_http_info(opts)

```ruby
begin
  # List pull requests by repository and number.
  data, status_code, headers = api_instance.get_prs_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PullRequestSet>
rescue Athenian::ApiError => e
  puts "Error when calling GetApi->get_prs_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **get_pull_requests_request** | [**GetPullRequestsRequest**](GetPullRequestsRequest.md) |  | [optional] |

### Return type

[**PullRequestSet**](PullRequestSet.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_releases

> <ReleaseSet> get_releases(opts)

List releases by repository and name.

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

api_instance = Athenian::GetApi.new
opts = {
  get_releases_request: Athenian::GetReleasesRequest.new({account: 37, releases: [Athenian::ReleaseNames.new({repository: 'github.com/athenianco/athenian-webapp', names: ['names_example']})]}) # GetReleasesRequest | 
}

begin
  # List releases by repository and name.
  result = api_instance.get_releases(opts)
  p result
rescue Athenian::ApiError => e
  puts "Error when calling GetApi->get_releases: #{e}"
end
```

#### Using the get_releases_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReleaseSet>, Integer, Hash)> get_releases_with_http_info(opts)

```ruby
begin
  # List releases by repository and name.
  data, status_code, headers = api_instance.get_releases_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReleaseSet>
rescue Athenian::ApiError => e
  puts "Error when calling GetApi->get_releases_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **get_releases_request** | [**GetReleasesRequest**](GetReleasesRequest.md) |  | [optional] |

### Return type

[**ReleaseSet**](ReleaseSet.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

