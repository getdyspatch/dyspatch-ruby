# DyspatchClient::Cursor

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**_next** | **String** | A cursor to fetch the next page of results | [optional] 
**has_more** | **Boolean** | Whether there is a next page of results | [optional] 

## Code Sample

```ruby
require 'DyspatchClient'

instance = DyspatchClient::Cursor.new(_next: null,
                                 has_more: null)
```


