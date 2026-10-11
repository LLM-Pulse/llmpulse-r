# llmpulse::CreateTeamInvitation201Response


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **integer** | Kept by the member once they accept, when they move to GET /team_members. | 
**email** | **character** |  | 
**permission_role** | **character** |  | [Enum: [full_access, view_only, custom, account_role]] 
**account_role** | [**TeamAccountRole**](TeamAccountRole.md) |  | 
**permissions** | [**map(array[character])**](array.md) | What the person can do, feature key to the verbs granted (read, create, update, delete), resolved from their role. Null for the account owner, who can do everything. | 
**account_admin** | **character** |  | 
**billing_access** | **character** |  | 
**all_projects** | **character** |  | 
**project_ids** | **array[integer]** |  | 
**invited_at** | **character** | When the invitation email was last sent. | [optional] 
**expires_at** | **character** | When the invitation link stops working. | [optional] 
**created_at** | **character** |  | [optional] 
**email_sent** | **character** | False when the email provider refused the invitation email | 
**request_id** | **character** |  | [optional] 


