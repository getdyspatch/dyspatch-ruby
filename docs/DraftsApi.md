# DyspatchClient::DraftsApi

All URIs are relative to *https://api.dyspatch.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_localization**](DraftsApi.md#delete_localization) | **DELETE** /drafts/{draftId}/localizations/{languageId} | Remove a localization
[**get_draft_by_id**](DraftsApi.md#get_draft_by_id) | **GET** /drafts/{draftId} | Get Draft by ID
[**get_draft_localization_keys**](DraftsApi.md#get_draft_localization_keys) | **GET** /drafts/{draftId}/localizationKeys | Get localization keys
[**get_drafts**](DraftsApi.md#get_drafts) | **GET** /drafts | List Drafts
[**get_localization_for_draft**](DraftsApi.md#get_localization_for_draft) | **GET** /drafts/{draftId}/localizations | Get localizations on a draft
[**save_localization**](DraftsApi.md#save_localization) | **PUT** /drafts/{draftId}/localizations/{languageId} | Create or update a localization
[**set_translation**](DraftsApi.md#set_translation) | **PUT** /drafts/{draftId}/localizations/{languageId}/translations | Set translations for language
[**submit_draft_for_approval**](DraftsApi.md#submit_draft_for_approval) | **POST** /drafts/{draftId}/publishRequest | Submit the draft for approval



## delete_localization

> delete_localization(draft_id, language_id, accept)

Remove a localization

Deletes the localization with the given language ID if it exists

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
accept = 'accept_example' # String | A version of the API that should be used for the request. For example, to use version \"2020.08\", set the value to \"application/vnd.dyspatch.2020.08+json\"

begin
  #Remove a localization
  api_instance.delete_localization(draft_id, language_id, accept)
rescue DyspatchClient::ApiError => e
  puts "Exception when calling DraftsApi->delete_localization: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **draft_id** | **String**| A draft ID | 
 **language_id** | **String**| A language ID (eg: en-US) | 
 **accept** | **String**| A version of the API that should be used for the request. For example, to use version \&quot;2020.08\&quot;, set the value to \&quot;application/vnd.dyspatch.2020.08+json\&quot; | 

### Return type

nil (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_draft_by_id

> DraftRead get_draft_by_id(draft_id, target_language, accept)

Get Draft by ID

Gets a draft object with the matching ID. The \"compiled\" field will contain the template in the default, unlocalized form.

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
accept = 'accept_example' # String | A version of the API that should be used for the request. For example, to use version \"2020.08\", set the value to \"application/vnd.dyspatch.2020.08+json\"

begin
  #Get Draft by ID
  result = api_instance.get_draft_by_id(draft_id, target_language, accept)
  p result
rescue DyspatchClient::ApiError => e
  puts "Exception when calling DraftsApi->get_draft_by_id: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **draft_id** | **String**| A draft ID | 
 **target_language** | **String**| The type of templating language to compile as. Should only be used for visual templates. | 
 **accept** | **String**| A version of the API that should be used for the request. For example, to use version \&quot;2020.08\&quot;, set the value to \&quot;application/vnd.dyspatch.2020.08+json\&quot; | 

### Return type

[**DraftRead**](DraftRead.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.dyspatch.2020.08+json, */*


## get_draft_localization_keys

> Array&lt;LocalizationKeyRead&gt; get_draft_localization_keys(draft_id, accept)

Get localization keys

Returns the list of values that need to be translated for the draft. Set the `Accept` header to `application/vnd.dyspatch.2020.08+json` to get a JSON object, or `text/vnd.dyspatch.2020.08+x-gettext-translation` to get the POT file.

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
accept = 'accept_example' # String | A version of the API that should be used for the request. For example, to use version \"2020.08\", set the value to \"application/vnd.dyspatch.2020.08+json\"

begin
  #Get localization keys
  result = api_instance.get_draft_localization_keys(draft_id, accept)
  p result
rescue DyspatchClient::ApiError => e
  puts "Exception when calling DraftsApi->get_draft_localization_keys: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **draft_id** | **String**| A draft ID | 
 **accept** | **String**| A version of the API that should be used for the request. For example, to use version \&quot;2020.08\&quot;, set the value to \&quot;application/vnd.dyspatch.2020.08+json\&quot; | 

### Return type

[**Array&lt;LocalizationKeyRead&gt;**](LocalizationKeyRead.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.dyspatch.2020.08+json, text/vnd.dyspatch.2020.08+x-gettext-translation


## get_drafts

> DraftsRead get_drafts(accept, opts)

List Drafts

Returns all drafts for your organization.

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
accept = 'accept_example' # String | A version of the API that should be used for the request. For example, to use version \"2020.08\", set the value to \"application/vnd.dyspatch.2020.08+json\"
opts = {
  cursor: 'cursor_example', # String | A cursor value used to retrieve a specific page from a paginated result set.
  status: 'status_example' # String | Filter the list of drafts by a particular status
}

begin
  #List Drafts
  result = api_instance.get_drafts(accept, opts)
  p result
rescue DyspatchClient::ApiError => e
  puts "Exception when calling DraftsApi->get_drafts: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accept** | **String**| A version of the API that should be used for the request. For example, to use version \&quot;2020.08\&quot;, set the value to \&quot;application/vnd.dyspatch.2020.08+json\&quot; | 
 **cursor** | **String**| A cursor value used to retrieve a specific page from a paginated result set. | [optional] 
 **status** | **String**| Filter the list of drafts by a particular status | [optional] 

### Return type

[**DraftsRead**](DraftsRead.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.dyspatch.2020.08+json, */*


## get_localization_for_draft

> Array&lt;LocalizationMetaRead&gt; get_localization_for_draft(draft_id, accept)

Get localizations on a draft

Returns localization metadata for the draft

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
accept = 'accept_example' # String | A version of the API that should be used for the request. For example, to use version \"2020.08\", set the value to \"application/vnd.dyspatch.2020.08+json\"

begin
  #Get localizations on a draft
  result = api_instance.get_localization_for_draft(draft_id, accept)
  p result
rescue DyspatchClient::ApiError => e
  puts "Exception when calling DraftsApi->get_localization_for_draft: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **draft_id** | **String**| A draft ID | 
 **accept** | **String**| A version of the API that should be used for the request. For example, to use version \&quot;2020.08\&quot;, set the value to \&quot;application/vnd.dyspatch.2020.08+json\&quot; | 

### Return type

[**Array&lt;LocalizationMetaRead&gt;**](LocalizationMetaRead.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.dyspatch.2020.08+json


## save_localization

> save_localization(draft_id, language_id, accept, inline_object)

Create or update a localization

Inserts a localization or sets the name on an existing localization that already uses the languageId

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
accept = 'accept_example' # String | A version of the API that should be used for the request. For example, to use version \"2020.08\", set the value to \"application/vnd.dyspatch.2020.08+json\"
inline_object = DyspatchClient::InlineObject.new # InlineObject | 

begin
  #Create or update a localization
  api_instance.save_localization(draft_id, language_id, accept, inline_object)
rescue DyspatchClient::ApiError => e
  puts "Exception when calling DraftsApi->save_localization: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **draft_id** | **String**| A draft ID | 
 **language_id** | **String**| A language ID (eg: en-US) | 
 **accept** | **String**| A version of the API that should be used for the request. For example, to use version \&quot;2020.08\&quot;, set the value to \&quot;application/vnd.dyspatch.2020.08+json\&quot; | 
 **inline_object** | [**InlineObject**](InlineObject.md)|  | 

### Return type

nil (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## set_translation

> set_translation(draft_id, language_id, accept, request_body)

Set translations for language

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
accept = 'accept_example' # String | A version of the API that should be used for the request. For example, to use version \"2020.08\", set the value to \"application/vnd.dyspatch.2020.08+json\"
request_body = {'key' => 'request_body_example'} # Hash<String, String> | 

begin
  #Set translations for language
  api_instance.set_translation(draft_id, language_id, accept, request_body)
rescue DyspatchClient::ApiError => e
  puts "Exception when calling DraftsApi->set_translation: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **draft_id** | **String**| A draft ID | 
 **language_id** | **String**| A language ID (eg: en-US) | 
 **accept** | **String**| A version of the API that should be used for the request. For example, to use version \&quot;2020.08\&quot;, set the value to \&quot;application/vnd.dyspatch.2020.08+json\&quot; | 
 **request_body** | [**Hash&lt;String, String&gt;**](String.md)|  | 

### Return type

nil (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: */*


## submit_draft_for_approval

> submit_draft_for_approval(draft_id, accept)

Submit the draft for approval

Moves the draft into submitted state.

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
accept = 'accept_example' # String | A version of the API that should be used for the request. For example, to use version \"2020.08\", set the value to \"application/vnd.dyspatch.2020.08+json\"

begin
  #Submit the draft for approval
  api_instance.submit_draft_for_approval(draft_id, accept)
rescue DyspatchClient::ApiError => e
  puts "Exception when calling DraftsApi->submit_draft_for_approval: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **draft_id** | **String**| A draft ID | 
 **accept** | **String**| A version of the API that should be used for the request. For example, to use version \&quot;2020.08\&quot;, set the value to \&quot;application/vnd.dyspatch.2020.08+json\&quot; | 

### Return type

nil (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*

