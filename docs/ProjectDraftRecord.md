# llmpulse::ProjectDraftRecord


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**draft_id** | **character** | Draft id (draft_...) | 
**status** | **character** | open, finalized or expired | 
**current_step** | **character** | The next step to submit (details, prompts, competitors, owned_media), or ready when the draft can be finalized | 
**steps_completed** | **array[character]** |  | 
**steps_remaining** | **array[character]** | Required steps not submitted yet | 
**optional_steps** | **array[character]** | Steps the plan allows but finalize does not require (owned_media from Growth) | 
**finalizable** | **character** |  | 
**website_url** | **character** |  | 
**main_country** | **character** |  | 
**main_language** | **character** |  | 
**use_subdomain** | **character** |  | 
**name** | **character** | Null until the details step | 
**brand_name** | **character** |  | 
**description** | **character** |  | 
**industry** | **array[character]** |  | 
**matching_names** | **array[character]** |  | 
**prompts** | **array[character]** |  | 
**competitors** | [**array[ProjectDraftRecordCompetitorsInner]**](ProjectDraftRecord_competitors_inner.md) |  | 
**owned_media** | [**ProjectDraftRecordOwnedMedia**](ProjectDraftRecord_owned_media.md) |  | 
**weekly_email_subscribed** | **character** |  | 
**external_identifier** | **character** |  | 
**execute_prompts_immediately** | **character** |  | 
**project_id** | **integer** | The project the draft became; null until finalized | 
**expires_at** | **character** |  | 
**created_at** | **character** |  | 


