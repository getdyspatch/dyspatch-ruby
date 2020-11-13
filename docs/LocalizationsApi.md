# DyspatchClient::LocalizationsApi

All URIs are relative to *https://api.dyspatch.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_draft_localization_by_id**](LocalizationsApi.md#get_draft_localization_by_id) | **GET** /localizations/{localizationId}/drafts/{draftId} | Get Draft Localization Object by ID
[**get_published_localization_by_id**](LocalizationsApi.md#get_published_localization_by_id) | **GET** /localizations/{localizationId} | Get Localization Object by ID



## get_draft_localization_by_id

> LocalizationRead get_draft_localization_by_id(draft_id, localization_id, target_language, accept)

Get Draft Localization Object by ID

Returns a specific localization object of the matching draft with a matching localization ID

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

api_instance = DyspatchClient::LocalizationsApi.new
draft_id = 'draft_id_example' # String | A draft ID
localization_id = 'localization_id_example' # String | A localization ID
target_language = 'target_language_example' # String | The type of templating language to compile as. Should only be used for visual templates.
accept = 'accept_example' # String | A version of the API that should be used for the request. For example, to use version \"2020.11\", set the value to \"application/vnd.dyspatch.2020.11+json\"

begin
  #Get Draft Localization Object by ID
  result = api_instance.get_draft_localization_by_id(draft_id, localization_id, target_language, accept)
  p result
rescue DyspatchClient::ApiError => e
  puts "Exception when calling LocalizationsApi->get_draft_localization_by_id: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **draft_id** | **String**| A draft ID | 
 **localization_id** | **String**| A localization ID | 
 **target_language** | **String**| The type of templating language to compile as. Should only be used for visual templates. | 
 **accept** | **String**| A version of the API that should be used for the request. For example, to use version \&quot;2020.11\&quot;, set the value to \&quot;application/vnd.dyspatch.2020.11+json\&quot; | 

### Return type

[**LocalizationRead**](LocalizationRead.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.dyspatch.2020.11+json, */*


## get_published_localization_by_id

> LocalizationRead get_published_localization_by_id(localization_id, target_language, accept)

Get Localization Object by ID

Returns the published content associated with the localization of the matching ID

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

api_instance = DyspatchClient::LocalizationsApi.new
localization_id = 'localization_id_example' # String | A localization ID
target_language = 'target_language_example' # String | The type of templating language to compile as. Should only be used for visual templates.
accept = 'accept_example' # String | A version of the API that should be used for the request. For example, to use version \"2020.11\", set the value to \"application/vnd.dyspatch.2020.11+json\"

begin
  #Get Localization Object by ID
  result = api_instance.get_published_localization_by_id(localization_id, target_language, accept)
  p result
rescue DyspatchClient::ApiError => e
  puts "Exception when calling LocalizationsApi->get_published_localization_by_id: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **localization_id** | **String**| A localization ID | 
 **target_language** | **String**| The type of templating language to compile as. Should only be used for visual templates. | 
 **accept** | **String**| A version of the API that should be used for the request. For example, to use version \&quot;2020.11\&quot;, set the value to \&quot;application/vnd.dyspatch.2020.11+json\&quot; | 

### Return type

[**LocalizationRead**](LocalizationRead.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.dyspatch.2020.11+json, */*

