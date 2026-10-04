# llmpulse::AccountQuota

A consumable quota. limit and remaining are null when unlimited is true. For a key limited to some projects, prompts and intelligence_tasks carry no limit (and intelligence_tasks no used): only the capacity left.

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**limit** | **integer** |  | [optional] 
**used** | **integer** |  | [optional] 
**remaining** | **integer** |  | [optional] 
**unlimited** | **character** |  | [optional] 
**period** | **character** | Reset window for quotas that reset (e.g. month) | [optional] 


