# llmpulse::IntelligenceTaskCreateRequest


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**project_id** | **integer** |  | 
**task_type** | **character** | product_listing is API-only: it needs product and returns ready-to-apply product page copy | [Enum: [brief, create, update, pr_insights, custom, product_listing]] 
**prompt_id** | **integer** | Not used by product_listing; send null or omit it | [optional] 
**custom_topic** | **character** |  | [optional] 
**user_instructions** | **character** |  | [optional] 
**output_language_code** | **character** |  | [optional] 
**existing_content** | **character** |  | [optional] 
**existing_content_url** | **character** |  | [optional] 
**product** | [**IntelligenceTaskProduct**](IntelligenceTaskProduct.md) |  | [optional] 
**prompt_ids** | **array[integer]** | product_listing only: up to 20 project prompts the copy should answer | [optional] [Max. items: 20] 


