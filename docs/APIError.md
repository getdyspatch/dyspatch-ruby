# DyspatchClient::APIError

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**code** | **String** | Error code:   * server_error - Internal server error.   * invalid_parameter - Validation error, parameter will contain invalid field and message will contain the reason.   * invalid_body - Body could not be parsed, message will contain the reason.   * invalid_request - Validation error, the protocol used to make the request was not https.   * unauthorized - Credentials were found but permissions were not sufficient.   * unauthenticated - Credentials were not found or were not valid.   * not_found - The requested resource was not found.   * rate_limited - The request was refused because a rate limit was exceeded. There is an account wide rate limit of 3600 requests per-minute, although that is subject to change. The current remaining rate limit can be viewed by checking the X-Ratelimit-Remaining header.   * prohibited_action - The request was refused because an action was not valid for the requested resource. Typically this will happen if you try to make changes to a locked resource.  | [optional] 
**message** | **String** | Human readable error message | [optional] 
**parameter** | **String** | The invalid parameter, if &#39;code&#39; is invalid_parameter | [optional] 

## Code Sample

```ruby
require 'DyspatchClient'

instance = DyspatchClient::APIError.new(code: null,
                                 message: null,
                                 parameter: null)
```


