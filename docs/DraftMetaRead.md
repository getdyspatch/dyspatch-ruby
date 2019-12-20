# DyspatchClient::DraftMetaRead

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | An opaque, unique identifier for a draft | [optional] 
**template_id** | **String** | An opaque, unique identifier for a template | [optional] 
**name** | **String** | The name of a draft | [optional] 
**description** | **String** | A description of the draft | [optional] 
**url** | **String** | The API url for a specific draft | [optional] 
**created_at** | **DateTime** | The time of initial creation | [optional] 
**updated_at** | **DateTime** | The time of last update | [optional] 

## Code Sample

```ruby
require 'DyspatchClient'

instance = DyspatchClient::DraftMetaRead.new(id: tdft_g3L7Cw6Hp5wU,
                                 template_id: tem_g3L7Cw6Hp5wU,
                                 name: null,
                                 description: null,
                                 url: /drafts/tdft_g3L7Cw6Hp5wUaf395LehwK/dft_g3L7Cw6Hp5wU,
                                 created_at: null,
                                 updated_at: null)
```


