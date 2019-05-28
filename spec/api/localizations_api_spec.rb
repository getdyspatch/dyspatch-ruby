=begin
#Dyspatch API

## Introduction  The Dyspatch API is based on the REST paradigm, and features resource based URLs with standard HTTP response codes to indicate errors. We use standard HTTP authentication and request verbs, and all responses are JSON formatted. See our [Implementation Guide](https://docs.dyspatch.io/development/implementing_dyspatch/) for more details on how to implement Dyspatch.  ## API Client Libraries  Dyspatch provides API Clients for popular languages and web frameworks.   - [Java](https://github.com/getdyspatch/dyspatch-java) - [Javascript](https://github.com/getdyspatch/dyspatch-javascript) - [Python](https://github.com/getdyspatch/dyspatch-python) - [C#](https://github.com/getdyspatch/dyspatch-dotnet) - [Go](https://github.com/getdyspatch/dyspatch-golang) - [Ruby](https://github.com/getdyspatch/dyspatch-ruby) 

OpenAPI spec version: 2019.03
Contact: support@dyspatch.io
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'spec_helper'
require 'json'

# Unit tests for DyspatchClient::LocalizationsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'LocalizationsApi' do
  before do
    # run before each test
    @instance = DyspatchClient::LocalizationsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of LocalizationsApi' do
    it 'should create an instance of LocalizationsApi' do
      expect(@instance).to be_instance_of(DyspatchClient::LocalizationsApi)
    end
  end

  # unit tests for localizations_localization_id_get
  # Get Localization Object by ID
  # Returns a specific localization object with a matching ID
  # @param localization_id A localization ID
  # @param [Hash] opts the optional parameters
  # @option opts [String] :target_language The type of templating language to compile as. Should only be used for visual templates.
  # @option opts [String] :accept A version of the API that should be used for the request. For example, to use version \&quot;2019.03\&quot;, set the value to \&quot;application/vnd.dyspatch.2019.03+json\&quot;
  # @return [LocalizationRead]
  describe 'localizations_localization_id_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end