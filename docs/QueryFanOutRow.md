# llmpulse::QueryFanOutRow

A view=query row carries query_text, count and share; a view=prompt row carries prompt_id, prompt_text, variations_count and total_count

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**query_text** | **character** | The sub-query a model issued (view&#x3D;query) | [optional] 
**count** | **integer** | Times it was issued (view&#x3D;query) | [optional] 
**share** | **numeric** | Share of all sub-query occurrences, on a 0-100 scale (view&#x3D;query) | [optional] 
**prompt_id** | **integer** | view&#x3D;prompt | [optional] 
**prompt_text** | **character** | view&#x3D;prompt | [optional] 
**variations_count** | **integer** | Distinct sub-queries issued for the prompt (view&#x3D;prompt) | [optional] 
**total_count** | **integer** | Sub-queries issued for the prompt, repeats included (view&#x3D;prompt) | [optional] 


