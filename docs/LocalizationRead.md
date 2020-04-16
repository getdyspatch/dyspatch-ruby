# DyspatchClient::LocalizationRead

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | An opaque, unique identifier for a localization | [optional] 
**languages** | **Array&lt;String&gt;** | a list of locale codes that are available in the localization. See [supported languages](https://docs.dyspatch.io/localization/supported_languages/) for an exhaustive list of locale codes.  | [optional] 
**url** | **String** | The API url for a specific localization | [optional] 
**template** | **String** | An opaque, unique identifier for a template | [optional] 
**compiled** | [**CompiledRead**](CompiledRead.md) |  | [optional] 
**created_at** | **DateTime** | The time of initial creation | [optional] 
**updated_at** | **DateTime** | The time of last update | [optional] 
**name** | **String** | The user-specified name of a localization | [optional] 
**locale_group** | **String** | the locale group this localization belongs to, if this field is empty the localization does not belong to any locale group | [optional] 

## Code Sample

```ruby
require 'DyspatchClient'

instance = DyspatchClient::LocalizationRead.new(id: loc_g3L7Cw6Hp5wUaf395LehwK,
                                 languages: null,
                                 url: /localizations/loc_g3L7Cw6Hp5wUaf395LehwK,
                                 template: tem_g3L7Cw6Hp5wU,
                                 compiled: null,
                                 created_at: null,
                                 updated_at: null,
                                 name: English (US),
                                 locale_group: lgr_alka38ajla301)
```


