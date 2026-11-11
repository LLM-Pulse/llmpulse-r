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
**access** | **character** | Whether the account may create pitch projects, which are for agency and platform accounts (the account type, which the account owner or an account admin changes in Account Settings &gt; Profile). none means the account is not an agency; approved access goes dormant while the account is below the Scale tier, on a trial, has a payment problem, is set to cancel or has an allowance of 0; revoked means our team turned it off. pending and rejected are no longer returned | [optional] [Enum: [none, pending, approved, dormant, rejected, revoked]] 


