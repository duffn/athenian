=begin
This is an automatically generated file. DO NOT EDIT.

Generated from version 2.1.86 of the OpenAPI specification at
https://github.com/athenianco/api-spec/releases/tag/2.1.86.
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.5.0
=end

require 'cgi'

module Athenian
  class IntegrationsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Download all the data collected by Athenian for custom analysis.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :account Numeric identifier of the account. Raises HTTP 400 if the user belongs to more than one account.
    # @option opts [String] :format Output file format. The default is &#x60;parquet&#x60;.
    # @return [File]
    def get_everything(opts = {})
      data, _status_code, _headers = get_everything_with_http_info(opts)
      data
    end

    # Download all the data collected by Athenian for custom analysis.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :account Numeric identifier of the account. Raises HTTP 400 if the user belongs to more than one account.
    # @option opts [String] :format Output file format. The default is &#x60;parquet&#x60;.
    # @return [Array<(File, Integer, Hash)>] File data, response status code and response headers
    def get_everything_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IntegrationsApi.get_everything ...'
      end
      allowable_values = ['parquet']
      if @api_client.config.client_side_validation && opts[:'format'] && !allowable_values.include?(opts[:'format'])
        fail ArgumentError, "invalid value for \"format\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/get/export'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'account'] = opts[:'account'] if !opts[:'account'].nil?
      query_params[:'format'] = opts[:'format'] if !opts[:'format'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/zip', 'application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'File'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"IntegrationsApi.get_everything",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IntegrationsApi#get_everything\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Match provided people names/logins/emails to the account's GitHub organization members.
    # @param body [MatchIdentitiesRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<MatchedIdentity>]
    def match_identities(body, opts = {})
      data, _status_code, _headers = match_identities_with_http_info(body, opts)
      data
    end

    # Match provided people names/logins/emails to the account&#39;s GitHub organization members.
    # @param body [MatchIdentitiesRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<MatchedIdentity>, Integer, Hash)>] Array<MatchedIdentity> data, response status code and response headers
    def match_identities_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IntegrationsApi.match_identities ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling IntegrationsApi.match_identities"
      end
      # resource path
      local_var_path = '/match/identities'

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
      return_type = opts[:debug_return_type] || 'Array<MatchedIdentity>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"IntegrationsApi.match_identities",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IntegrationsApi#match_identities\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
