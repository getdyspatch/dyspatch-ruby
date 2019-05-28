# DyspatchClient::TemplatesApi

All URIs are relative to *https://api.dyspatch.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**templates_get**](TemplatesApi.md#templates_get) | **GET** /templates | List Templates
[**templates_template_id_get**](TemplatesApi.md#templates_template_id_get) | **GET** /templates/{templateId} | Get Template by ID


# **templates_get**
> TemplatesRead templates_get(opts)

List Templates

Gets a list of Template Metadata objects for all templates. Up to 25 results returned before results are paginated.

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

api_instance = DyspatchClient::TemplatesApi.new

opts = { 
  cursor: "cursor_example", # String | A cursor value used to retrieve a specific page from a paginated result set.
  accept: "accept_example" # String | A version of the API that should be used for the request. For example, to use version \"2019.03\", set the value to \"application/vnd.dyspatch.2019.03+json\"
}

begin
  #List Templates
  result = api_instance.templates_get(opts)
  p result
rescue DyspatchClient::ApiError => e
  puts "Exception when calling TemplatesApi->templates_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cursor** | **String**| A cursor value used to retrieve a specific page from a paginated result set. | [optional] 
 **accept** | **String**| A version of the API that should be used for the request. For example, to use version \&quot;2019.03\&quot;, set the value to \&quot;application/vnd.dyspatch.2019.03+json\&quot; | [optional] 

### Return type

[**TemplatesRead**](TemplatesRead.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.dyspatch.2019.03+json



# **templates_template_id_get**
> TemplateRead templates_template_id_get(template_id, opts)

Get Template by ID

Gets a template object with the matching ID. If the template has published content the \"compiled\" field will contain the template .

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

api_instance = DyspatchClient::TemplatesApi.new

template_id = "template_id_example" # String | A template ID

opts = { 
  target_language: "target_language_example", # String | The type of templating language to compile as. Should only be used for visual templates.
  accept: "accept_example" # String | A version of the API that should be used for the request. For example, to use version \"2019.03\", set the value to \"application/vnd.dyspatch.2019.03+json\"
}

begin
  #Get Template by ID
  result = api_instance.templates_template_id_get(template_id, opts)
  p result
rescue DyspatchClient::ApiError => e
  puts "Exception when calling TemplatesApi->templates_template_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **template_id** | **String**| A template ID | 
 **target_language** | **String**| The type of templating language to compile as. Should only be used for visual templates. | [optional] 
 **accept** | **String**| A version of the API that should be used for the request. For example, to use version \&quot;2019.03\&quot;, set the value to \&quot;application/vnd.dyspatch.2019.03+json\&quot; | [optional] 

### Return type

[**TemplateRead**](TemplateRead.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.dyspatch.2019.03+json



