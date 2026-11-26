# llmpulse::AllCitationRecord


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **integer** | The citation&#39;s id, unique within its actor_type | 
**actor_type** | **character** | project (your brand) or competitor | 
**competitor_id** | **integer** | Competitor rows only | [optional] 
**name** | **character** | The project&#39;s brand name (its name when no brand name is set), or the competitor&#39;s brand name | 
**domain** | **character** | On project rows the host of the cited URL without www. (null when it has no parsable host); on competitor rows the competitor&#39;s bare domain | 
**prompt_id** | **integer** |  | 
**prompt_execution_id** | **integer** |  | 
**url** | **character** | Normalized cited URL (tracking parameters and fragment removed) | 
**position** | **integer** | Rank of the citation in the answer; 0 for a background source reference with no visible rank | 
**created_at** | **character** |  | 


