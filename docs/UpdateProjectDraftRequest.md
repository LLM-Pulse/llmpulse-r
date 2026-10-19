# llmpulse::UpdateProjectDraftRequest


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**step** | **character** |  | [Enum: [details, prompts, competitors, owned_media]] 
**name** | **character** |  | [optional] 
**brand_name** | **character** |  | [optional] 
**description** | **character** |  | [optional] 
**industry** | **array[character]** |  | [optional] 
**matching_names** | **array[character]** | Brand-name variants used to detect mentions (details step). At most 50 names of up to 100 characters each; the step stores the list as sent, and finalize refuses a longer list or name with ERR_INVALID_PARAM (422) | [optional] [Max. items: 50] 
**external_identifier** | **character** |  | [optional] 
**prompts** | **array[character]** |  | [optional] [Max. items: 100] 
**competitors** | **array[object]** | Competitors step: objects {domain, brand_name, matching_names}, capped by plan. Each competitor&#39;s matching_names takes at most 50 names of up to 100 characters, checked at finalize like POST /projects | [optional] 
**youtube_channel_url** | **character** |  | [optional] 
**instagram_profile_url** | **character** |  | [optional] 
**facebook_page_url** | **character** |  | [optional] 
**tiktok_profile_url** | **character** |  | [optional] 
**app_store_url** | **character** |  | [optional] 
**google_play_url** | **character** |  | [optional] 
**suggest** | **character** |  | [optional] [default to TRUE] 


