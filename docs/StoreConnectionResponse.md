# llmpulse::StoreConnectionResponse


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**platform** | **character** | The store platform, e.g. shopify | 
**domain** | **character** | The store domain as compared: lowercase, without scheme, www or path | 
**project** | [**StoreConnectionResponseProject**](StoreConnectionResponse_project.md) |  | 
**ambiguous** | **character** | True when several live projects match the store domain (for example one project per market). project is then null and the app asks the key holder to pick from candidates. | 
**candidates** | [**array[StoreConnectionResponseCandidatesInner]**](StoreConnectionResponse_candidates_inner.md) | Every live project of the account, for a project picker | 
**account** | [**StoreConnectionResponseAccount**](StoreConnectionResponse_account.md) |  | 
**request_id** | **character** |  | 


