=begin
#DocuSign REST API

#The DocuSign REST API provides you with a powerful, convenient, and simple Web services API for interacting with DocuSign.

OpenAPI spec version: v2.1
Contact: devcenter@docusign.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require "uri"

module DocuSign_eSign


  class TrustServiceProvidersApi
    attr_accessor :api_client

    def initialize(api_client = TrustServiceProvidersApi.default)
      @api_client = api_client
    end

    # Returns Account available seals for specified account.
    # 
    # @param account_id The external account number (int) or account ID Guid.
    # @return [AccountSeals]
    def get_seal_providers(account_id)
      data, _status_code, _headers = get_seal_providers_with_http_info(account_id)
      return data
    end

    # Returns Account available seals for specified account.
    # 
    # @param account_id The external account number (int) or account ID Guid.
    # @return [Array<(AccountSeals, Fixnum, Hash)>] AccountSeals data, response status code and response headers
    def get_seal_providers_with_http_info(account_id)
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TrustServiceProvidersApi.get_seal_providers ..."
      end
      # verify the required parameter 'account_id' is set
      fail ArgumentError, "Missing the required parameter 'account_id' when calling TrustServiceProvidersApi.get_seal_providers" if account_id.nil?
      # resource path
      local_var_path = "/v2.1/accounts/{accountId}/seals".sub('{format}','json').sub('{' + 'accountId' + '}', account_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'AccountSeals')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TrustServiceProvidersApi#get_seal_providers\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end