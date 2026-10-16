# llmpulse::ProjectProfile

The project name and profile, as PATCH /projects/{id} and the update_project MCP tool return them

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **integer** |  | 
**name** | **character** |  | 
**brand_name** | **character** |  | [optional] 
**description** | **character** |  | [optional] 
**industry** | **object** | Industry as stored: one key as a string (e.g. SAAS), or an array of key strings. Deliberately untyped so generated clients decode either shape | [optional] 
**business_model** | **character** |  | [optional] 
**business_model_other** | **character** | Set only when business_model is OTHER | [optional] 
**target_audience** | **character** |  | [optional] 
**primary_products** | **array[character]** |  | [optional] 
**brand_voice** | **character** |  | [optional] 
**goals** | **character** |  | [optional] 
**matching_names** | **array[character]** |  | 
**additional_owned_domains** | **array[character]** | Other domains the brand owns (at most 10, each a website&#39;s own domain covering its subdomains), whose citations count as owned like the project website. Empty when none | 
**prompt_limit** | **integer** | The most prompts this project can hold, set by the account owner or a co-owner (Account Settings &gt; Prompt Limits). Null when the project has no limit of its own; the account&#39;s plan allowance applies either way | 


