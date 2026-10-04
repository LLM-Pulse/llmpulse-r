# llmpulse::CatalogPromptSuggestionsCreateRequest


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**project_id** | **integer** |  | 
**platform** | **character** |  | [Enum: [shopify]] 
**country_code** | **character** | Defaults to the project country | [optional] 
**language_code** | **character** | Defaults to the project language | [optional] 
**products** | [**array[CatalogProduct]**](CatalogProduct.md) |  | [Max. items: 20] [Min. items: 1] 


