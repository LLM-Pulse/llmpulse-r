# llmpulse::ProjectCreateResponse


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**project** | **object** | Same shape as GET /dimensions/projects/{id} | [optional] 
**prompts** | [**ProjectCreateResponsePrompts**](ProjectCreateResponse_prompts.md) |  | [optional] 
**competitors** | [**ProjectCreateResponseCompetitors**](ProjectCreateResponse_competitors.md) |  | [optional] 
**collections** | [**array[ProjectCreateResponseCollectionsInner]**](ProjectCreateResponse_collections_inner.md) | Collections created from the request&#39;s collections field (empty when none were sent; absent on an idempotent replay) | [optional] 
**same_domain_projects** | [**array[ProjectCreateResponseSameDomainProjectsInner]**](ProjectCreateResponse_same_domain_projects_inner.md) | Projects the caller can already see on the same domain (absent on an idempotent replay). Informational only: the create is never blocked, since one domain tracked per market is a normal setup. | [optional] 
**email_subscription** | [**ProjectCreateResponseEmailSubscription**](ProjectCreateResponse_email_subscription.md) |  | [optional] 
**limits** | [**ProjectCreateResponseLimits**](ProjectCreateResponse_limits.md) |  | [optional] 
**idempotent** | **character** | Present and true only on external_identifier replays | [optional] 
**request_id** | **character** |  | [optional] 


