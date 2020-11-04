# DyspatchClient::CompiledRead

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**sender** | **String** | Sender address | [optional] 
**reply_to** | **String** | Reply-To address | [optional] 
**subject** | **String** | Base64 encoded template subject line | [optional] 
**html** | **String** | Base64 encoded template HTML body | [optional] 
**amp_html** | **String** | Base64 encoded amp version of template body | [optional] 
**text** | **String** | Base64 encoded template text body | [optional] 

## Code Sample

```ruby
require 'DyspatchClient'

instance = DyspatchClient::CompiledRead.new(sender: Example,
                                 reply_to: Example,
                                 subject: null,
                                 html: null,
                                 amp_html: null,
                                 text: null)
```


