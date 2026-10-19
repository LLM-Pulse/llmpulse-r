# llmpulse::AnswerDetails


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **integer** |  | [optional] 
**prompt_id** | **integer** |  | [optional] 
**prompt_text** | **character** |  | [optional] 
**model** | **character** |  | [optional] 
**response** | **character** |  | [optional] 
**response_truncated** | **character** |  | [optional] 
**executed_at** | **character** |  | [optional] 
**duration_ms** | **numeric** | Milliseconds, rounded to one decimal place | [optional] 
**success** | **character** | Null while the answer is still pending | [optional] 
**no_result** | **character** | True for a sentinel non-answer (the provider returned nothing after all retries, or the model declined to answer, today only Gemini); excluded from platform metrics | [optional] 
**fan_out_queries** | **array[character]** |  | [optional] 
**mentions** | **array[object]** |  | [optional] 
**citations** | **array[object]** |  | [optional] 
**competitor_mentions** | **array[object]** |  | [optional] 
**competitor_citations** | **array[object]** |  | [optional] 
**sentiments** | **array[object]** | Needs the Growth plan or above; left out below it and named in plan_required_fields | [optional] 
**sources** | **array[object]** |  | [optional] 
**shopping_products** | **array[object]** | Needs the Scale plan or above; left out below it and named in plan_required_fields | [optional] 
**brand_entities** | **array[object]** |  | [optional] 
**local_businesses** | **array[object]** |  | [optional] 
**locale** | [**AnswerDetailsLocale**](AnswerDetails_locale.md) |  | [optional] 
**plan_required_fields** | **array[character]** | The fields left out of this answer because the account&#39;s plan does not include them (sentiments below Growth, shopping_products below Scale). Always present, empty when nothing is left out | 
**app_url** | **character** | Opens this answer in the app. The link names its project, so it opens there for any user with access to that project | [optional] 
**request_id** | **character** |  | [optional] 


