# llmpulse::CreateTeamInvitationRequest


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**email** | **character** |  | 
**project_ids** | **array[integer]** | Projects the member can access. Send this or all_projects true. | [optional] 
**all_projects** | **character** | Access to every project, including future ones | [optional] 
**permission_role** | **character** | Default full_access. Owner and co-owners only. | [optional] [Enum: [full_access, view_only, custom, account_role]] 
**account_role_id** | **integer** | One of the account&#39;s roles, with permission_role account_role | [optional] 
**permissions** | [**map(array[character])**](array.md) | With permission_role custom: feature key to the verbs granted (read, create, update, delete), for example {\&quot;overview\&quot;: [\&quot;read\&quot;], \&quot;prompts\&quot;: [\&quot;read\&quot;, \&quot;create\&quot;]} | [optional] 
**account_admin** | **character** | Make the member a co-owner. Account owner only. | [optional] 
**billing_access** | **character** | Access to Billing and Plans. Account owner only. | [optional] 


