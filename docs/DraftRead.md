# DyspatchClient::DraftRead

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | An opaque, unique identifier for a draft | [optional] 
**template** | **String** | An opaque, unique identifier for a template | [optional] 
**name** | **String** | The name of a draft | [optional] 
**url** | **String** | The API url for a specific draft | [optional] 
**compiled** | [**CompiledRead**](CompiledRead.md) |  | [optional] 
**created_at** | **DateTime** | The time of initial creation | [optional] 
**updated_at** | **DateTime** | The time of last update | [optional] 
**localizations** | [**Array&lt;LocalizationMetaRead&gt;**](LocalizationMetaRead.md) | A list of the Template&#39;s available localizations | [optional] 

## Code Sample

```ruby
require 'DyspatchClient'

instance = DyspatchClient::DraftRead.new(id: tdft_g3L7Cw6Hp5wU,
                                 template: tem_g3L7Cw6Hp5wU,
                                 name: null,
                                 url: /drafts/tdft_g3L7Cw6Hp5wUaf395LehwK/dft_g3L7Cw6Hp5wU,
                                 compiled: null,
                                 created_at: null,
                                 updated_at: null,
                                 localizations: null)
```


