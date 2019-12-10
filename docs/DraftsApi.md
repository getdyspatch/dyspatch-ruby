# DyspatchClient::DraftsApi

All URIs are relative to *https://api.dyspatch.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**drafts_draft_id_get**](DraftsApi.md#drafts_draft_id_get) | **GET** /drafts/{draftId} | Get Draft by ID
[**drafts_draft_id_localization_keys_get**](DraftsApi.md#drafts_draft_id_localization_keys_get) | **GET** /drafts/{draftId}/localizationKeys | Get Localization Keys
[**drafts_draft_id_localizations_get**](DraftsApi.md#drafts_draft_id_localizations_get) | **GET** /drafts/{draftId}/localizations | Get Localizations on a Draft
[**drafts_draft_id_localizations_language_id_delete**](DraftsApi.md#drafts_draft_id_localizations_language_id_delete) | **DELETE** /drafts/{draftId}/localizations/{languageId} | Remove a Localization
[**drafts_draft_id_localizations_language_id_put**](DraftsApi.md#drafts_draft_id_localizations_language_id_put) | **PUT** /drafts/{draftId}/localizations/{languageId} | Create or Update a Localization
[**drafts_draft_id_localizations_language_id_translations_put**](DraftsApi.md#drafts_draft_id_localizations_language_id_translations_put) | **PUT** /drafts/{draftId}/localizations/{languageId}/translations | Set Translations for Language
[**drafts_draft_id_publish_request_post**](DraftsApi.md#drafts_draft_id_publish_request_post) | **POST** /drafts/{draftId}/publishRequest | Submit the Draft for Approval
[**drafts_get**](DraftsApi.md#drafts_get) | **GET** /drafts | List Drafts


# **drafts_draft_id_get**
> DraftRead drafts_draft_id_get(draft_id, target_language)

Get Draft by ID

Gets a draft object with the matching ID. The "compiled" field will contain the unlocalized default template object.

### Example
```ruby
# load the gem
require 'dyspatch_client'
# setup authorization
DyspatchClient.configure do |config|
  # Configure API key authorization: Bearer
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = DyspatchClient::DraftsApi.new

draft_id = 'draft_id_example' # String | A draft ID

target_language = 'target_language_example' # String | The type of templating language to compile as. Should only be used for visual templates.


begin
  #Get Draft by ID
  result = api_instance.drafts_draft_id_get(draft_id, target_language)
  p result
rescue DyspatchClient::ApiError => e
  puts "Exception when calling DraftsApi->drafts_draft_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **draft_id** | **String**| A draft ID | 
 **target_language** | **String**| The type of templating language to compile as. Should only be used for visual templates. | 

### Return type

[**DraftRead**](DraftRead.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.dyspatch.2019.10+json



# **drafts_draft_id_localization_keys_get**
> Array<LocalizationKeyRead> drafts_draft_id_localization_keys_get(draft_id, , opts)

Get Localization Keys

Returns the list of values that need to be translated for the draft. Set the `Accept` header to `application/vnd.dyspatch.2019.10+json` to get a JSON object, or `text/vnd.dyspatch.2019.10+x-gettext-translation` to get the POT file.

### Example
```ruby
# load the gem
require 'dyspatch_client'
# setup authorization
DyspatchClient.configure do |config|
  # Configure API key authorization: Bearer
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = DyspatchClient::DraftsApi.new

draft_id = 'draft_id_example' # String | A draft ID

opts = { 
  accept: 'accept_example' # String | A version of the API that should be used for the request. For example, to use version "2019.10", set the value to "application/vnd.dyspatch.2019.10+json".
}

begin
  #Get Localization Keys
  result = api_instance.drafts_draft_id_localization_keys_get(draft_id, , opts)
  p result
rescue DyspatchClient::ApiError => e
  puts "Exception when calling DraftsApi->drafts_draft_id_localization_keys_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **draft_id** | **String**| A draft ID | 
 **accept** | **String**| A version of the API that should be used for the request. For example, to use version "2019.10", set the value to "application/vnd.dyspatch.2019.10+json". | [optional] 

### Return type

[**Array<LocalizationKeyRead>**](LocalizationKeyRead.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.dyspatch.2019.10+json, text/vnd.dyspatch.2019.10+x-gettext-translation



# **drafts_draft_id_localizations_get**
> Array<LocalizationMetaRead> drafts_draft_id_localizations_get(draft_id, )

Get Localizations on a Draft

Returns localization metadata object for a template draft.

### Example
```ruby
# load the gem
require 'dyspatch_client'
# setup authorization
DyspatchClient.configure do |config|
  # Configure API key authorization: Bearer
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = DyspatchClient::DraftsApi.new

draft_id = 'draft_id_example' # String | A draft ID


begin
  #Get Localizations on a Draft
  result = api_instance.drafts_draft_id_localizations_get(draft_id, )
  p result
rescue DyspatchClient::ApiError => e
  puts "Exception when calling DraftsApi->drafts_draft_id_localizations_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **draft_id** | **String**| A draft ID | 

### Return type

[**Array<LocalizationMetaRead>**](LocalizationMetaRead.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.dyspatch.2019.10+json



# **drafts_draft_id_localizations_language_id_delete**
> drafts_draft_id_localizations_language_id_delete(draft_id, language_id)

Remove a Localization

Deletes the localization with the given `languageId` if it exists.

### Example
```ruby
# load the gem
require 'dyspatch_client'
# setup authorization
DyspatchClient.configure do |config|
  # Configure API key authorization: Bearer
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = DyspatchClient::DraftsApi.new

draft_id = 'draft_id_example' # String | A draft ID

language_id = 'language_id_example' # String | A language ID (eg: en-US)


begin
  #Remove a Localization
  api_instance.drafts_draft_id_localizations_language_id_delete(draft_id, language_id)
rescue DyspatchClient::ApiError => e
  puts "Exception when calling DraftsApi->drafts_draft_id_localizations_language_id_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **draft_id** | **String**| A draft ID | 
 **language_id** | **String**| A language ID (eg: en-US) | 

### Return type

nil (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.dyspatch.2019.10+json



# **drafts_draft_id_localizations_language_id_put**
> drafts_draft_id_localizations_language_id_put(draft_id, language_idbody)

Create or Update a Localization

Inserts a localization or sets the name on an existing localization that already uses the `languageId`.

### Example
```ruby
# load the gem
require 'dyspatch_client'
# setup authorization
DyspatchClient.configure do |config|
  # Configure API key authorization: Bearer
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = DyspatchClient::DraftsApi.new

draft_id = 'draft_id_example' # String | A draft ID

language_id = 'language_id_example' # String | A language ID (eg: en-US)

body = DyspatchClient::Body.new # Body | 


begin
  #Create or Update a Localization
  api_instance.drafts_draft_id_localizations_language_id_put(draft_id, language_idbody)
rescue DyspatchClient::ApiError => e
  puts "Exception when calling DraftsApi->drafts_draft_id_localizations_language_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **draft_id** | **String**| A draft ID | 
 **language_id** | **String**| A language ID (eg: en-US) | 
 **body** | [**Body**](Body.md)|  | 

### Return type

nil (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.dyspatch.2019.10+json



# **drafts_draft_id_localizations_language_id_translations_put**
> drafts_draft_id_localizations_language_id_translations_put(draft_id, language_idbody)

Set Translations for Language

Completely replaces any existing translations for the given language with those provided in request body. Variables embedded in keys or values are expected to be in the format `%(my_variable)s` and will automatically convert to the correct Dyspatch format depending on the type of template. Accepts key/value pairs in JSON format or in gettext PO file format. For JSON set `Content-Type` header to `application/json`. For gettext PO format set `Content-Type` header to `text/x-gettext-translation`.

### Example
```ruby
# load the gem
require 'dyspatch_client'
# setup authorization
DyspatchClient.configure do |config|
  # Configure API key authorization: Bearer
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = DyspatchClient::DraftsApi.new

draft_id = 'draft_id_example' # String | A draft ID

language_id = 'language_id_example' # String | A language ID (eg: en-US)

body = DyspatchClient::Body.new # Body | 


begin
  #Set Translations for Language
  api_instance.drafts_draft_id_localizations_language_id_translations_put(draft_id, language_idbody)
rescue DyspatchClient::ApiError => e
  puts "Exception when calling DraftsApi->drafts_draft_id_localizations_language_id_translations_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **draft_id** | **String**| A draft ID | 
 **language_id** | **String**| A language ID (eg: en-US) | 
 **body** | [**Body**](Body.md)|  | 

### Return type

nil (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.dyspatch.2019.10+json



# **drafts_draft_id_publish_request_post**
> drafts_draft_id_publish_request_post(draft_id, )

Submit the Draft for Approval

Moves the draft into [submitted and locked state](https://docs.dyspatch.io/templates/submitting_a_template/#awaiting-approval). This will allow your email stakeholders to review the template draft and provide feedback.

### Example
```ruby
# load the gem
require 'dyspatch_client'
# setup authorization
DyspatchClient.configure do |config|
  # Configure API key authorization: Bearer
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = DyspatchClient::DraftsApi.new

draft_id = 'draft_id_example' # String | A draft ID


begin
  #Submit the Draft for Approval
  api_instance.drafts_draft_id_publish_request_post(draft_id, )
rescue DyspatchClient::ApiError => e
  puts "Exception when calling DraftsApi->drafts_draft_id_publish_request_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **draft_id** | **String**| A draft ID | 

### Return type

nil (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.dyspatch.2019.10+json



# **drafts_get**
> DraftsRead drafts_get(opts)

List Drafts

Gets a list of all drafts for your oranization. Up to 25 results returned before results are paginated.

### Example
```ruby
# load the gem
require 'dyspatch_client'
# setup authorization
DyspatchClient.configure do |config|
  # Configure API key authorization: Bearer
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = DyspatchClient::DraftsApi.new

opts = { 
  cursor: 'cursor_example', # String | A cursor value used to retrieve a specific page from a paginated result set.
  status: 'status_example' # String | Filter the list of drafts by a particular status
}

begin
  #List Drafts
  result = api_instance.drafts_get(opts)
  p result
rescue DyspatchClient::ApiError => e
  puts "Exception when calling DraftsApi->drafts_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cursor** | **String**| A cursor value used to retrieve a specific page from a paginated result set. | [optional] 
 **status** | **String**| Filter the list of drafts by a particular status | [optional] 

### Return type

[**DraftsRead**](DraftsRead.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.dyspatch.2019.10+json



