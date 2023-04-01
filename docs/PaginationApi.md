# Athenian::PaginationApi

All URIs are relative to *https://api.athenian.co/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**paginate_prs**](PaginationApi.md#paginate_prs) | **POST** /paginate/pull_requests | Compute the balanced pagination plan for &#x60;/filter/pull_requests&#x60;. |


## paginate_prs

> <PullRequestPaginationPlan> paginate_prs(opts)

Compute the balanced pagination plan for `/filter/pull_requests`.

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

api_instance = Athenian::PaginationApi.new
opts = {
  body: Athenian::PaginatePullRequestsRequest.new({batch: 37, request: Athenian::FilterPullRequestsRequest.new({account: 37, date_from: Date.today, date_to: Date.today, _in: ["github.com/athenianco/athenian-webapp", "github.com/athenianco/athenian-api"], exclude_inactive: false})}) # PaginatePullRequestsRequest | 
}

begin
  # Compute the balanced pagination plan for `/filter/pull_requests`.
  result = api_instance.paginate_prs(opts)
  p result
rescue Athenian::ApiError => e
  puts "Error when calling PaginationApi->paginate_prs: #{e}"
end
```

#### Using the paginate_prs_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PullRequestPaginationPlan>, Integer, Hash)> paginate_prs_with_http_info(opts)

```ruby
begin
  # Compute the balanced pagination plan for `/filter/pull_requests`.
  data, status_code, headers = api_instance.paginate_prs_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PullRequestPaginationPlan>
rescue Athenian::ApiError => e
  puts "Error when calling PaginationApi->paginate_prs_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**PaginatePullRequestsRequest**](PaginatePullRequestsRequest.md) |  | [optional] |

### Return type

[**PullRequestPaginationPlan**](PullRequestPaginationPlan.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

