# llmpulse::AccountPitchQuota

Pitch projects created this calendar month (Europe/Madrid) against the monthly allowance, which pitch projects use instead of a project slot. limit and remaining are null when unlimited is true.

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**limit** | **integer** |  | [optional] 
**used** | **integer** |  | [optional] 
**remaining** | **integer** |  | [optional] 
**unlimited** | **character** |  | [optional] 
**period** | **character** | Always month | [optional] 
**resets_on** | **character** | The first day of next month, when the allowance starts again | [optional] 
**access** | **character** | Whether the account may create pitch projects. The account owner or an account admin (co-owner) requests access in Account Settings &gt; Pitch projects and our team reviews it; approved access goes dormant while the account is below the Scale tier, on a trial, has a payment problem, is set to cancel or has an allowance of 0 | [optional] [Enum: [none, pending, approved, dormant, rejected, revoked]] 


