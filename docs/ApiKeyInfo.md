# llmpulse::ApiKeyInfo


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **integer** |  | 
**name** | **character** |  | 
**prefix** | **character** | The visible start of the token, to recognize the key. Never the secret itself. | 
**scope** | **character** |  | [Enum: [read, read_write]] 
**project_scoped** | **character** | True when the key is limited to project_ids; false for an account-wide key. | 
**project_ids** | **array[integer]** | The projects the key is limited to; empty for an account-wide key. | 
**created_at** | **character** |  | 
**last_used_at** | **character** | Updated at most once a minute. | 
**revoked_at** | **character** |  | 


