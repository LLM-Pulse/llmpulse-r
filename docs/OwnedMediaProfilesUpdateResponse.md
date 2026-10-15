# llmpulse::OwnedMediaProfilesUpdateResponse


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**project_id** | **integer** |  | [optional] 
**platforms** | [**array[OwnedMediaPlatformProfiles]**](OwnedMediaPlatformProfiles.md) |  | [optional] 
**settings** | [**OwnedMediaProfileSettings**](OwnedMediaProfileSettings.md) |  | [optional] 
**request_id** | **character** |  | [optional] 
**updated_fields** | **array[character]** | The fields this request set | [optional] 
**profile_scrapes_queued** | **array[character]** | Platforms whose new profile is being scraped in the background for its name and avatar | [optional] 


