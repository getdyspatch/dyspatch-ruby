=begin
#Dyspatch API

## Introduction  The Dyspatch API is based on the REST paradigm, and features resource based URLs with standard HTTP response codes to indicate errors. We use standard HTTP authentication and request verbs, and all responses are JSON formatted. See our [Implementation Guide](https://docs.dyspatch.io/development/implementing_dyspatch/) for more details on how to implement Dyspatch.  ## API Client Libraries Dyspatch provides API Clients for popular languages and web frameworks.  - [Java](https://github.com/getdyspatch/dyspatch-java) - [Javascript](https://github.com/getdyspatch/dyspatch-javascript) - [Python](https://github.com/getdyspatch/dyspatch-python) - [C#](https://github.com/getdyspatch/dyspatch-dotnet) - [Go](https://github.com/getdyspatch/dyspatch-golang) - [Ruby](https://github.com/getdyspatch/dyspatch-ruby)  

The version of the OpenAPI document: 2019.10
Contact: support@dyspatch.io
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.2.3-SNAPSHOT

=end

require 'cgi'

module DyspatchClient
  class LocalizationsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get Localization Object by ID
    # Returns a specific localization object with a matching ID
    # @param localization_id [String] A localization ID
    # @param target_language [String] The type of templating language to compile as. Should only be used for visual templates.
    # @param accept [String] A version of the API that should be used for the request. For example, to use version \&quot;2019.10\&quot;, set the value to \&quot;application/vnd.dyspatch.2019.10+json\&quot;
    # @param [Hash] opts the optional parameters
    # @return [LocalizationRead]
    def get_localization_by_id(localization_id, target_language, accept, opts = {})
      data, _status_code, _headers = get_localization_by_id_with_http_info(localization_id, target_language, accept, opts)
      data
    end

    # Get Localization Object by ID
    # Returns a specific localization object with a matching ID
    # @param localization_id [String] A localization ID
    # @param target_language [String] The type of templating language to compile as. Should only be used for visual templates.
    # @param accept [String] A version of the API that should be used for the request. For example, to use version \&quot;2019.10\&quot;, set the value to \&quot;application/vnd.dyspatch.2019.10+json\&quot;
    # @param [Hash] opts the optional parameters
    # @return [Array<(LocalizationRead, Integer, Hash)>] LocalizationRead data, response status code and response headers
    def get_localization_by_id_with_http_info(localization_id, target_language, accept, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LocalizationsApi.get_localization_by_id ...'
      end
      # verify the required parameter 'localization_id' is set
      if @api_client.config.client_side_validation && localization_id.nil?
        fail ArgumentError, "Missing the required parameter 'localization_id' when calling LocalizationsApi.get_localization_by_id"
      end
      # verify the required parameter 'target_language' is set
      if @api_client.config.client_side_validation && target_language.nil?
        fail ArgumentError, "Missing the required parameter 'target_language' when calling LocalizationsApi.get_localization_by_id"
      end
      # verify enum value
      allowable_values = ["html", "handlebars", "ampscript", "freemarker", "cheetah"]
      if @api_client.config.client_side_validation && !allowable_values.include?(target_language)
        fail ArgumentError, "invalid value for \"target_language\", must be one of #{allowable_values}"
      end
      # verify the required parameter 'accept' is set
      if @api_client.config.client_side_validation && accept.nil?
        fail ArgumentError, "Missing the required parameter 'accept' when calling LocalizationsApi.get_localization_by_id"
      end
      # resource path
      local_var_path = '/localizations/{localizationId}'.sub('{' + 'localizationId' + '}', CGI.escape(localization_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'targetLanguage'] = target_language

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/vnd.dyspatch.2019.10+json', '*/*'])
      header_params[:'Accept'] = accept

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'LocalizationRead' 

      # auth_names
      auth_names = opts[:auth_names] || ['Bearer']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LocalizationsApi#get_localization_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
