# DyspatchClient::TemplatesApi

All URIs are relative to *https://api.dyspatch.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_template_by_id**](TemplatesApi.md#get_template_by_id) | **GET** /templates/{templateId} | Get Template by ID
[**get_templates**](TemplatesApi.md#get_templates) | **GET** /templates | List Templates



## get_template_by_id

> TemplateRead get_template_by_id(template_id, target_language, accept)

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
template_id = 'template_id_example' # String | A template ID
target_language = 'target_language_example' # String | The type of templating language to compile as. Should only be used for visual templates.
accept = 'accept_example' # String | A version of the API that should be used for the request. For example, to use version \"2020.04\", set the value to \"application/vnd.dyspatch.2020.04+json\"

begin
  #Get Template by ID
  result = api_instance.get_template_by_id(template_id, target_language, accept)
  p result
rescue DyspatchClient::ApiError => e
  puts "Exception when calling TemplatesApi->get_template_by_id: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **template_id** | **String**| A template ID | 
 **target_language** | **String**| The type of templating language to compile as. Should only be used for visual templates. | 
 **accept** | **String**| A version of the API that should be used for the request. For example, to use version \&quot;2020.04\&quot;, set the value to \&quot;application/vnd.dyspatch.2020.04+json\&quot; | 

### Return type

[**TemplateRead**](TemplateRead.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.dyspatch.2020.04+json, */*


## get_templates

> TemplatesRead get_templates(accept, opts)

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
accept = 'accept_example' # String | A version of the API that should be used for the request. For example, to use version \"2020.04\", set the value to \"application/vnd.dyspatch.2020.04+json\"
opts = {
  cursor: 'cursor_example' # String | A cursor value used to retrieve a specific page from a paginated result set.
}

begin
  #List Templates
  result = api_instance.get_templates(accept, opts)
  p result
rescue DyspatchClient::ApiError => e
  puts "Exception when calling TemplatesApi->get_templates: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accept** | **String**| A version of the API that should be used for the request. For example, to use version \&quot;2020.04\&quot;, set the value to \&quot;application/vnd.dyspatch.2020.04+json\&quot; | 
 **cursor** | **String**| A cursor value used to retrieve a specific page from a paginated result set. | [optional] 

### Return type

[**TemplatesRead**](TemplatesRead.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.dyspatch.2020.04+json, */*

