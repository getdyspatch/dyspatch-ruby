# DyspatchClient::LocalizationMetaRead

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | An opaque, unique identifier for a localization | [optional] 
**name** | **String** | The user-specified name of a localization | [optional] 
**url** | **String** | The API url for a specific localization | [optional] 
**locale_group** | **String** | the locale group this localization belongs to, if this field is empty the localization does not belong to any locale group | [optional] 
**languages** | **Array&lt;String&gt;** | a list of locale codes that are available in the localization. See [supported languages](https://docs.dyspatch.io/localization/supported_languages/) for an exhaustive list of locale codes.  | [optional] 

## Code Sample

```ruby
require 'DyspatchClient'

instance = DyspatchClient::LocalizationMetaRead.new(id: loc_g3L7Cw6Hp5wUaf395LehwK,
                                 name: English (US),
                                 url: /localizations/loc_g3L7Cw6Hp5wUaf395LehwK,
                                 locale_group: lgr_alka38ajla301,
                                 languages: null)
```


