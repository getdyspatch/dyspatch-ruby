=begin
#Dyspatch API

## Introduction  The Dyspatch API is based on the REST paradigm, and features resource based URLs with standard HTTP response codes to indicate errors. We use standard HTTP authentication and request verbs, and all responses are JSON formatted. See our [Implementation Guide](https://docs.dyspatch.io/development/implementing_dyspatch/) for more details on how to implement Dyspatch.  ## API Client Libraries  Dyspatch provides API Clients for popular languages and web frameworks.   - [Java](https://github.com/getdyspatch/dyspatch-java) - [Javascript](https://github.com/getdyspatch/dyspatch-javascript) - [Python](https://github.com/getdyspatch/dyspatch-python) 

OpenAPI spec version: 2018.08
Contact: support@dyspatch.io
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'spec_helper'
require 'json'

# Unit tests for DyspatchClient::TemplatesApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'TemplatesApi' do
  before do
    # run before each test
    @instance = DyspatchClient::TemplatesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of TemplatesApi' do
    it 'should create an instance of TemplatesApi' do
      expect(@instance).to be_instance_of(DyspatchClient::TemplatesApi)
    end
  end

  # unit tests for templates_get
  # List Templates
  # Gets a list of Template Metadata objects for all templates. Up to 25 results returned before results are paginated.
  # @param accept A version of the API that should be used for the request. For example, to use version \&quot;2018.08\&quot;, set the value to \&quot;application/vnd.dyspatch.2018.08+json\&quot;
  # @param [Hash] opts the optional parameters
  # @option opts [String] :cursor A cursor value used to retrieve a specific page from a paginated result set.
  # @return [TemplatesRead]
  describe 'templates_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for templates_template_id_get
  # Get Template by ID
  # Gets a template object with the matching ID. If the template has published content the \&quot;compiled\&quot; field will contain the template .
  # @param template_id A template ID
  # @param accept A version of the API that should be used for the request. For example, to use version \&quot;2018.08\&quot;, set the value to \&quot;application/vnd.dyspatch.2018.08+json\&quot;
  # @param [Hash] opts the optional parameters
  # @return [TemplateRead]
  describe 'templates_template_id_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
