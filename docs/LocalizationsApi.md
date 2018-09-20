# DyspatchClient::LocalizationsApi

All URIs are relative to *https://api.dyspatch.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**localizations_localization_id_get**](LocalizationsApi.md#localizations_localization_id_get) | **GET** /localizations/{localizationId} | Get Localization Object by ID


# **localizations_localization_id_get**
> LocalizationRead localizations_localization_id_get(localization_id, accept)

Get Localization Object by ID

Returns a specific localization object with a matching ID

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

localization_id = "localization_id_example" # String | A localization ID

accept = "accept_example" # String | A version of the API that should be used for the request. For example, to use version \"2018.08\", set the value to \"application/vnd.dyspatch.2018.08+json\"


begin
  #Get Localization Object by ID
  result = api_instance.localizations_localization_id_get(localization_id, accept)
  p result
rescue DyspatchClient::ApiError => e
  puts "Exception when calling LocalizationsApi->localizations_localization_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **localization_id** | **String**| A localization ID | 
 **accept** | **String**| A version of the API that should be used for the request. For example, to use version \&quot;2018.08\&quot;, set the value to \&quot;application/vnd.dyspatch.2018.08+json\&quot; | 

### Return type

[**LocalizationRead**](LocalizationRead.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.dyspatch.2018.08+json



