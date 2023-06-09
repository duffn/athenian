=begin
This is an automatically generated file. DO NOT EDIT.

Generated from version 2.1.86 of the OpenAPI specification at
https://github.com/athenianco/api-spec/releases/tag/2.1.86.
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.5.0
=end

require 'cgi'

module Athenian
  class RegistrationApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # 👤 Accept the account membership invitation and finish registration. The user must be already authorized in Auth0.
    # @param body [AcceptedInvitation] Accepted invitation details.
    # @param [Hash] opts the optional parameters
    # @return [InvitedUser]
    def accept_invitation(body, opts = {})
      data, _status_code, _headers = accept_invitation_with_http_info(body, opts)
      data
    end

    # 👤 Accept the account membership invitation and finish registration. The user must be already authorized in Auth0.
    # @param body [AcceptedInvitation] Accepted invitation details.
    # @param [Hash] opts the optional parameters
    # @return [Array<(InvitedUser, Integer, Hash)>] InvitedUser data, response status code and response headers
    def accept_invitation_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RegistrationApi.accept_invitation ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling RegistrationApi.accept_invitation"
      end
      # resource path
      local_var_path = '/invite/accept'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
        header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(body)

      # return_type
      return_type = opts[:debug_return_type] || 'InvitedUser'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"RegistrationApi.accept_invitation",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RegistrationApi#accept_invitation\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Given an invitation URL, get its type (admin or regular account member) and find whether it is correctly formed and is enabled or disabled.
    # @param body [InvitationLink] Checked invitation details.
    # @param [Hash] opts the optional parameters
    # @return [InvitationCheckResult]
    def check_invitation(body, opts = {})
      data, _status_code, _headers = check_invitation_with_http_info(body, opts)
      data
    end

    # Given an invitation URL, get its type (admin or regular account member) and find whether it is correctly formed and is enabled or disabled.
    # @param body [InvitationLink] Checked invitation details.
    # @param [Hash] opts the optional parameters
    # @return [Array<(InvitationCheckResult, Integer, Hash)>] InvitationCheckResult data, response status code and response headers
    def check_invitation_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RegistrationApi.check_invitation ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling RegistrationApi.check_invitation"
      end
      # resource path
      local_var_path = '/invite/check'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
        header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(body)

      # return_type
      return_type = opts[:debug_return_type] || 'InvitationCheckResult'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"RegistrationApi.check_invitation",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RegistrationApi#check_invitation\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Return the current JIRA installation progress in Athenian.
    # @param id [Integer] Numeric identifier of the account that is installing JIRA.
    # @param [Hash] opts the optional parameters
    # @return [InstallationProgress]
    def eval_jira_progress(id, opts = {})
      data, _status_code, _headers = eval_jira_progress_with_http_info(id, opts)
      data
    end

    # Return the current JIRA installation progress in Athenian.
    # @param id [Integer] Numeric identifier of the account that is installing JIRA.
    # @param [Hash] opts the optional parameters
    # @return [Array<(InstallationProgress, Integer, Hash)>] InstallationProgress data, response status code and response headers
    def eval_jira_progress_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RegistrationApi.eval_jira_progress ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling RegistrationApi.eval_jira_progress"
      end
      # resource path
      local_var_path = '/invite/jira_progress/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'InstallationProgress'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"RegistrationApi.eval_jira_progress",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RegistrationApi#eval_jira_progress\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Return the current GitHub installation progress in Athenian.
    # @param id [Integer] Numeric identifier of the account that is installing GitHub.
    # @param [Hash] opts the optional parameters
    # @return [InstallationProgress]
    def eval_metadata_progress(id, opts = {})
      data, _status_code, _headers = eval_metadata_progress_with_http_info(id, opts)
      data
    end

    # Return the current GitHub installation progress in Athenian.
    # @param id [Integer] Numeric identifier of the account that is installing GitHub.
    # @param [Hash] opts the optional parameters
    # @return [Array<(InstallationProgress, Integer, Hash)>] InstallationProgress data, response status code and response headers
    def eval_metadata_progress_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RegistrationApi.eval_metadata_progress ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling RegistrationApi.eval_metadata_progress"
      end
      # resource path
      local_var_path = '/invite/progress/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'InstallationProgress'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"RegistrationApi.eval_metadata_progress",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RegistrationApi#eval_metadata_progress\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 👤 Generate a JIRA integration installation link. The caller must be an admin of the specified account.
    # @param id [Integer] Numeric identifier of the account who is installing JIRA integration.
    # @param [Hash] opts the optional parameters
    # @return [InvitationLink]
    def gen_jira_link(id, opts = {})
      data, _status_code, _headers = gen_jira_link_with_http_info(id, opts)
      data
    end

    # 👤 Generate a JIRA integration installation link. The caller must be an admin of the specified account.
    # @param id [Integer] Numeric identifier of the account who is installing JIRA integration.
    # @param [Hash] opts the optional parameters
    # @return [Array<(InvitationLink, Integer, Hash)>] InvitationLink data, response status code and response headers
    def gen_jira_link_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RegistrationApi.gen_jira_link ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling RegistrationApi.gen_jira_link"
      end
      # resource path
      local_var_path = '/invite/jira/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'InvitationLink'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"RegistrationApi.gen_jira_link",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RegistrationApi#gen_jira_link\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 👤 Create an account invitation link for regular users. The caller must be an admin of the specified account. The link is persistent, so multiple calls return the same result. 
    # @param id [Integer] Numeric identifier of the account where to invite new users.
    # @param [Hash] opts the optional parameters
    # @return [InvitationLink]
    def gen_user_invitation(id, opts = {})
      data, _status_code, _headers = gen_user_invitation_with_http_info(id, opts)
      data
    end

    # 👤 Create an account invitation link for regular users. The caller must be an admin of the specified account. The link is persistent, so multiple calls return the same result. 
    # @param id [Integer] Numeric identifier of the account where to invite new users.
    # @param [Hash] opts the optional parameters
    # @return [Array<(InvitationLink, Integer, Hash)>] InvitationLink data, response status code and response headers
    def gen_user_invitation_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RegistrationApi.gen_user_invitation ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling RegistrationApi.gen_user_invitation"
      end
      # resource path
      local_var_path = '/invite/generate/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'InvitationLink'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"RegistrationApi.gen_user_invitation",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RegistrationApi#gen_user_invitation\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
