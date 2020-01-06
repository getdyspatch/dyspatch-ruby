# DyspatchClient::LocalizationMetaRead

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**localization** | **String** | An opaque, unique identifier for a localization | [optional] 
**language** | **String** | A language identifier comprised of a language and a country identifier. See [supported languages](https://docs.dyspatch.io/localization/supported_languages/).  | [optional] 
**name** | **String** | The user-specified name of a localization | [optional] 
**url** | **String** | The API url for a specific localization | [optional] 

## Code Sample

```ruby
require 'DyspatchClient'

instance = DyspatchClient::LocalizationMetaRead.new(localization: loc_g3L7Cw6Hp5wUaf395LehwK,
                                 language: en-US,
                                 name: English (US),
                                 url: /localizations/loc_g3L7Cw6Hp5wUaf395LehwK)
```


