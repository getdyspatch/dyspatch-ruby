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
**localizations** | [**Array<LocalizationMetaRead>**](LocalizationMetaRead.md) | A list of the Template's available localizations | [optional] 


