# llmpulse::UrlListCreateRequest


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**project_id** | **integer** |  | 
**name** | **character** |  | 
**description** | **character** |  | [optional] 
**currency** | **character** |  | [optional] [default to &quot;USD&quot;] [Enum: [USD, EUR, GBP]] 
**entries** | [**array[UrlListEntryInput]**](UrlListEntryInput.md) |  | [optional] 
**match_type** | **character** | Read every entry without its own match_type as this type. Default detects it from each value. | [optional] [Enum: [url, prefix, domain]] 


