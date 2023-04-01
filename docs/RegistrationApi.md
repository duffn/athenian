# Athenian::RegistrationApi

All URIs are relative to *https://api.athenian.co/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**accept_invitation**](RegistrationApi.md#accept_invitation) | **PUT** /invite/accept | 👤 Accept the account membership invitation and finish registration. The user must be already authorized in Auth0. |
| [**check_invitation**](RegistrationApi.md#check_invitation) | **POST** /invite/check | Given an invitation URL, get its type (admin or regular account member) and find whether it is correctly formed and is enabled or disabled. |
| [**eval_jira_progress**](RegistrationApi.md#eval_jira_progress) | **GET** /invite/jira_progress/{id} | Return the current JIRA installation progress in Athenian. |
| [**eval_metadata_progress**](RegistrationApi.md#eval_metadata_progress) | **GET** /invite/progress/{id} | Return the current GitHub installation progress in Athenian. |
| [**gen_jira_link**](RegistrationApi.md#gen_jira_link) | **GET** /invite/jira/{id} | 👤 Generate a JIRA integration installation link. The caller must be an admin of the specified account. |
| [**gen_user_invitation**](RegistrationApi.md#gen_user_invitation) | **GET** /invite/generate/{id} | 👤 Create an account invitation link for regular users. The caller must be an admin of the specified account. The link is persistent, so multiple calls return the same result.  |


## accept_invitation

> <InvitedUser> accept_invitation(body)

👤 Accept the account membership invitation and finish registration. The user must be already authorized in Auth0.

### Examples

```ruby
require 'time'
require 'athenian'
# setup authorization
Athenian.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Athenian::RegistrationApi.new
body = Athenian::AcceptedInvitation.new({url: 'url_example'}) # AcceptedInvitation | Accepted invitation details.

begin
  # 👤 Accept the account membership invitation and finish registration. The user must be already authorized in Auth0.
  result = api_instance.accept_invitation(body)
  p result
rescue Athenian::ApiError => e
  puts "Error when calling RegistrationApi->accept_invitation: #{e}"
end
```

#### Using the accept_invitation_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InvitedUser>, Integer, Hash)> accept_invitation_with_http_info(body)

```ruby
begin
  # 👤 Accept the account membership invitation and finish registration. The user must be already authorized in Auth0.
  data, status_code, headers = api_instance.accept_invitation_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InvitedUser>
rescue Athenian::ApiError => e
  puts "Error when calling RegistrationApi->accept_invitation_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**AcceptedInvitation**](AcceptedInvitation.md) | Accepted invitation details. |  |

### Return type

[**InvitedUser**](InvitedUser.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## check_invitation

> <InvitationCheckResult> check_invitation(body)

Given an invitation URL, get its type (admin or regular account member) and find whether it is correctly formed and is enabled or disabled.

### Examples

```ruby
require 'time'
require 'athenian'

api_instance = Athenian::RegistrationApi.new
body = Athenian::InvitationLink.new({url: 'url_example'}) # InvitationLink | Checked invitation details.

begin
  # Given an invitation URL, get its type (admin or regular account member) and find whether it is correctly formed and is enabled or disabled.
  result = api_instance.check_invitation(body)
  p result
rescue Athenian::ApiError => e
  puts "Error when calling RegistrationApi->check_invitation: #{e}"
end
```

#### Using the check_invitation_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InvitationCheckResult>, Integer, Hash)> check_invitation_with_http_info(body)

```ruby
begin
  # Given an invitation URL, get its type (admin or regular account member) and find whether it is correctly formed and is enabled or disabled.
  data, status_code, headers = api_instance.check_invitation_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InvitationCheckResult>
rescue Athenian::ApiError => e
  puts "Error when calling RegistrationApi->check_invitation_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**InvitationLink**](InvitationLink.md) | Checked invitation details. |  |

### Return type

[**InvitationCheckResult**](InvitationCheckResult.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## eval_jira_progress

> <InstallationProgress> eval_jira_progress(id)

Return the current JIRA installation progress in Athenian.

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

api_instance = Athenian::RegistrationApi.new
id = 56 # Integer | Numeric identifier of the account that is installing JIRA.

begin
  # Return the current JIRA installation progress in Athenian.
  result = api_instance.eval_jira_progress(id)
  p result
rescue Athenian::ApiError => e
  puts "Error when calling RegistrationApi->eval_jira_progress: #{e}"
end
```

#### Using the eval_jira_progress_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InstallationProgress>, Integer, Hash)> eval_jira_progress_with_http_info(id)

```ruby
begin
  # Return the current JIRA installation progress in Athenian.
  data, status_code, headers = api_instance.eval_jira_progress_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InstallationProgress>
rescue Athenian::ApiError => e
  puts "Error when calling RegistrationApi->eval_jira_progress_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Numeric identifier of the account that is installing JIRA. |  |

### Return type

[**InstallationProgress**](InstallationProgress.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## eval_metadata_progress

> <InstallationProgress> eval_metadata_progress(id)

Return the current GitHub installation progress in Athenian.

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

api_instance = Athenian::RegistrationApi.new
id = 56 # Integer | Numeric identifier of the account that is installing GitHub.

begin
  # Return the current GitHub installation progress in Athenian.
  result = api_instance.eval_metadata_progress(id)
  p result
rescue Athenian::ApiError => e
  puts "Error when calling RegistrationApi->eval_metadata_progress: #{e}"
end
```

#### Using the eval_metadata_progress_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InstallationProgress>, Integer, Hash)> eval_metadata_progress_with_http_info(id)

```ruby
begin
  # Return the current GitHub installation progress in Athenian.
  data, status_code, headers = api_instance.eval_metadata_progress_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InstallationProgress>
rescue Athenian::ApiError => e
  puts "Error when calling RegistrationApi->eval_metadata_progress_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Numeric identifier of the account that is installing GitHub. |  |

### Return type

[**InstallationProgress**](InstallationProgress.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## gen_jira_link

> <InvitationLink> gen_jira_link(id)

👤 Generate a JIRA integration installation link. The caller must be an admin of the specified account.

### Examples

```ruby
require 'time'
require 'athenian'
# setup authorization
Athenian.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Athenian::RegistrationApi.new
id = 56 # Integer | Numeric identifier of the account who is installing JIRA integration.

begin
  # 👤 Generate a JIRA integration installation link. The caller must be an admin of the specified account.
  result = api_instance.gen_jira_link(id)
  p result
rescue Athenian::ApiError => e
  puts "Error when calling RegistrationApi->gen_jira_link: #{e}"
end
```

#### Using the gen_jira_link_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InvitationLink>, Integer, Hash)> gen_jira_link_with_http_info(id)

```ruby
begin
  # 👤 Generate a JIRA integration installation link. The caller must be an admin of the specified account.
  data, status_code, headers = api_instance.gen_jira_link_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InvitationLink>
rescue Athenian::ApiError => e
  puts "Error when calling RegistrationApi->gen_jira_link_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Numeric identifier of the account who is installing JIRA integration. |  |

### Return type

[**InvitationLink**](InvitationLink.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## gen_user_invitation

> <InvitationLink> gen_user_invitation(id)

👤 Create an account invitation link for regular users. The caller must be an admin of the specified account. The link is persistent, so multiple calls return the same result. 

### Examples

```ruby
require 'time'
require 'athenian'
# setup authorization
Athenian.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Athenian::RegistrationApi.new
id = 56 # Integer | Numeric identifier of the account where to invite new users.

begin
  # 👤 Create an account invitation link for regular users. The caller must be an admin of the specified account. The link is persistent, so multiple calls return the same result. 
  result = api_instance.gen_user_invitation(id)
  p result
rescue Athenian::ApiError => e
  puts "Error when calling RegistrationApi->gen_user_invitation: #{e}"
end
```

#### Using the gen_user_invitation_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InvitationLink>, Integer, Hash)> gen_user_invitation_with_http_info(id)

```ruby
begin
  # 👤 Create an account invitation link for regular users. The caller must be an admin of the specified account. The link is persistent, so multiple calls return the same result. 
  data, status_code, headers = api_instance.gen_user_invitation_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InvitationLink>
rescue Athenian::ApiError => e
  puts "Error when calling RegistrationApi->gen_user_invitation_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Numeric identifier of the account where to invite new users. |  |

### Return type

[**InvitationLink**](InvitationLink.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

