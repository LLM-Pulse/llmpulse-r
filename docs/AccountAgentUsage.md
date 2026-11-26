# llmpulse::AccountAgentUsage

The share of this calendar month's allowance for the in-app AI assistant (Europe/Madrid) that the account's team has used, owner and members together; each embedded project has an allowance of its own, left out here. The allowance is published as a share only, never as an amount; longer questions and bigger analyses use more of it. Deleting conversations gives nothing back.

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**percent_used** | **integer** | Whole percent used, rounded down, from 0 to 100; 100 means the allowance is spent and new questions wait until resets_on. null when unlimited is true | [optional] 
**unlimited** | **character** |  | [optional] 
**included** | **character** | Whether the plan includes the in-app AI assistant. false on a plan without it, where percent_used is 100 | [optional] 
**period** | **character** | Always month | [optional] 
**resets_on** | **character** | The first day of next month, when the allowance starts again | [optional] 


