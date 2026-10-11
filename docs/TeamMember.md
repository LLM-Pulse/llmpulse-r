# llmpulse::TeamMember


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **integer** |  | 
**email** | **character** |  | 
**name** | **character** |  | [optional] 
**role** | **character** | The account owner is listed first; everyone else who joined is a member. | [Enum: [owner, member]] 
**status** | **character** | A blocked member cannot sign in or use the API until unblocked in the app. | [Enum: [active, blocked]] 
**permission_role** | **character** | Access level of a member: full_access, view_only, custom or account_role. Null for the owner. | 
**account_role** | [**TeamAccountRole**](TeamAccountRole.md) |  | 
**permissions** | [**map(array[character])**](array.md) | What the person can do, feature key to the verbs granted (read, create, update, delete), resolved from their role. Null for the account owner, who can do everything. | 
**account_admin** | **character** | A co-owner, who can manage the team. | 
**billing_access** | **character** | Can open Billing and Plans (always true for the owner). | 
**all_projects** | **character** | Has access to every project of the account, including future ones. | 
**project_ids** | **array[integer]** | The projects a member is limited to; empty when all_projects is true. | 
**last_sign_in_at** | **character** |  | [optional] 
**joined_at** | **character** | When the member accepted the invitation; null for the owner and for members added without one. | [optional] 
**created_at** | **character** |  | [optional] 


