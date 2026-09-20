# llmpulse::GetAccount200Response


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**plan** | **character** | Plan key (starter, growth, scale, ...) | [optional] 
**tracking_frequency** | **character** | How often prompts run (weekly, daily, monthly, ...) | [optional] 
**role** | **character** | Whether the key belongs to the account owner or a team member | [optional] [Enum: [owner, member]] 
**subscription** | [**GetAccount200ResponseSubscription**](getAccount_200_response_subscription.md) |  | [optional] 
**limits** | [**GetAccount200ResponseLimits**](getAccount_200_response_limits.md) |  | [optional] 
**rate_limits** | [**GetAccount200ResponseRateLimits**](getAccount_200_response_rate_limits.md) |  | [optional] 
**request_id** | **character** |  | [optional] 


