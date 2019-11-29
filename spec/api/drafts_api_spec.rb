=begin
#Dyspatch API

## Introduction  The Dyspatch API is based on the REST paradigm and features resource based URLs with standard HTTP response codes to indicate errors. We use standard HTTP authentication and request verbs and all responses are JSON formatted. See our [Implementation Guide](https://docs.dyspatch.io/development/implementing_dyspatch/) for more details on how to implement Dyspatch.  ## API Client Libraries  Dyspatch provides API Clients for the following languages and web frameworks:  - [Java](https://github.com/getdyspatch/dyspatch-java) - [Javascript](https://github.com/getdyspatch/dyspatch-javascript) - [Python](https://github.com/getdyspatch/dyspatch-python) - [C#](https://github.com/getdyspatch/dyspatch-dotnet) - [Go](https://github.com/getdyspatch/dyspatch-golang) - [Ruby](https://github.com/getdyspatch/dyspatch-ruby) 

OpenAPI spec version: 2019.10
Contact: support@dyspatch.io
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.9

=end

require 'spec_helper'
require 'json'

# Unit tests for DyspatchClient::DraftsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'DraftsApi' do
  before do
    # run before each test
    @instance = DyspatchClient::DraftsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of DraftsApi' do
    it 'should create an instance of DraftsApi' do
      expect(@instance).to be_instance_of(DyspatchClient::DraftsApi)
    end
  end

  # unit tests for drafts_draft_id_get
  # Get Draft by ID
  # Gets a draft object with the matching ID. The "compiled" field will contain the unlocalized default template object.
  # @param draft_id A draft ID
  # @param target_language The type of templating language to compile as. Should only be used for visual templates.
  # @param [Hash] opts the optional parameters
  # @return [DraftRead]
  describe 'drafts_draft_id_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for drafts_draft_id_localization_keys_get
  # Get Localization Keys
  # Returns the list of values that need to be translated for the draft. Set the `Accept` header to `application/vnd.dyspatch.2019.10+json` to get a JSON object, or `text/vnd.dyspatch.2019.10+x-gettext-translation` to get the POT file.
  # @param draft_id A draft ID
  # @param [Hash] opts the optional parameters
  # @option opts [String] :accept A version of the API that should be used for the request. For example, to use version "2019.10", set the value to "application/vnd.dyspatch.2019.10+json".
  # @return [Array<LocalizationKeyRead>]
  describe 'drafts_draft_id_localization_keys_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for drafts_draft_id_localizations_get
  # Get Localizations on a Draft
  # Returns localization metadata object for a template draft.
  # @param draft_id A draft ID
  # @param [Hash] opts the optional parameters
  # @return [Array<LocalizationMetaRead>]
  describe 'drafts_draft_id_localizations_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for drafts_draft_id_localizations_language_id_delete
  # Remove a Localization
  # Deletes the localization with the given `languageId` if it exists.
  # @param draft_id A draft ID
  # @param language_id A language ID (eg: en-US)
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'drafts_draft_id_localizations_language_id_delete test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for drafts_draft_id_localizations_language_id_put
  # Create or Update a Localization
  # Inserts a localization or sets the name on an existing localization that already uses the `languageId`.
  # @param draft_id A draft ID
  # @param language_id A language ID (eg: en-US)
  # @param body 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'drafts_draft_id_localizations_language_id_put test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for drafts_draft_id_localizations_language_id_translations_put
  # Set Translations for Language
  # Completely replaces any existing translations for the given language with those provided in request body. Variables embedded in keys or values are expected to be in the format `%(my_variable)s` and will automatically convert to the correct Dyspatch format depending on the type of template. Accepts key/value pairs in JSON format or in gettext PO file format. For JSON set `Content-Type` header to `application/json`. For gettext PO format set `Content-Type` header to `text/x-gettext-translation`.
  # @param draft_id A draft ID
  # @param language_id A language ID (eg: en-US)
  # @param body 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'drafts_draft_id_localizations_language_id_translations_put test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for drafts_draft_id_publish_request_post
  # Submit the Draft for Approval
  # Moves the draft into [submitted and locked state](https://docs.dyspatch.io/templates/submitting_a_template/#awaiting-approval). This will allow your email stakeholders to review the template draft and provide feedback.
  # @param draft_id A draft ID
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'drafts_draft_id_publish_request_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for drafts_get
  # List Drafts
  # Gets a list of all drafts for your oranization. Up to 25 results returned before results are paginated.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :status Filter the list of drafts by a particular status
  # @return [DraftsRead]
  describe 'drafts_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
