# Athenian::FilterApi

All URIs are relative to *https://api.athenian.co/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**diff_releases**](FilterApi.md#diff_releases) | **POST** /diff/releases | Find releases between the two given ones per repository. |
| [**filter_code_checks**](FilterApi.md#filter_code_checks) | **POST** /filter/code_checks | Find code check runs that match the specified query. [What a code check run is exactly.](https://docs.github.com/en/rest/guides/getting-started-with-the-checks-api#about-check-runs) |
| [**filter_commits**](FilterApi.md#filter_commits) | **POST** /filter/commits | Find commits that match the specified query. |
| [**filter_contributors**](FilterApi.md#filter_contributors) | **POST** /filter/contributors | Find developers that made an action within the given timeframe. |
| [**filter_deployments**](FilterApi.md#filter_deployments) | **POST** /filter/deployments | List the deployments that satisfy the provided filters. We accept new deployment notifications at &#x60;/events/deployments&#x60;. |
| [**filter_environments**](FilterApi.md#filter_environments) | **POST** /filter/environments | List the deployment environments. |
| [**filter_jira_stuff**](FilterApi.md#filter_jira_stuff) | **POST** /filter/jira | Find various JIRA entities relevant to the specified date interval. |
| [**filter_labels**](FilterApi.md#filter_labels) | **POST** /filter/labels | Find labels used in the given repositories. |
| [**filter_prs**](FilterApi.md#filter_prs) | **POST** /filter/pull_requests | List pull requests that satisfy the query. |
| [**filter_releases**](FilterApi.md#filter_releases) | **POST** /filter/releases | Find releases that were published in the given time fram in the given repositories. |
| [**filter_repositories**](FilterApi.md#filter_repositories) | **POST** /filter/repositories | Find repositories that were updated within the given timeframe. |


## diff_releases

> <DiffedReleases> diff_releases(opts)

Find releases between the two given ones per repository.

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

api_instance = Athenian::FilterApi.new
opts = {
  body: Athenian::DiffReleasesRequest.new({account: 37, borders: { key: [Athenian::ReleasePair.new({old: 'old_example', new: 'new_example'})]}}) # DiffReleasesRequest | 
}

begin
  # Find releases between the two given ones per repository.
  result = api_instance.diff_releases(opts)
  p result
rescue Athenian::ApiError => e
  puts "Error when calling FilterApi->diff_releases: #{e}"
end
```

#### Using the diff_releases_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DiffedReleases>, Integer, Hash)> diff_releases_with_http_info(opts)

```ruby
begin
  # Find releases between the two given ones per repository.
  data, status_code, headers = api_instance.diff_releases_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DiffedReleases>
rescue Athenian::ApiError => e
  puts "Error when calling FilterApi->diff_releases_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**DiffReleasesRequest**](DiffReleasesRequest.md) |  | [optional] |

### Return type

[**DiffedReleases**](DiffedReleases.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## filter_code_checks

> <FilteredCodeCheckRuns> filter_code_checks(opts)

Find code check runs that match the specified query. [What a code check run is exactly.](https://docs.github.com/en/rest/guides/getting-started-with-the-checks-api#about-check-runs)

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

api_instance = Athenian::FilterApi.new
opts = {
  body: Athenian::FilterCodeChecksRequest.new({_in: ["github.com/athenianco/athenian-webapp", "github.com/athenianco/athenian-api"], date_from: Date.today, date_to: Date.today, account: 37}) # FilterCodeChecksRequest | 
}

begin
  # Find code check runs that match the specified query. [What a code check run is exactly.](https://docs.github.com/en/rest/guides/getting-started-with-the-checks-api#about-check-runs)
  result = api_instance.filter_code_checks(opts)
  p result
rescue Athenian::ApiError => e
  puts "Error when calling FilterApi->filter_code_checks: #{e}"
end
```

#### Using the filter_code_checks_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FilteredCodeCheckRuns>, Integer, Hash)> filter_code_checks_with_http_info(opts)

```ruby
begin
  # Find code check runs that match the specified query. [What a code check run is exactly.](https://docs.github.com/en/rest/guides/getting-started-with-the-checks-api#about-check-runs)
  data, status_code, headers = api_instance.filter_code_checks_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FilteredCodeCheckRuns>
rescue Athenian::ApiError => e
  puts "Error when calling FilterApi->filter_code_checks_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**FilterCodeChecksRequest**](FilterCodeChecksRequest.md) |  | [optional] |

### Return type

[**FilteredCodeCheckRuns**](FilteredCodeCheckRuns.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## filter_commits

> <CommitsList> filter_commits(opts)

Find commits that match the specified query.

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

api_instance = Athenian::FilterApi.new
opts = {
  body: Athenian::FilterCommitsRequest.new({account: 37, date_from: Date.today, date_to: Date.today, _in: ["github.com/athenianco/athenian-webapp", "github.com/athenianco/athenian-api"], property: 'bypassing_prs'}) # FilterCommitsRequest | 
}

begin
  # Find commits that match the specified query.
  result = api_instance.filter_commits(opts)
  p result
rescue Athenian::ApiError => e
  puts "Error when calling FilterApi->filter_commits: #{e}"
end
```

#### Using the filter_commits_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CommitsList>, Integer, Hash)> filter_commits_with_http_info(opts)

```ruby
begin
  # Find commits that match the specified query.
  data, status_code, headers = api_instance.filter_commits_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CommitsList>
rescue Athenian::ApiError => e
  puts "Error when calling FilterApi->filter_commits_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**FilterCommitsRequest**](FilterCommitsRequest.md) |  | [optional] |

### Return type

[**CommitsList**](CommitsList.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## filter_contributors

> <Array<DeveloperSummary>> filter_contributors(opts)

Find developers that made an action within the given timeframe.

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

api_instance = Athenian::FilterApi.new
opts = {
  body: Athenian::FilterContributorsRequest.new({account: 37, date_from: Date.today, date_to: Date.today}) # FilterContributorsRequest | 
}

begin
  # Find developers that made an action within the given timeframe.
  result = api_instance.filter_contributors(opts)
  p result
rescue Athenian::ApiError => e
  puts "Error when calling FilterApi->filter_contributors: #{e}"
end
```

#### Using the filter_contributors_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<DeveloperSummary>>, Integer, Hash)> filter_contributors_with_http_info(opts)

```ruby
begin
  # Find developers that made an action within the given timeframe.
  data, status_code, headers = api_instance.filter_contributors_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<DeveloperSummary>>
rescue Athenian::ApiError => e
  puts "Error when calling FilterApi->filter_contributors_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**FilterContributorsRequest**](FilterContributorsRequest.md) |  | [optional] |

### Return type

[**Array&lt;DeveloperSummary&gt;**](DeveloperSummary.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## filter_deployments

> <FilteredDeployments> filter_deployments(opts)

List the deployments that satisfy the provided filters. We accept new deployment notifications at `/events/deployments`.

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

api_instance = Athenian::FilterApi.new
opts = {
  body: Athenian::FilterDeploymentsRequest.new({date_from: Date.today, date_to: Date.today, account: 37}) # FilterDeploymentsRequest | 
}

begin
  # List the deployments that satisfy the provided filters. We accept new deployment notifications at `/events/deployments`.
  result = api_instance.filter_deployments(opts)
  p result
rescue Athenian::ApiError => e
  puts "Error when calling FilterApi->filter_deployments: #{e}"
end
```

#### Using the filter_deployments_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FilteredDeployments>, Integer, Hash)> filter_deployments_with_http_info(opts)

```ruby
begin
  # List the deployments that satisfy the provided filters. We accept new deployment notifications at `/events/deployments`.
  data, status_code, headers = api_instance.filter_deployments_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FilteredDeployments>
rescue Athenian::ApiError => e
  puts "Error when calling FilterApi->filter_deployments_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**FilterDeploymentsRequest**](FilterDeploymentsRequest.md) |  | [optional] |

### Return type

[**FilteredDeployments**](FilteredDeployments.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## filter_environments

> <Array<FilteredEnvironment>> filter_environments(opts)

List the deployment environments.

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

api_instance = Athenian::FilterApi.new
opts = {
  body: Athenian::FilterEnvironmentsRequest.new({account: 37, date_from: Date.today, date_to: Date.today}) # FilterEnvironmentsRequest | 
}

begin
  # List the deployment environments.
  result = api_instance.filter_environments(opts)
  p result
rescue Athenian::ApiError => e
  puts "Error when calling FilterApi->filter_environments: #{e}"
end
```

#### Using the filter_environments_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<FilteredEnvironment>>, Integer, Hash)> filter_environments_with_http_info(opts)

```ruby
begin
  # List the deployment environments.
  data, status_code, headers = api_instance.filter_environments_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<FilteredEnvironment>>
rescue Athenian::ApiError => e
  puts "Error when calling FilterApi->filter_environments_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**FilterEnvironmentsRequest**](FilterEnvironmentsRequest.md) |  | [optional] |

### Return type

[**Array&lt;FilteredEnvironment&gt;**](FilteredEnvironment.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## filter_jira_stuff

> <FilteredJIRAStuff> filter_jira_stuff(opts)

Find various JIRA entities relevant to the specified date interval.

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

api_instance = Athenian::FilterApi.new
opts = {
  body: Athenian::FilterJIRAStuff.new({account: 37, date_from: Date.today, date_to: Date.today, exclude_inactive: false}) # FilterJIRAStuff | 
}

begin
  # Find various JIRA entities relevant to the specified date interval.
  result = api_instance.filter_jira_stuff(opts)
  p result
rescue Athenian::ApiError => e
  puts "Error when calling FilterApi->filter_jira_stuff: #{e}"
end
```

#### Using the filter_jira_stuff_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FilteredJIRAStuff>, Integer, Hash)> filter_jira_stuff_with_http_info(opts)

```ruby
begin
  # Find various JIRA entities relevant to the specified date interval.
  data, status_code, headers = api_instance.filter_jira_stuff_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FilteredJIRAStuff>
rescue Athenian::ApiError => e
  puts "Error when calling FilterApi->filter_jira_stuff_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**FilterJIRAStuff**](FilterJIRAStuff.md) |  | [optional] |

### Return type

[**FilteredJIRAStuff**](FilteredJIRAStuff.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## filter_labels

> <Array<FilteredLabel>> filter_labels(opts)

Find labels used in the given repositories.

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

api_instance = Athenian::FilterApi.new
opts = {
  body: Athenian::FilterLabelsRequest.new({account: 37}) # FilterLabelsRequest | 
}

begin
  # Find labels used in the given repositories.
  result = api_instance.filter_labels(opts)
  p result
rescue Athenian::ApiError => e
  puts "Error when calling FilterApi->filter_labels: #{e}"
end
```

#### Using the filter_labels_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<FilteredLabel>>, Integer, Hash)> filter_labels_with_http_info(opts)

```ruby
begin
  # Find labels used in the given repositories.
  data, status_code, headers = api_instance.filter_labels_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<FilteredLabel>>
rescue Athenian::ApiError => e
  puts "Error when calling FilterApi->filter_labels_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**FilterLabelsRequest**](FilterLabelsRequest.md) |  | [optional] |

### Return type

[**Array&lt;FilteredLabel&gt;**](FilteredLabel.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## filter_prs

> <PullRequestSet> filter_prs(opts)

List pull requests that satisfy the query.

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

api_instance = Athenian::FilterApi.new
opts = {
  filter_pull_requests_request: Athenian::FilterPullRequestsRequest.new({account: 37, date_from: Date.today, date_to: Date.today, _in: ["github.com/athenianco/athenian-webapp", "github.com/athenianco/athenian-api"], exclude_inactive: false}) # FilterPullRequestsRequest | 
}

begin
  # List pull requests that satisfy the query.
  result = api_instance.filter_prs(opts)
  p result
rescue Athenian::ApiError => e
  puts "Error when calling FilterApi->filter_prs: #{e}"
end
```

#### Using the filter_prs_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PullRequestSet>, Integer, Hash)> filter_prs_with_http_info(opts)

```ruby
begin
  # List pull requests that satisfy the query.
  data, status_code, headers = api_instance.filter_prs_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PullRequestSet>
rescue Athenian::ApiError => e
  puts "Error when calling FilterApi->filter_prs_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter_pull_requests_request** | [**FilterPullRequestsRequest**](FilterPullRequestsRequest.md) |  | [optional] |

### Return type

[**PullRequestSet**](PullRequestSet.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## filter_releases

> <ReleaseSet> filter_releases(opts)

Find releases that were published in the given time fram in the given repositories.

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

api_instance = Athenian::FilterApi.new
opts = {
  body: Athenian::FilterReleasesRequest.new({account: 37, date_from: Date.today, date_to: Date.today}) # FilterReleasesRequest | 
}

begin
  # Find releases that were published in the given time fram in the given repositories.
  result = api_instance.filter_releases(opts)
  p result
rescue Athenian::ApiError => e
  puts "Error when calling FilterApi->filter_releases: #{e}"
end
```

#### Using the filter_releases_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReleaseSet>, Integer, Hash)> filter_releases_with_http_info(opts)

```ruby
begin
  # Find releases that were published in the given time fram in the given repositories.
  data, status_code, headers = api_instance.filter_releases_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReleaseSet>
rescue Athenian::ApiError => e
  puts "Error when calling FilterApi->filter_releases_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**FilterReleasesRequest**](FilterReleasesRequest.md) |  | [optional] |

### Return type

[**ReleaseSet**](ReleaseSet.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## filter_repositories

> Array&lt;String&gt; filter_repositories(opts)

Find repositories that were updated within the given timeframe.

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

api_instance = Athenian::FilterApi.new
opts = {
  body: Athenian::FilterRepositoriesRequest.new({account: 37, date_from: Date.today, date_to: Date.today}) # FilterRepositoriesRequest | 
}

begin
  # Find repositories that were updated within the given timeframe.
  result = api_instance.filter_repositories(opts)
  p result
rescue Athenian::ApiError => e
  puts "Error when calling FilterApi->filter_repositories: #{e}"
end
```

#### Using the filter_repositories_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Array&lt;String&gt;, Integer, Hash)> filter_repositories_with_http_info(opts)

```ruby
begin
  # Find repositories that were updated within the given timeframe.
  data, status_code, headers = api_instance.filter_repositories_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Array&lt;String&gt;
rescue Athenian::ApiError => e
  puts "Error when calling FilterApi->filter_repositories_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**FilterRepositoriesRequest**](FilterRepositoriesRequest.md) |  | [optional] |

### Return type

**Array&lt;String&gt;**

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

