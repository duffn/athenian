=begin
This is an automatically generated file. DO NOT EDIT.

Generated from version 2.1.81 of the OpenAPI specification at
https://github.com/athenianco/api-spec/releases/tag/2.1.81.
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.4.0
=end

require 'cgi'

module Athenian
  class PaginationApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Compute the balanced pagination plan for `/filter/pull_requests`.
    # @param [Hash] opts the optional parameters
    # @option opts [PaginatePullRequestsRequest] :body 
    # @return [PullRequestPaginationPlan]
    def paginate_prs(opts = {})
      data, _status_code, _headers = paginate_prs_with_http_info(opts)
      data
    end

    # Compute the balanced pagination plan for &#x60;/filter/pull_requests&#x60;.
    # @param [Hash] opts the optional parameters
    # @option opts [PaginatePullRequestsRequest] :body 
    # @return [Array<(PullRequestPaginationPlan, Integer, Hash)>] PullRequestPaginationPlan data, response status code and response headers
    def paginate_prs_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PaginationApi.paginate_prs ...'
      end
      # resource path
      local_var_path = '/paginate/pull_requests'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'body'])

      # return_type
      return_type = opts[:debug_return_type] || 'PullRequestPaginationPlan'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"PaginationApi.paginate_prs",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaginationApi#paginate_prs\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end