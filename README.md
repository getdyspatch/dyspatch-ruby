# Dyspatch Ruby API Client

This SDK is automatically generated by the [Swagger Codegen](https://github.com/swagger-api/swagger-codegen) project:

- API version: 2019.10
- Package version: 4.0.0
- Build package: io.swagger.codegen.languages.RubyClientCodegen

For more information, please visit [https://docs.dyspatch.io](https://docs.dyspatch.io)

# Introduction

The Dyspatch API is based on the REST paradigm and features resource based URLs with standard HTTP response codes to indicate errors. We use standard HTTP authentication and request verbs and all responses are JSON formatted. See our [Implementation Guide](https://docs.dyspatch.io/development/implementing_dyspatch/) for more details on how to implement Dyspatch.

## API Client Libraries
Dyspatch provides API Clients for popular languages and web frameworks.

- [Java](https://github.com/getdyspatch/dyspatch-java)
- [Javascript](https://github.com/getdyspatch/dyspatch-javascript)
- [Python](https://github.com/getdyspatch/dyspatch-python)
- [C#](https://github.com/getdyspatch/dyspatch-dotnet)
- [Go](https://github.com/getdyspatch/dyspatch-golang)
- [Ruby](https://github.com/getdyspatch/dyspatch-ruby)

## Installation

### RubyGems

Install from Rubygems:

```shell
gem install dyspatch_client
```

### Build a gem

To build the Ruby code into a gem:

```shell
gem build dyspatch_client.gemspec
```

Then either install the gem locally:

```shell
gem install ./dyspatch_client-3.0.1.gem
```
(for development, run `gem install --dev ./dyspatch_client-3.0.1.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'dyspatch_client', '~> 3.0.1'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/GIT_USER_ID/GIT_REPO_ID, then add the following in the Gemfile:

    gem 'dyspatch_client', :git => 'https://github.com/GIT_USER_ID/GIT_REPO_ID.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:

```ruby
# Load the gem
require 'dyspatch_client'

# Setup authorization
DyspatchClient.configure do |config|
  # Configure API key authorization: Bearer
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = DyspatchClient::DraftsApi.new
draft_id = 'draft_id_example' # String | A draft ID
language_id = 'language_id_example' # String | A language ID (eg: en-US)
accept = 'accept_example' # String | A version of the API that should be used for the request. For example, to use version \"2019.10\", set the value to \"application/vnd.dyspatch.2019.10+json\"

begin
  #Remove a localization
  api_instance.delete_localization(draft_id, language_id, accept)
rescue DyspatchClient::ApiError => e
  puts "Exception when calling DraftsApi->delete_localization: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *https://api.dyspatch.io*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*DyspatchClient::DraftsApi* | [**delete_localization**](docs/DraftsApi.md#delete_localization) | **DELETE** /drafts/{draftId}/localizations/{languageId} | Remove a localization
*DyspatchClient::DraftsApi* | [**get_draft_by_id**](docs/DraftsApi.md#get_draft_by_id) | **GET** /drafts/{draftId} | Get Draft by ID
*DyspatchClient::DraftsApi* | [**get_draft_localization_keys**](docs/DraftsApi.md#get_draft_localization_keys) | **GET** /drafts/{draftId}/localizationKeys | Get localization keys
*DyspatchClient::DraftsApi* | [**get_drafts**](docs/DraftsApi.md#get_drafts) | **GET** /drafts | List Drafts
*DyspatchClient::DraftsApi* | [**get_localization_for_draft**](docs/DraftsApi.md#get_localization_for_draft) | **GET** /drafts/{draftId}/localizations | Get localizations on a draft
*DyspatchClient::DraftsApi* | [**save_localization**](docs/DraftsApi.md#save_localization) | **PUT** /drafts/{draftId}/localizations/{languageId} | Create or update a localization
*DyspatchClient::DraftsApi* | [**set_translation**](docs/DraftsApi.md#set_translation) | **PUT** /drafts/{draftId}/localizations/{languageId}/translations | Set translations for language
*DyspatchClient::DraftsApi* | [**submit_draft_for_approval**](docs/DraftsApi.md#submit_draft_for_approval) | **POST** /drafts/{draftId}/publishRequest | Submit the draft for approval
*DyspatchClient::LocalizationsApi* | [**get_localization_by_id**](docs/LocalizationsApi.md#get_localization_by_id) | **GET** /localizations/{localizationId} | Get Localization Object by ID
*DyspatchClient::TemplatesApi* | [**get_template_by_id**](docs/TemplatesApi.md#get_template_by_id) | **GET** /templates/{templateId} | Get Template by ID
*DyspatchClient::TemplatesApi* | [**get_templates**](docs/TemplatesApi.md#get_templates) | **GET** /templates | List Templates


## Documentation for Models

 - [DyspatchClient::APIError](docs/APIError.md)
 - [DyspatchClient::CompiledRead](docs/CompiledRead.md)
 - [DyspatchClient::Cursor](docs/Cursor.md)
 - [DyspatchClient::DraftMetaRead](docs/DraftMetaRead.md)
 - [DyspatchClient::DraftRead](docs/DraftRead.md)
 - [DyspatchClient::DraftsRead](docs/DraftsRead.md)
 - [DyspatchClient::InlineObject](docs/InlineObject.md)
 - [DyspatchClient::LocalizationKeyRead](docs/LocalizationKeyRead.md)
 - [DyspatchClient::LocalizationMetaRead](docs/LocalizationMetaRead.md)
 - [DyspatchClient::LocalizationRead](docs/LocalizationRead.md)
 - [DyspatchClient::TemplateMetaRead](docs/TemplateMetaRead.md)
 - [DyspatchClient::TemplateRead](docs/TemplateRead.md)
 - [DyspatchClient::TemplatesRead](docs/TemplatesRead.md)


## Documentation for Authorization


### Bearer

- **Type**: API key
- **API key parameter name**: Authorization
- **Location**: HTTP header
