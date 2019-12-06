=begin
#Dyspatch API

## Introduction  The Dyspatch API is based on the REST paradigm and features resource based URLs with standard HTTP response codes to indicate errors. We use standard HTTP authentication and request verbs and all responses are JSON formatted. See our [Implementation Guide](https://docs.dyspatch.io/development/implementing_dyspatch/) for more details on how to implement Dyspatch.  ## API Client Libraries  Dyspatch provides API Clients for the following languages and web frameworks:  - [Java](https://github.com/getdyspatch/dyspatch-java) - [Javascript](https://github.com/getdyspatch/dyspatch-javascript) - [Python](https://github.com/getdyspatch/dyspatch-python) - [C#](https://github.com/getdyspatch/dyspatch-dotnet) - [Go](https://github.com/getdyspatch/dyspatch-golang) - [Ruby](https://github.com/getdyspatch/dyspatch-ruby) 

OpenAPI spec version: 2019.10
Contact: support@dyspatch.io
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.10

=end

require 'uri'

module DyspatchClient
  class LocalizationsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get Localization Object by ID
    # Returns a specific localization object with a matching ID.
    # @param localization_id A localization ID
    # @param target_language The type of templating language to compile as. Should only be used for visual templates.
    # @param [Hash] opts the optional parameters
    # @return [LocalizationRead]
    def localizations_localization_id_get(localization_id, target_language, opts = {})
      data, _status_code, _headers = localizations_localization_id_get_with_http_info(localization_id, target_language, opts)
      data
    end

    # Get Localization Object by ID
    # Returns a specific localization object with a matching ID.
    # @param localization_id A localization ID
    # @param target_language The type of templating language to compile as. Should only be used for visual templates.
    # @param [Hash] opts the optional parameters
    # @return [Array<(LocalizationRead, Fixnum, Hash)>] LocalizationRead data, response status code and response headers
    def localizations_localization_id_get_with_http_info(localization_id, target_language, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LocalizationsApi.localizations_localization_id_get ...'
      end
      # verify the required parameter 'localization_id' is set
      if @api_client.config.client_side_validation && localization_id.nil?
        fail ArgumentError, "Missing the required parameter 'localization_id' when calling LocalizationsApi.localizations_localization_id_get"
      end
      # verify the required parameter 'target_language' is set
      if @api_client.config.client_side_validation && target_language.nil?
        fail ArgumentError, "Missing the required parameter 'target_language' when calling LocalizationsApi.localizations_localization_id_get"
      end
      # verify enum value
      if @api_client.config.client_side_validation && !['html', 'jinja', 'handlebars', 'ampscript', 'freemarker', 'cheetah'].include?(target_language)
        fail ArgumentError, "invalid value for 'target_language', must be one of html, jinja, handlebars, ampscript, freemarker, cheetah"
      end
      # resource path
      local_var_path = '/localizations/{localizationId}'.sub('{' + 'localizationId' + '}', localization_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'targetLanguage'] = target_language

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/vnd.dyspatch.2019.10+json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['Bearer']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'LocalizationRead')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LocalizationsApi#localizations_localization_id_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
