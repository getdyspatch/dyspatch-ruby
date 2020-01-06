# DyspatchClient::CompiledRead

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**sender** | **String** | Sender address | [optional] 
**reply_to** | **String** | Reply-To address | [optional] 
**subject** | **String** | Base64 encoded template subject line | [optional] 
**html** | **String** | Base64 encoded template HTML body | [optional] 
**text** | **String** | Base64 encoded template text body | [optional] 

## Code Sample

```ruby
require 'DyspatchClient'

instance = DyspatchClient::CompiledRead.new(sender: Example,
                                 reply_to: Example,
                                 subject: null,
                                 html: null,
                                 text: null)
```


