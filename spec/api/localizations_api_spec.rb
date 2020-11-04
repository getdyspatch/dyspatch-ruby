=begin
#Dyspatch API

## Introduction  The Dyspatch API is based on the REST paradigm, and features resource based URLs with standard HTTP response codes to indicate errors. We use standard HTTP authentication and request verbs, and all responses are JSON formatted. See our [Implementation Guide](https://docs.dyspatch.io/development/implementing_dyspatch/) for more details on how to implement Dyspatch.  ## API Client Libraries Dyspatch provides API Clients for popular languages and web frameworks.  - [Java](https://github.com/getdyspatch/dyspatch-java) - [Javascript](https://github.com/getdyspatch/dyspatch-javascript) - [Python](https://github.com/getdyspatch/dyspatch-python) - [C#](https://github.com/getdyspatch/dyspatch-dotnet) - [Go](https://github.com/getdyspatch/dyspatch-golang) - [Ruby](https://github.com/getdyspatch/dyspatch-ruby) 

The version of the OpenAPI document: 2020.08
Contact: support@dyspatch.io
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

require 'spec_helper'
require 'json'

# Unit tests for DyspatchClient::LocalizationsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'LocalizationsApi' do
  before do
    # run before each test
    @api_instance = DyspatchClient::LocalizationsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of LocalizationsApi' do
    it 'should create an instance of LocalizationsApi' do
      expect(@api_instance).to be_instance_of(DyspatchClient::LocalizationsApi)
    end
  end

  # unit tests for get_localization_by_id
  # Get Localization Object by ID
  # Returns a specific localization object with a matching ID
  # @param localization_id A localization ID
  # @param target_language The type of templating language to compile as. Should only be used for visual templates.
  # @param accept A version of the API that should be used for the request. For example, to use version \&quot;2020.08\&quot;, set the value to \&quot;application/vnd.dyspatch.2020.08+json\&quot;
  # @param [Hash] opts the optional parameters
  # @return [LocalizationRead]
  describe 'get_localization_by_id test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
