# llmpulse::GetAccount200Response


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**plan** | **character** | Plan key (starter, growth, scale, ...). Absent for a key limited to some projects. | [optional] 
**plan_name** | **character** | Display name of the plan to show people (e.g. Scale++ for the scaleplusplus key). Absent for a key limited to some projects. | [optional] 
**tracking_frequency** | **character** | How often prompts run (weekly, daily, monthly, ...) | [optional] 
**role** | **character** | Whether the key belongs to the account owner or a team member | [optional] [Enum: [owner, member]] 
**api_key_project_ids** | **array[integer]** | The projects the calling API key is limited to; null for a key that sees the whole account, and for OAuth | [optional] 
**subscription** | [**GetAccount200ResponseSubscription**](getAccount_200_response_subscription.md) |  | [optional] 
**limits** | [**GetAccount200ResponseLimits**](getAccount_200_response_limits.md) |  | [optional] 
**rate_limits** | [**GetAccount200ResponseRateLimits**](getAccount_200_response_rate_limits.md) |  | [optional] 
**request_id** | **character** |  | [optional] 


