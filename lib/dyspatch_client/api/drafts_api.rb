=begin
#Dyspatch API

## Introduction  The Dyspatch API is based on the REST paradigm, and features resource based URLs with standard HTTP response codes to indicate errors. We use standard HTTP authentication and request verbs, and all responses are JSON formatted. See our [Implementation Guide](https://docs.dyspatch.io/development/implementing_dyspatch/) for more details on how to implement Dyspatch.  ## API Client Libraries Dyspatch provides API Clients for popular languages and web frameworks.  - [Java](https://github.com/getdyspatch/dyspatch-java) - [Javascript](https://github.com/getdyspatch/dyspatch-javascript) - [Python](https://github.com/getdyspatch/dyspatch-python) - [C#](https://github.com/getdyspatch/dyspatch-dotnet) - [Go](https://github.com/getdyspatch/dyspatch-golang) - [Ruby](https://github.com/getdyspatch/dyspatch-ruby) 

The version of the OpenAPI document: 2020.04
Contact: support@dyspatch.io
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

require 'cgi'

module DyspatchClient
  class DraftsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Remove a localization
    # Deletes the localization with the given language ID if it exists
    # @param draft_id [String] A draft ID
    # @param language_id [String] A language ID (eg: en-US)
    # @param accept [String] A version of the API that should be used for the request. For example, to use version \&quot;2020.04\&quot;, set the value to \&quot;application/vnd.dyspatch.2020.04+json\&quot;
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_localization(draft_id, language_id, accept, opts = {})
      delete_localization_with_http_info(draft_id, language_id, accept, opts)
      nil
    end

    # Remove a localization
    # Deletes the localization with the given language ID if it exists
    # @param draft_id [String] A draft ID
    # @param language_id [String] A language ID (eg: en-US)
    # @param accept [String] A version of the API that should be used for the request. For example, to use version \&quot;2020.04\&quot;, set the value to \&quot;application/vnd.dyspatch.2020.04+json\&quot;
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_localization_with_http_info(draft_id, language_id, accept, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DraftsApi.delete_localization ...'
      end
      # verify the required parameter 'draft_id' is set
      if @api_client.config.client_side_validation && draft_id.nil?
        fail ArgumentError, "Missing the required parameter 'draft_id' when calling DraftsApi.delete_localization"
      end
      # verify the required parameter 'language_id' is set
      if @api_client.config.client_side_validation && language_id.nil?
        fail ArgumentError, "Missing the required parameter 'language_id' when calling DraftsApi.delete_localization"
      end
      # verify the required parameter 'accept' is set
      if @api_client.config.client_side_validation && accept.nil?
        fail ArgumentError, "Missing the required parameter 'accept' when calling DraftsApi.delete_localization"
      end
      # resource path
      local_var_path = '/drafts/{draftId}/localizations/{languageId}'.sub('{' + 'draftId' + '}', CGI.escape(draft_id.to_s)).sub('{' + 'languageId' + '}', CGI.escape(language_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      header_params[:'Accept'] = accept

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] 

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

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DraftsApi#delete_localization\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Draft by ID
    # Gets a draft object with the matching ID. The \"compiled\" field will contain the template in the default, unlocalized form.
    # @param draft_id [String] A draft ID
    # @param target_language [String] The type of templating language to compile as. Should only be used for visual templates.
    # @param accept [String] A version of the API that should be used for the request. For example, to use version \&quot;2020.04\&quot;, set the value to \&quot;application/vnd.dyspatch.2020.04+json\&quot;
    # @param [Hash] opts the optional parameters
    # @return [DraftRead]
    def get_draft_by_id(draft_id, target_language, accept, opts = {})
      data, _status_code, _headers = get_draft_by_id_with_http_info(draft_id, target_language, accept, opts)
      data
    end

    # Get Draft by ID
    # Gets a draft object with the matching ID. The \&quot;compiled\&quot; field will contain the template in the default, unlocalized form.
    # @param draft_id [String] A draft ID
    # @param target_language [String] The type of templating language to compile as. Should only be used for visual templates.
    # @param accept [String] A version of the API that should be used for the request. For example, to use version \&quot;2020.04\&quot;, set the value to \&quot;application/vnd.dyspatch.2020.04+json\&quot;
    # @param [Hash] opts the optional parameters
    # @return [Array<(DraftRead, Integer, Hash)>] DraftRead data, response status code and response headers
    def get_draft_by_id_with_http_info(draft_id, target_language, accept, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DraftsApi.get_draft_by_id ...'
      end
      # verify the required parameter 'draft_id' is set
      if @api_client.config.client_side_validation && draft_id.nil?
        fail ArgumentError, "Missing the required parameter 'draft_id' when calling DraftsApi.get_draft_by_id"
      end
      # verify the required parameter 'target_language' is set
      if @api_client.config.client_side_validation && target_language.nil?
        fail ArgumentError, "Missing the required parameter 'target_language' when calling DraftsApi.get_draft_by_id"
      end
      # verify enum value
      allowable_values = ["html", "handlebars", "ampscript", "freemarker", "cheetah", "jinja"]
      if @api_client.config.client_side_validation && !allowable_values.include?(target_language)
        fail ArgumentError, "invalid value for \"target_language\", must be one of #{allowable_values}"
      end
      # verify the required parameter 'accept' is set
      if @api_client.config.client_side_validation && accept.nil?
        fail ArgumentError, "Missing the required parameter 'accept' when calling DraftsApi.get_draft_by_id"
      end
      # resource path
      local_var_path = '/drafts/{draftId}'.sub('{' + 'draftId' + '}', CGI.escape(draft_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'targetLanguage'] = target_language

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/vnd.dyspatch.2020.04+json', '*/*'])
      header_params[:'Accept'] = accept

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'DraftRead' 

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
        @api_client.config.logger.debug "API called: DraftsApi#get_draft_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get localization keys
    # Returns the list of values that need to be translated for the draft. Set the `Accept` header to `application/vnd.dyspatch.2020.04+json` to get a JSON object, or `text/vnd.dyspatch.2020.04+x-gettext-translation` to get the POT file.
    # @param draft_id [String] A draft ID
    # @param accept [String] A version of the API that should be used for the request. For example, to use version \&quot;2020.04\&quot;, set the value to \&quot;application/vnd.dyspatch.2020.04+json\&quot;
    # @param [Hash] opts the optional parameters
    # @return [Array<LocalizationKeyRead>]
    def get_draft_localization_keys(draft_id, accept, opts = {})
      data, _status_code, _headers = get_draft_localization_keys_with_http_info(draft_id, accept, opts)
      data
    end

    # Get localization keys
    # Returns the list of values that need to be translated for the draft. Set the &#x60;Accept&#x60; header to &#x60;application/vnd.dyspatch.2020.04+json&#x60; to get a JSON object, or &#x60;text/vnd.dyspatch.2020.04+x-gettext-translation&#x60; to get the POT file.
    # @param draft_id [String] A draft ID
    # @param accept [String] A version of the API that should be used for the request. For example, to use version \&quot;2020.04\&quot;, set the value to \&quot;application/vnd.dyspatch.2020.04+json\&quot;
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<LocalizationKeyRead>, Integer, Hash)>] Array<LocalizationKeyRead> data, response status code and response headers
    def get_draft_localization_keys_with_http_info(draft_id, accept, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DraftsApi.get_draft_localization_keys ...'
      end
      # verify the required parameter 'draft_id' is set
      if @api_client.config.client_side_validation && draft_id.nil?
        fail ArgumentError, "Missing the required parameter 'draft_id' when calling DraftsApi.get_draft_localization_keys"
      end
      # verify the required parameter 'accept' is set
      if @api_client.config.client_side_validation && accept.nil?
        fail ArgumentError, "Missing the required parameter 'accept' when calling DraftsApi.get_draft_localization_keys"
      end
      # resource path
      local_var_path = '/drafts/{draftId}/localizationKeys'.sub('{' + 'draftId' + '}', CGI.escape(draft_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/vnd.dyspatch.2020.04+json', '*/*'])
      header_params[:'Accept'] = accept

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'Array<LocalizationKeyRead>' 

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
        @api_client.config.logger.debug "API called: DraftsApi#get_draft_localization_keys\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Drafts
    # Returns all drafts for your organization.
    # @param accept [String] A version of the API that should be used for the request. For example, to use version \&quot;2020.04\&quot;, set the value to \&quot;application/vnd.dyspatch.2020.04+json\&quot;
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor A cursor value used to retrieve a specific page from a paginated result set.
    # @option opts [String] :status Filter the list of drafts by a particular status
    # @return [DraftsRead]
    def get_drafts(accept, opts = {})
      data, _status_code, _headers = get_drafts_with_http_info(accept, opts)
      data
    end

    # List Drafts
    # Returns all drafts for your organization.
    # @param accept [String] A version of the API that should be used for the request. For example, to use version \&quot;2020.04\&quot;, set the value to \&quot;application/vnd.dyspatch.2020.04+json\&quot;
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor A cursor value used to retrieve a specific page from a paginated result set.
    # @option opts [String] :status Filter the list of drafts by a particular status
    # @return [Array<(DraftsRead, Integer, Hash)>] DraftsRead data, response status code and response headers
    def get_drafts_with_http_info(accept, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DraftsApi.get_drafts ...'
      end
      # verify the required parameter 'accept' is set
      if @api_client.config.client_side_validation && accept.nil?
        fail ArgumentError, "Missing the required parameter 'accept' when calling DraftsApi.get_drafts"
      end
      allowable_values = ["awaitingTranslation"]
      if @api_client.config.client_side_validation && opts[:'status'] && !allowable_values.include?(opts[:'status'])
        fail ArgumentError, "invalid value for \"status\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/drafts'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'cursor'] = opts[:'cursor'] if !opts[:'cursor'].nil?
      query_params[:'status'] = opts[:'status'] if !opts[:'status'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/vnd.dyspatch.2020.04+json', '*/*'])
      header_params[:'Accept'] = accept

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'DraftsRead' 

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
        @api_client.config.logger.debug "API called: DraftsApi#get_drafts\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get localizations on a draft
    # Returns localization metadata for the draft
    # @param draft_id [String] A draft ID
    # @param accept [String] A version of the API that should be used for the request. For example, to use version \&quot;2020.04\&quot;, set the value to \&quot;application/vnd.dyspatch.2020.04+json\&quot;
    # @param [Hash] opts the optional parameters
    # @return [Array<LocalizationMetaRead>]
    def get_localization_for_draft(draft_id, accept, opts = {})
      data, _status_code, _headers = get_localization_for_draft_with_http_info(draft_id, accept, opts)
      data
    end

    # Get localizations on a draft
    # Returns localization metadata for the draft
    # @param draft_id [String] A draft ID
    # @param accept [String] A version of the API that should be used for the request. For example, to use version \&quot;2020.04\&quot;, set the value to \&quot;application/vnd.dyspatch.2020.04+json\&quot;
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<LocalizationMetaRead>, Integer, Hash)>] Array<LocalizationMetaRead> data, response status code and response headers
    def get_localization_for_draft_with_http_info(draft_id, accept, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DraftsApi.get_localization_for_draft ...'
      end
      # verify the required parameter 'draft_id' is set
      if @api_client.config.client_side_validation && draft_id.nil?
        fail ArgumentError, "Missing the required parameter 'draft_id' when calling DraftsApi.get_localization_for_draft"
      end
      # verify the required parameter 'accept' is set
      if @api_client.config.client_side_validation && accept.nil?
        fail ArgumentError, "Missing the required parameter 'accept' when calling DraftsApi.get_localization_for_draft"
      end
      # resource path
      local_var_path = '/drafts/{draftId}/localizations'.sub('{' + 'draftId' + '}', CGI.escape(draft_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/vnd.dyspatch.2020.04+json', '*/*'])
      header_params[:'Accept'] = accept

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'Array<LocalizationMetaRead>' 

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
        @api_client.config.logger.debug "API called: DraftsApi#get_localization_for_draft\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create or update a localization
    # Inserts a localization or sets the name on an existing localization that already uses the languageId
    # @param draft_id [String] A draft ID
    # @param language_id [String] A language ID (eg: en-US)
    # @param accept [String] A version of the API that should be used for the request. For example, to use version \&quot;2020.04\&quot;, set the value to \&quot;application/vnd.dyspatch.2020.04+json\&quot;
    # @param inline_object [InlineObject] 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def save_localization(draft_id, language_id, accept, inline_object, opts = {})
      save_localization_with_http_info(draft_id, language_id, accept, inline_object, opts)
      nil
    end

    # Create or update a localization
    # Inserts a localization or sets the name on an existing localization that already uses the languageId
    # @param draft_id [String] A draft ID
    # @param language_id [String] A language ID (eg: en-US)
    # @param accept [String] A version of the API that should be used for the request. For example, to use version \&quot;2020.04\&quot;, set the value to \&quot;application/vnd.dyspatch.2020.04+json\&quot;
    # @param inline_object [InlineObject] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def save_localization_with_http_info(draft_id, language_id, accept, inline_object, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DraftsApi.save_localization ...'
      end
      # verify the required parameter 'draft_id' is set
      if @api_client.config.client_side_validation && draft_id.nil?
        fail ArgumentError, "Missing the required parameter 'draft_id' when calling DraftsApi.save_localization"
      end
      # verify the required parameter 'language_id' is set
      if @api_client.config.client_side_validation && language_id.nil?
        fail ArgumentError, "Missing the required parameter 'language_id' when calling DraftsApi.save_localization"
      end
      # verify the required parameter 'accept' is set
      if @api_client.config.client_side_validation && accept.nil?
        fail ArgumentError, "Missing the required parameter 'accept' when calling DraftsApi.save_localization"
      end
      # verify the required parameter 'inline_object' is set
      if @api_client.config.client_side_validation && inline_object.nil?
        fail ArgumentError, "Missing the required parameter 'inline_object' when calling DraftsApi.save_localization"
      end
      # resource path
      local_var_path = '/drafts/{draftId}/localizations/{languageId}'.sub('{' + 'draftId' + '}', CGI.escape(draft_id.to_s)).sub('{' + 'languageId' + '}', CGI.escape(language_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'Accept'] = accept

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(inline_object) 

      # return_type
      return_type = opts[:return_type] 

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

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DraftsApi#save_localization\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Set translations for language
    # Completely replaces any existing translations for the given language with those provided in request body. Variables embedded in keys or values are expected to be in the format `%(my_variable)s` and will automatically convert to the correct Dyspatch format depending on the type of template. Accepts key/value pairs in JSON format or in gettext PO file format. For JSON set `Content-Type` header to `application/json`. For gettext PO format set `Content-Type` header to `text/x-gettext-translation`.
    # @param draft_id [String] A draft ID
    # @param language_id [String] A language ID (eg: en-US)
    # @param accept [String] A version of the API that should be used for the request. For example, to use version \&quot;2020.04\&quot;, set the value to \&quot;application/vnd.dyspatch.2020.04+json\&quot;
    # @param request_body [Hash<String, String>] 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def set_translation(draft_id, language_id, accept, request_body, opts = {})
      set_translation_with_http_info(draft_id, language_id, accept, request_body, opts)
      nil
    end

    # Set translations for language
    # Completely replaces any existing translations for the given language with those provided in request body. Variables embedded in keys or values are expected to be in the format &#x60;%(my_variable)s&#x60; and will automatically convert to the correct Dyspatch format depending on the type of template. Accepts key/value pairs in JSON format or in gettext PO file format. For JSON set &#x60;Content-Type&#x60; header to &#x60;application/json&#x60;. For gettext PO format set &#x60;Content-Type&#x60; header to &#x60;text/x-gettext-translation&#x60;.
    # @param draft_id [String] A draft ID
    # @param language_id [String] A language ID (eg: en-US)
    # @param accept [String] A version of the API that should be used for the request. For example, to use version \&quot;2020.04\&quot;, set the value to \&quot;application/vnd.dyspatch.2020.04+json\&quot;
    # @param request_body [Hash<String, String>] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def set_translation_with_http_info(draft_id, language_id, accept, request_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DraftsApi.set_translation ...'
      end
      # verify the required parameter 'draft_id' is set
      if @api_client.config.client_side_validation && draft_id.nil?
        fail ArgumentError, "Missing the required parameter 'draft_id' when calling DraftsApi.set_translation"
      end
      # verify the required parameter 'language_id' is set
      if @api_client.config.client_side_validation && language_id.nil?
        fail ArgumentError, "Missing the required parameter 'language_id' when calling DraftsApi.set_translation"
      end
      # verify the required parameter 'accept' is set
      if @api_client.config.client_side_validation && accept.nil?
        fail ArgumentError, "Missing the required parameter 'accept' when calling DraftsApi.set_translation"
      end
      # verify the required parameter 'request_body' is set
      if @api_client.config.client_side_validation && request_body.nil?
        fail ArgumentError, "Missing the required parameter 'request_body' when calling DraftsApi.set_translation"
      end
      # resource path
      local_var_path = '/drafts/{draftId}/localizations/{languageId}/translations'.sub('{' + 'draftId' + '}', CGI.escape(draft_id.to_s)).sub('{' + 'languageId' + '}', CGI.escape(language_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/vnd.dyspatch.2020.04+json', '*/*'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'Accept'] = accept

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(request_body) 

      # return_type
      return_type = opts[:return_type] 

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

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DraftsApi#set_translation\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Submit the draft for approval
    # Moves the draft into submitted state.
    # @param draft_id [String] A draft ID
    # @param accept [String] A version of the API that should be used for the request. For example, to use version \&quot;2020.04\&quot;, set the value to \&quot;application/vnd.dyspatch.2020.04+json\&quot;
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def submit_draft_for_approval(draft_id, accept, opts = {})
      submit_draft_for_approval_with_http_info(draft_id, accept, opts)
      nil
    end

    # Submit the draft for approval
    # Moves the draft into submitted state.
    # @param draft_id [String] A draft ID
    # @param accept [String] A version of the API that should be used for the request. For example, to use version \&quot;2020.04\&quot;, set the value to \&quot;application/vnd.dyspatch.2020.04+json\&quot;
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def submit_draft_for_approval_with_http_info(draft_id, accept, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DraftsApi.submit_draft_for_approval ...'
      end
      # verify the required parameter 'draft_id' is set
      if @api_client.config.client_side_validation && draft_id.nil?
        fail ArgumentError, "Missing the required parameter 'draft_id' when calling DraftsApi.submit_draft_for_approval"
      end
      # verify the required parameter 'accept' is set
      if @api_client.config.client_side_validation && accept.nil?
        fail ArgumentError, "Missing the required parameter 'accept' when calling DraftsApi.submit_draft_for_approval"
      end
      # resource path
      local_var_path = '/drafts/{draftId}/publishRequest'.sub('{' + 'draftId' + '}', CGI.escape(draft_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/vnd.dyspatch.2020.04+json', '*/*'])
      header_params[:'Accept'] = accept

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] 

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

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DraftsApi#submit_draft_for_approval\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end